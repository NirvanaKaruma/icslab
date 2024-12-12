/*
 * mm.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
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
#define DEBUG
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

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

/* Basic constants and macros */
#define WSIZE       4           /* Word and header/footer size (bytes) */ 
#define DSIZE       8           /* Double word size (bytes) */
#define CHUNKSIZE  (1 << 12)    /* Extend heap by this amount (bytes) */  
#define FREE_LIST_NUM 15        /* The number of free blocks lists*/

/* Pack a size and allocated bit into a word */
#define PACK_ALLOC(size, alloc)         ((size) | (alloc)) 
#define PACK_PREV(size, prev)           ((size) | (prev))
#define PACK_ALL(size, prev, alloc)     ((size) | (prev) | (alloc))

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))            
#define PUT(p, val)  (*(unsigned int *)(p) = (val))

/* Read and set the size and allocated fields from address p */
#define GET_SIZE(p)         (GET(p) & ~0x7)                   
#define GET_ALLOC(p)        (GET(p) & 0x1) 
#define GET_PREV_ALLOC(p)   (GET(p) & 0x2) 
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
#define PREV_NODE(bp)           ((char *)(mem_heap_lo() + *(unsigned*)(bp)))
#define NEXT_NODE(bp)           ((char *)(mem_heap_lo() + *(unsigned*)(bp + WSIZE)))
#define SET_PREV_NODE(bp, val)  (*(unsigned*)(bp) = ((unsigned)(long)val))
#define SET_NEXT_NODE(bp, val)  (*(unsigned*)((char *)(bp) + WSIZE) = ((unsigned)(long)(val)))

/* Other helper functions */
#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))
#define CHECK_ALIGN(p)      (ALIGN(p) == (size_t)(p))

/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */
static char **free_listp;     /* Pointers to the first of free blocks */

