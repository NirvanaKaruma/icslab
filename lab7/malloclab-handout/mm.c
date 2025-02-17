/*
 * mm.c
 *
 * author: Karuma
 * 
 * 
 * 使用分离空闲链表+首k次适应作为实现思路, 这里最终采用的k为2
 * 按课本, 改进块的结构为: 对于空闲块, 同时存储header和footer; 对于分配块, 只存储header, 
 * 同时使得前一个块的footer/尾部和后一个块的header对齐, 使得结尾块不必新开一个双字单独储存
 * 链表结构采用双向链表, 同时插入链表时对链表前若干个元素进行插入排序, 使得链表元素部分有序(最终并没有排序)
 * 分组查询用了搜索树优化
 * 
 * 后记: 在写proxylab的时候才想到一个非常简单暴力的优化Kops的方法: 将堆底设为全局指针, 这样可以减少调用函数的次数
 * 不过直接交上去也满分了, 无所谓
 * 这里的版本是重新优化过的
 * 
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
// #define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT and check*/
#define ALIGN(p)            (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)
#define CHECK_ALIGN(p)      (ALIGN(p) == (size_t)(p))

/* Basic constants and macros */
#define WSIZE       4           /* Word and header/footer size (bytes) */ 
#define DSIZE       8           /* Double word size (bytes) */
#define CHUNKSIZE  (1 << 12)    /* Extend heap by this amount (bytes) */  
#define FREE_LIST_NUM 14        /* The number of free blocks lists*/

/* Pack a size and allocated bit into a word */
#define PACK_ALLOC(size, alloc)         ((size) | (alloc)) 
#define PACK_PREV(size, prev)           ((size) | (prev << 1))
#define PACK_ALL(size, prev, alloc)     ((size) | (prev << 1) | (alloc))

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))            
#define PUT(p, val)  (*(unsigned int *)(p) = (val))

/* Read and set the size and allocated or prev_allocated fields from address p */
#define GET_SIZE(p)         (GET(p) & ~0x7)                   
#define GET_ALLOC(p)        (GET(p) & 0x1) 
#define GET_PREV_ALLOC(p)   ((GET(p) & 0x2) >> 1) 
#define SET_ALLOC(p)        (GET(p) |= 0x1)
#define SET_FREE(p)         (GET(p) &= ~0x1)
#define SET_PREV_ALLOC(p)   (GET(p) |= 0x2)
#define SET_PREV_FREE(p)    (GET(p) &= ~0x2)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)   ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp)   ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 

/* List functions */
#define PREV_NODE(bp)           ((char *)(mem_heap_lo() + *(unsigned int*)(bp)))
#define NEXT_NODE(bp)           ((char *)(mem_heap_lo() + *(unsigned int*)(bp + WSIZE)))
#define SET_PREV_NODE(bp, val)  (*(unsigned int*)(bp) = ((unsigned int)(long)(val)))
#define SET_NEXT_NODE(bp, val)  (*(unsigned int*)((char *)(bp) + WSIZE) = ((unsigned int)(long)(val)))

/* Other helper functions */
#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))

/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */
static char **free_listp;     /* Pointers to the first of free blocks */
static char *lo = 0;          /* Pointers to the heap bottom */