static size_t low_range;
static size_t high_range;

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize, size_t k);
static void *coalesce(void *bp, size_t size);
static size_t resize_alloc_size(size_t size);
static void insert_node(void *bp, size_t size);
static void delete_node(void *bp);
static void index2size(size_t index);
static size_t size2index(size_t size);

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
    // 初始化所有空闲链表指针数组, 将所有空闲链表头指针初始化为堆底
    free_listp = mem_heap_lo();
    // 分配存储指针数组的空间不足, 返回失败
    for(int i = 0; i < FREE_LIST_NUM; i++){
        if((heap_listp = mem_sbrk(DSIZE)) == (void *)-1) 
            return -1;
        free_listp[i] = mem_heap_lo();
    }

    // 序言块、 结尾块
    PUT(heap_listp, 0);                                     /* Alignment padding */
    PUT(heap_listp + (1 * WSIZE), PACK_ALLOC(DSIZE, 1));    /* Prologue header */ 
    PUT(heap_listp + (2 * WSIZE), PACK_ALLOC(DSIZE, 1));    /* Prologue footer */ 
    PUT(heap_listp + (3 * WSIZE), PACK_ALLOC(0, 3));        /* Epilogue header */
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
    if((bp = find_fit(asize, 1)) != NULL){
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
    if(!ptr) 
        return;
    if (heap_listp == 0){
        mm_init();
        
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
void *realloc(void *oldptr, size_t size) {
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        free(oldptr);
        return 0;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if(oldptr == NULL) {
        return malloc(size);
    }

    newptr = malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return 0;
    }

    /* Copy the old data. */
    oldsize = GET_SIZE(HDRP(oldptr));
    oldsize = MIN(oldsize, size);
    memcpy(newptr, oldptr, oldsize);

    /* Free the old block. */
    free(oldptr);

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
 */
void mm_checkheap(int lineno) {
    // 偏移掉分配在堆底的空闲链表
    char* bp = mem_heap_lo() + DSIZE * FREE_LIST_NUM;
    // 检查序言块
    if (GET(bp) != 0) {
        dbg_printf("[%d]Prologue Error: word before prologue incorrect at %p\n", lineno, bp);
    }
    if (GET(bp + WSIZE) != PACK_ALLOC(DSIZE, 1)) {
        dbg_printf("[%d]Prologue Error: prologue header incorrect at %p\n", lineno, bp);
    }
    if (GET(bp + DSIZE) != PACK_ALLOC(DSIZE, 1)) {
        dbg_printf("[%d]Prologue Error: prologue footer incorrect at %p\n", lineno, bp);
    }
    // 移动指针到序言块之后
    bp += DSIZE;
    // 初始化为1而不是2，用以辨别初始状态（即指针指向堆底时）
    size_t is_prev_alloc = 1;
    size_t is_prev_free = 0;

    while ((void*)bp < mem_heap_hi()) {
        // 检查边界是否对齐
        if (!CHECK_ALIGN(bp)) {
            dbg_printf("[%d]Alignment Error: block not aligned at %p\n", lineno, bp);
        }
        // 检查块大小是否合法
        if (GET_SIZE(HDRP(bp)) == 0) {
            dbg_printf("[%d]Block Header Error: block size is invalid at %p\n", lineno, bp);
        }
        // 指针并非指向堆底时，检查头部是否正确标记上一个块是否分配
        if (is_prev_alloc != 1) {
            if (GET_PREV_ALLOC(HDRP(bp)) != is_prev_alloc) {
                dbg_printf("[%d]Block Header Error: prev alloc bit is incorrect at %p\n", lineno, bp);
            }
        }
        is_prev_alloc = GET_ALLOC(HDRP(bp));

        // 对于空闲块，检查头部尾部是否一致
        if (!GET_ALLOC(HDRP(bp))) {
            // 首先检查头尾是否一致
            if (GET(HDRP(bp)) != GET(FTRP(bp))) {
                dbg_printf("[%d]Block Match Error: header does not match footer at %p\n", lineno, bp);
            }
            // 检查是否存在连续空闲块
            if (is_prev_free) {
                dbg_printf("[%d]Block Free Error: two consecutive free blocks at %p\n", lineno, bp);
            }
            is_prev_free = 1;
        }
        else {
            is_prev_free = 0;
        }
    }
    // 检查结尾块
    // 检查结尾块大小是否为0
    if (GET_SIZE(HDRP(bp)) != 0) {
        dbg_printf("[%d]Epilogue Error: epilogue block size is invalid at %p\n", lineno, bp);
    }
    // 检查结尾块是否正确标记上一个块是否分配
    if (GET_PREV_ALLOC(HDRP(bp)) != is_prev_alloc) {
        dbg_printf("[%d]Epilogue Error: prev alloc bit is incorrect at %p\n", lineno, bp);
    }
    // 检查结尾块是否正确标记当前块是否分配
    if (GET_ALLOC(HDRP(bp)) != 1) {
        dbg_printf("[%d]Epilogue Error: epilogue block is not allocated at %p\n", lineno, bp);
    }
    // 检查当前指针是否超过堆顶
    if ((void*)bp > mem_heap_hi()) {
        dbg_printf("[%d]Heap Error: heap extends beyond heap top at %p\n", lineno, bp);
    }
    // 检查是否对齐堆顶
    if (!CHECK_ALIGN(bp)) {
        dbg_printf("[%d]Alignment Error: heap top not aligned at %p\n", lineno, bp);
    }
}

/*
 * resize the size of allocation.
 */
static inline size_t resize_alloc_size(size_t size){
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
    if ((long)(bp = mem_sbrk(size)) == -1)  
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
        delete_node(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK_ALL(size, 2, 0));
        PUT(FTRP(bp), PACK_ALL(size, 2, 0));
    }
    // 仅后分配
    else if(!prev_alloc && next_alloc){
        delete_node(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        SET_PREV_FREE(HDRP(NEXT_BLKP(bp)));
        size_t prev_prev = GET_PREV_ALLOC(HDRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK_ALL(size, prev_prev, 0));
        PUT(FTRP(bp), PACK_ALL(size, prev_prev, 0));
        bp = PREV_BLKP(bp);
    }
    // 前后均未分配
    else {
        delete_node(PREV_BLKP(bp));
        delete_node(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
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
static inline void *find_fit(size_t asize, size_t k){
    char *best_block = NULL;
    size_t best_size = 0;
    size_t count = 0;            // 记录找到的适合块的数量

    for(size_t num = size2index(asize); num < FREE_LIST_NUM; num++){
        void *bp = free_listp[num];
        while(bp != mem_heap_lo()){
            size_t block_size = GET_SIZE(HDRP(bp));
            if(block_size < asize)
                continue;
            // 如果当前块适合，且是第一个适合的块，或者比当前最合适的块更小
            if(best_block == NULL || block_size < best_size){
                best_block = bp;
                best_size = block_size;
            }
            count++;
            if(count >= k){
                return best_block;
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
    size_t block_size = GET_SIZE(bp);
    size_t remained_size = block_size - size;
    
    delete_node(bp);  // 从空闲链表中删除当前块

    // 如果剩余块大小大于等于最小块大小，则分割
    if(remained_size >= 2 * DSIZE){
        PUT(HDRP(bp), PACK_ALL(size, GET_PREV_ALLOC(HDRP(bp)), 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK_ALL(remained_size, 2, 0));
        PUT(FTRP(bp), PACK_ALL(remained_size, 2, 0));
        insert_node(bp, remained_size);
    }
    // 否则只重设分配位
    else {
        PUT(HDRP(bp), PACK_ALLOC(block_size, 1));
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
static void insert_node(void *bp, size_t size){
    size_t index = size2index(size);
    char *cur = free_listp[index];
    char *prev = NULL;
    int k = 3;  // 前K个元素保持有序
    int count = 0;

    // 如果表中尚未有元素, 直接插入
    if(cur == mem_heap_lo()){
        free_listp[index] = bp;
        SET_PREV_NODE(bp, NULL);
        SET_NEXT_NODE(bp, NULL);
        return;
    }

    // 在前k个元素中寻找插入位置
    while(count < k && cur != NULL){
        // 假设按块大小升序排列
        if(GET_SIZE(HDRP(cur)) >= size) {
            break;
        }
        prev = cur;
        cur = NEXT_NODE(cur);
        count++;
    }

    // 插入bp在prev和cur之间
    if(prev == NULL){
        // 插入到头部
        free_listp[index] = bp;
        SET_PREV_NODE(bp, NULL);
        SET_NEXT_NODE(bp, cur);
    }
    else {
        SET_PREV_NODE(bp, prev);
        SET_NEXT_NODE(bp, cur);
        SET_NEXT_NODE(prev, bp);
    }
    if(cur != NULL){
        SET_PREV_NODE(cur, bp);
    }

    return;
}

static void delete_node(void *bp){
    size_t size = GET_SIZE(HDRP(bp));
    size_t index = size2index(size);
    char *prev = PREV_NODE(bp);
    char *next = NEXT_NODE(bp);
    // 如果是头结点
    if(prev == mem_heap_lo()){
        free_listp[index] = next;
        if(next != mem_heap_lo()){
            SET_PREV_NODE(next, NULL);
        } else {
            free_listp[index] = mem_heap_lo();
        }
    }
    else {
        SET_NEXT_NODE(prev, next);
        if(next != mem_heap_lo()){
            SET_PREV_NODE(next, prev);
        }
    }
}

/*
 * get_index: 根据块大小获得空闲链表的索引
 * 分界限由所有 trace 的 malloc & relloc 频率统计尖峰与尝试调整得到
 */
static inline size_t size2index(size_t size) {
    if (size <= 24)
        return 0;
    if (size <= 32)
        return 1;
    if (size <= 64)
        return 2;
    if (size <= 80)
        return 3;
    if (size <= 120)
        return 4;
    if (size <= 240)
        return 5;
    if (size <= 480)
        return 6;
    if (size <= 960)
        return 7;
    if (size <= 1920)
        return 8;
    if (size <= 3840)
        return 9;
    if (size <= 7680)
        return 10;
    if (size <= 15360)
        return 11;
    if (size <= 30720)
        return 12;
    if (size <= 61440)
        return 13;
    else
        return 14;
}

/*
 * get_range: 根据空闲链表的索引获得分界限
 * 存储返回值到全局变量 low_range 和 high_range
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
        high_range = 80;
        break;
    case 4:
        low_range = 80;
        high_range = 120;
        break;
    case 5:
        low_range = 120;
        high_range = 240;
        break;
    case 6:
        low_range = 240;
        high_range = 480;
        break;
    case 7:
        low_range = 480;
        high_range = 960;
        break;
    case 8:
        low_range = 960;
        high_range = 1920;
        break;
    case 9:
        low_range = 1920;
        high_range = 3840;
        break;
    case 10:
        low_range = 3840;
        high_range = 7680;
        break;
    case 11:
        low_range = 7680;
        high_range = 15360;
        break;
    case 12:
        low_range = 15360;
        high_range = 30720;
        break;
    case 13:
        low_range = 30720;
        high_range = 61440;
        break;
    case 14:
        low_range = 61440;
        high_range = 0x7fffffff;
        break;
    }
}