/* For list checking, recording the range of the corresponding list*/
static size_t low_range;
static size_t high_range;

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize, int k);
static void *coalesce(void *bp, size_t size);
static size_t resize_alloc_size(size_t size);
static void insert_node(void *bp, size_t size);
static void delete_node(void *bp);
static void index2size(size_t index);
static size_t size2index(size_t size);
static void mm_checkfreelist(int lineno);

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
    // 初始化所有空闲链表指针数组, 将所有空闲链表头指针初始化为堆底
    lo = mem_heap_lo();
    free_listp = mem_heap_lo();
    // 分配存储指针数组的空间不足, 返回失败
    if((heap_listp = mem_sbrk(DSIZE * FREE_LIST_NUM)) == (void *)-1) 
            return -1;
    for(int i = 0; i < FREE_LIST_NUM; i++){
        free_listp[i] = lo;
    }

    // 存储序言块、结尾块
    if((heap_listp = mem_sbrk(4 * WSIZE)) == (void*)-1) 
        return -1;
    

    // 序言块、 结尾块
    PUT(heap_listp, 0);                                     /* Alignment padding */
    PUT(heap_listp + (1 * WSIZE), PACK_ALL(DSIZE, 0, 1));    /* Prologue header */ 
    PUT(heap_listp + (2 * WSIZE), PACK_ALL(DSIZE, 0, 1));    /* Prologue footer */ 
    PUT(heap_listp + (3 * WSIZE), PACK_ALL(0, 1, 1));        /* Epilogue header */
    heap_listp += (2 * WSIZE);
    // Extend the empty heap with a free block of CHUNKSIZE bytes
    if (extend_heap(CHUNKSIZE / WSIZE) == NULL) 
        return -1;         
    return 0;
}

/*
 * malloc
 */
void *malloc (size_t size) {
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;

    if (heap_listp == 0){
        mm_init();
    }
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;
    asize = resize_alloc_size(size);
    /* Search the free list for a fit */
    if((bp = find_fit(asize, 2)) != NULL){
        place(bp, asize);
        return bp;
    }
    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize, CHUNKSIZE);                 
    if ((bp = extend_heap(extendsize / WSIZE)) == NULL)  
        return NULL;                                  
    place(bp, asize);                                 
    
    return bp;
}

/*
 * free
 * Free a block and coalesce near free blocks
 */
void free (void *ptr) {
    if(ptr == NULL) 
        return;
    if (heap_listp == 0){
        mm_init();
        return;
    }
    // 获取块大小
    size_t size = GET_SIZE(HDRP(ptr));
    // 获取前一个块的使用信息
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(ptr));
    // 更新本块header和footer的信息
    PUT(HDRP(ptr), PACK_ALL(size, prev_alloc, 0));
    PUT(FTRP(ptr), PACK_ALL(size, prev_alloc, 0));
    // 合并相邻的空闲块, 更新链表
    coalesce(ptr, size);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void* realloc(void* ptr, size_t size) {
    size_t oldsize;
    void* newptr;

    // size 为 0，相当于 free
    if (size == 0) {
        free(ptr);
        return NULL;
    }

    // ptr 为 NULL，相当于 malloc
    if (ptr == NULL) {
        return malloc(size);
    }

    oldsize = GET_SIZE(HDRP(ptr));
    size = resize_alloc_size(size);

    // 如果新大小小于或等于原大小，直接在原块上截断
    if (size <= oldsize) {
        // 如果新大小小于原大小，更新块的头部和尾部信息
        if (size < oldsize) {
            // 计算剩余块的大小
            size_t remainder_size = oldsize - size;
            // 如果剩余块大小大于等于最小块大小，则分割
            if (remainder_size >= 2 * DSIZE) {
                // 更新原块的头部信息
                PUT(HDRP(ptr), PACK_ALL(size, GET_PREV_ALLOC(HDRP(ptr)), 1));                
                // 处理剩余的块
                char* next_ptr = NEXT_BLKP(ptr);
                PUT(HDRP(next_ptr), PACK_ALL(remainder_size, 1, 0));
                PUT(FTRP(next_ptr), PACK_ALL(remainder_size, 1, 0));
                // 合并空闲块 (如果有), 并更新链表  
                coalesce(next_ptr, remainder_size);
            } 
        }
        return ptr;
    }

    // 如果新大小大于原大小，重新分配内存
    newptr = malloc(size);

    // realloc() 失败，原块保持不变
    if (!newptr) {
        return NULL;
    }

    // 拷贝原有数据，但是可能会产生截断
    oldsize = MIN(oldsize, size);
    memcpy(newptr, ptr, oldsize);

    // 释放原有块
    free(ptr);

    return newptr;
}
/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);

    return newptr;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 * 不保证实现的准确性
 */
void mm_checkheap(int lineno) {
    // 偏移掉分配在堆底的空闲链表
    char* bp = mem_heap_lo() + DSIZE * FREE_LIST_NUM;
    // 检查序言块
    if (GET(bp) != 0) {
        dbg_printf("[%d]Prologue Error: word before prologue incorrect at %p\n", lineno, bp);
        exit(1);
    }
    if (GET(bp + WSIZE) != PACK_ALLOC(DSIZE, 1)) {
        dbg_printf("[%d]Prologue Error: prologue header incorrect at %p\n", lineno, bp);
        exit(1);
    }
    if (GET(bp + 2 * WSIZE) != PACK_ALLOC(DSIZE, 1)) {
        dbg_printf("[%d]Prologue Error: prologue footer incorrect at %p\n", lineno, bp);
        exit(1);
    }
    // 移动指针到序言块之后
    bp += (2 * WSIZE);
    // 初始化非1和0的数字, 用以特判初始状态
    size_t is_prev_alloc = 2;
    size_t is_prev_free = 0;
    char *hi = mem_heap_hi() + 1;   // 堆顶指针

    while (bp < hi) {
        // 检查边界
        if (!CHECK_ALIGN(bp)) {
            dbg_printf("[%d]Alignment Error: block not aligned at %p\n", lineno, bp);
            exit(1);
        }
        // 检查块大小
        if (GET_SIZE(HDRP(bp)) == 0) {
            dbg_printf("[%d]Block Header Error: block size is invalid at %p\n", lineno, bp);
            exit(1);
        }
        // 指针并非指向堆底时, 检查头部是否正确标记上一个块的分配情况
        if (is_prev_alloc != 2) {
            if (GET_PREV_ALLOC(HDRP(bp)) != is_prev_alloc) {
                size_t alloc = GET_PREV_ALLOC(HDRP(bp));
                dbg_printf("[%d]Block Header Error: prev alloc bit is incorrect at %p\n", lineno, bp);
                dbg_printf("    the prev alloc of header is %ld, but the prev alloc is %ld\n", alloc, is_prev_alloc);
                exit(1);
            }
        }
        is_prev_alloc = GET_ALLOC(HDRP(bp));

        // 对于空闲块
        if (!GET_ALLOC(HDRP(bp))) {
            // 首先检查头尾是否一致
            if (GET(HDRP(bp)) != GET(FTRP(bp))) {
                dbg_printf("[%d]Block Match Error: header does not match footer at %p\n", lineno, bp);
                exit(1);
            }
            // 检查是否存在连续空闲块
            if (is_prev_free) {
                dbg_printf("[%d]Block Free Error: two consecutive free blocks at %p\n", lineno, bp);
                exit(1);
            }
            is_prev_free = 1;
        }
        else {
            is_prev_free = 0;
        }
        bp = NEXT_BLKP(bp);
    }
    // 检查结尾块
    // 检查结尾块大小是否为0
    if (GET_SIZE(HDRP(bp)) != 0) {
        dbg_printf("[%d]Epilogue Error: epilogue block size is invalid at %p\n", lineno, bp);
        exit(1);
    }
    // 检查结尾块是否正确标记上一个块的分配情况
    if (GET_PREV_ALLOC(HDRP(bp)) != is_prev_alloc) {
        size_t alloc = GET_PREV_ALLOC(HDRP(bp));
        dbg_printf("[%d]Epilogue Error: prev alloc bit is incorrect at %p\n", lineno, bp);
        dbg_printf("    the alloc of the prev block is %ld, but the prev alloc is %ld\n", alloc, is_prev_alloc);
        exit(1);
    }
    // 检查结尾块是否正确标记当前块的分配情况
    if (GET_ALLOC(HDRP(bp)) != 1) {
        dbg_printf("[%d]Epilogue Error: epilogue block is not allocated at %p\n", lineno, bp);
        exit(1);
        
    }
    // 检查当前指针是否超过堆顶
    if (bp > hi) {
        dbg_printf("[%d]Heap Error: heap extends beyond heap top at %p\n", lineno, bp);
        dbg_printf("    heap top at %p\n", hi);
        exit(1);
    }
    // 检查是否对齐堆顶
    if (!CHECK_ALIGN(bp)) {
        dbg_printf("[%d]Alignment Error: heap top not aligned at %p\n", lineno, bp);
        exit(1);
    }
    // 检查空闲链表实现正确性
    mm_checkfreelist(lineno);
}

/*
 * mm_checkfreelist: check the correctness of the list.
 */

void mm_checkfreelist(int lineno) {
    size_t free_block_numbers_by_list = 0;
    size_t free_block_numbers_by_heap = 0;
    lo = mem_heap_lo();
    char *hi = mem_heap_hi();
    // 检查链表链接的正确性
    for (int i = 0; i < FREE_LIST_NUM; i++) {
        char *bp = free_listp[i];
        index2size(i);
        while (bp != lo) {
            // 检查双向链表是否匹配
            if (PREV_NODE(bp) != lo) {
                if (NEXT_NODE(PREV_NODE(bp)) != bp) {
                    char *bp2 = NEXT_NODE(PREV_NODE(bp));
                    dbg_printf("[%d]Free List Error: prev and next pointer not match at %p\n", lineno, bp);
                    dbg_printf("    the next node of prev node at %p is %p\n", bp, bp2);
                    exit(1);
                }
            }
            // 检查当前节点大小是否符合链表大小
            size_t cur_size = GET_SIZE(HDRP(bp));
            if (cur_size < low_range || cur_size > high_range) {
                dbg_printf("[%d]Free List Error: block size not match bucket at %p\n", lineno, bp);
                dbg_printf("    current size is %ld, but the range from %ld to %ld\n", cur_size, low_range, high_range);
                exit(1);
            }
            // 检查当前节点是否为空闲块
            if (GET_ALLOC(HDRP(bp))) {
                dbg_printf("[%d]Free List Error: block is not free at %p\n", lineno, bp);
                exit(1);
            }
            bp = NEXT_NODE(bp);
            free_block_numbers_by_list++;
        }
        if (bp != lo) {
            dbg_printf("[%d]Free List Error: pointer out of range at %p\n", lineno, bp);
            exit(1);
        }
    }
    char* bp = lo + DSIZE * FREE_LIST_NUM;
    // 通过块遍历的方式获取空闲块数量
    while (bp < hi) {
        if (!GET_ALLOC(HDRP(bp))) {
            free_block_numbers_by_heap++;
        }
        bp = NEXT_BLKP(bp);
    }
    free_block_numbers_by_heap--;
    // 检查是否所有的空闲块都在空闲链表中
    if (free_block_numbers_by_heap != free_block_numbers_by_list) {
        dbg_printf("[%d]Free List Error: not all free block in free lists %p\n", lineno, bp);
        dbg_printf("    The number of total free blocks is %ld\n", free_block_numbers_by_heap);
        dbg_printf("    But the number of free blocks in the lists is %ld\n", free_block_numbers_by_list);
        exit(1);
    }
}

/*
 * resize the size of allocation.
 */
static inline size_t resize_alloc_size(size_t size){
    // 抡咽抡咽舸探渤崦鹜仅馁力蓉生馁力撺溯==
    
    if (size >= 448 && size < 512) {
        size = 512;
    }
    else if (size >= 1000 && size < 1024) {
        size = 1024;
    }
    else if (size >= 2000 && size < 2048) {
        size = 2048;
    }

    if(size <= DSIZE)
        return 2 * DSIZE;
    else
        return DSIZE * ((size + (WSIZE) + (DSIZE - 1)) / DSIZE); 
}

/*
 * when the heap is not big enough, extend it to the suitable size.
 */
static inline void *extend_heap(size_t words){
    char *bp;
    size_t size;
    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    // 开辟新块
    if((long)(bp = mem_sbrk(size)) == -1)  
        return NULL;
    
    // 获取前一个块的使用信息
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK_ALL(size, prev_alloc, 0));   /* Free block header */   
    PUT(FTRP(bp), PACK_ALL(size, prev_alloc, 0));   /* Free block footer */   
    PUT(HDRP(NEXT_BLKP(bp)), PACK_ALLOC(0, 1));     /* New epilogue header */
    /* Coalesce if the previous block was free */
    return coalesce(bp, size);   
}

static inline void *coalesce(void *bp, size_t size){
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));

    // 前后都已分配
    if(prev_alloc && next_alloc){
        SET_PREV_FREE(HDRP(NEXT_BLKP(bp)));
    }
    // 仅前分配
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        delete_node(NEXT_BLKP(bp));
        PUT(HDRP(bp), PACK_ALL(size, 1, 0));
        PUT(FTRP(bp), PACK_ALL(size, 1, 0));
    }
    // 仅后分配
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        delete_node(PREV_BLKP(bp));
        SET_PREV_FREE(HDRP(NEXT_BLKP(bp)));
        size_t prev_prev = GET_PREV_ALLOC(HDRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK_ALL(size, prev_prev, 0));
        PUT(FTRP(bp), PACK_ALL(size, prev_prev, 0));
        bp = PREV_BLKP(bp);
    }
    // 前后均未分配
    else {
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        delete_node(PREV_BLKP(bp));
        delete_node(NEXT_BLKP(bp));
        size_t prev_prev = GET_PREV_ALLOC(HDRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK_ALL(size, prev_prev, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK_ALL(size, prev_prev, 0));
        bp = PREV_BLKP(bp);
    }
    insert_node(bp, size);
    return bp;
}

/*
 * First-K-fit search, find the most suitable block among the first k suitable block.
 */
static inline void *find_fit(size_t asize, int k){
    char *best_block = NULL;
    size_t best_size = 0;
    int count = 0;            // 记录找到的适合块的数量

    for(int num = size2index(asize); num < FREE_LIST_NUM; num++){
        char *bp = free_listp[num];
        while(bp != lo){
            size_t block_size = GET_SIZE(HDRP(bp));
            if(block_size >= asize){
                // 如果当前块适合，且是第一个适合的块，或者比当前最合适的块更小
                if(best_block == NULL || block_size < best_size){
                    best_block = bp;
                    best_size = block_size;
                }
                count++;
                if(count >= k){
                    return best_block;
                }
            }
            bp = NEXT_NODE(bp);
        }
    }
    return best_block;
}


/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
static inline void place(void* bp, size_t size){
    size_t block_size = GET_SIZE(HDRP(bp));
    size_t remained_size = block_size - size;
    
    delete_node(bp);  // 从空闲链表中删除当前块

    // 如果剩余块大小大于等于最小块大小，则分割
    if(remained_size >= 2 * DSIZE){
        PUT(HDRP(bp), PACK_ALL(size, GET_PREV_ALLOC(HDRP(bp)), 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK_ALL(remained_size, 1, 0));
        PUT(FTRP(bp), PACK_ALL(remained_size, 1, 0));
        insert_node(bp, remained_size);
    }
    // 否则只重设分配位
    else {
        SET_ALLOC(HDRP(bp));
        bp = NEXT_BLKP(bp);
        SET_PREV_ALLOC(HDRP(bp));
        if(!GET_ALLOC(HDRP(bp)))
            SET_PREV_ALLOC(FTRP(bp));
    }
}

/*
 * Insert node into the list of the suitable size. Use LIFO.
 * Sort k members of the list when inserting.
 */
static void insert_node(void *bp, size_t size) {
    size_t num = size2index(size);
    char *top = free_listp[num];    // 链表头部
    char *end = mem_heap_lo();      // 链表尾部
    int count = 0;
    
    const int k = 0;

    // 链表无元素, 直接插入
    if (top == end) {
        free_listp[num] = bp;
        SET_PREV_NODE(bp, NULL);
        SET_NEXT_NODE(bp, NULL);
        return;
    } 
    // 否则, 对链表前k个元素(含要插入的)进行插入排序, k=0意味着不排序直接插入头部
    else {        
        char *index = top;
        while (NEXT_NODE(index) != end && count < k) {
            char *next = NEXT_NODE(index);
            size_t s1 = GET_SIZE(HDRP(index));
            size_t s2 = GET_SIZE(HDRP(next));
            if (s1 <= size && s2 >= size) {
                // 找到了插入位置
                SET_PREV_NODE(next, bp);
                SET_PREV_NODE(bp, index);
                SET_NEXT_NODE(bp, next);
                SET_NEXT_NODE(index, bp);
                return;
            }
            index = next;
            count++;
        }
        // 未找到插入位置
        // 插入到第k个元素之后或者链表尾
        SET_PREV_NODE(bp, index);
        SET_NEXT_NODE(bp, NEXT_NODE(index));
        SET_NEXT_NODE(index, bp);
        if (NEXT_NODE(bp) != end) {
            SET_PREV_NODE(NEXT_NODE(bp), bp);
        }
        return;
    }
}

static inline void delete_node(void *bp){
    size_t size = GET_SIZE(HDRP(bp));
    size_t index = size2index(size);
    char *prev = PREV_NODE(bp);
    char *next = NEXT_NODE(bp);
    // 如果是头结点
    if(prev == lo){
        free_listp[index] = next;
        if(next != lo){
            SET_PREV_NODE(next, NULL);
        }
    }
    else {
        SET_NEXT_NODE(prev, next);
        if(next != lo){
            SET_PREV_NODE(next, prev);
        }
    }
}

/*
 * size2index: Get the index from size.
 */
static inline size_t size2index(size_t size) {
    // 采用树结构, 减小查询量
    if (size <= 128) {
        if (size <= 32) {
            if (size <= 24) return 0;
            else return 1;
        } else {
            if (size <= 64) return 2;
            else return 3;
        }
    } else {
        if (size <= 2048) {
            if (size <= 512) {
                if (size <= 256) return 4;
                else return 5;
            } else {
                if (size <= 1024) return 6;
                else return 7;
            }
        } else {
            if (size <= 15360) {
                if (size <= 4096) return 8;
                else if (size <= 8192) return 9;
                else return 10;
            } else {
                if (size <= 30720) return 11;
                else if (size <= 61440) return 12;
                else return 13;
            }
        }
    }
}

/*
 * index2size: Get the size range from index.
 * For checking.
 */
static inline void index2size(size_t index) {
    switch (index) {
    case 0:
        low_range = 8;
        high_range = 24;
        break;
    case 1:
        low_range = 24;
        high_range = 32;
        break;
    case 2:
        low_range = 32;
        high_range = 64;
        break;
    case 3:
        low_range = 64;
        high_range = 128;
        break;
    case 4:
        low_range = 128;
        high_range = 256;
        break;
    case 5:
        low_range = 256;
        high_range = 512;
        break;
    case 6:
        low_range = 512;
        high_range = 1024;
        break;
    case 7:
        low_range = 1024;
        high_range = 2048;
        break;
    case 8:
        low_range = 2048;
        high_range = 4096;
        break;
    case 9:
        low_range = 4096;
        high_range = 8192;
        break;
    case 10:
        low_range = 8192;
        high_range = 15360;
        break;
    case 11:
        low_range = 15360;
        high_range = 30720;
        break;
    case 12:
        low_range = 30720;
        high_range = 61440;
        break;
    case 13:
        low_range = 61440;
        high_range = 0x7fffffff;
        break;
    }
}

