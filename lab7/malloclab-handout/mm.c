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
#define PREV_NODE(bp)           ((char *)(bp))
#define NEXT_NODE(bp)           ((char *)(bp) + WSIZE)
#define SET_PREV_NODE(bp, val)  (*(unsigned int *)(bp) = ((unsigned int)(long)(val)))
#define SET_NEXT_NODE(bp, val)  (*(unsigned int *)((char *)(bp) + WSIZE) = ((unsigned int)(long)(val)))

/* Other helper functions */
#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))


/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */
static char **free_listp;     /* Pointers to the first of free blocks */

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize, size_t num);
static void *coalesce(void *bp);
static size_t resize_alloc_size(size_t size);
static void insert_node(void *bp, size_t size);
static void delete_node(void *bp);

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
    // 初始化所有空闲链表指针数组, 将所有空闲链表头指针初始化为堆底
    free_listp = mem_heap_lo();
    // 分配存储指针数组的空间不足, 返回失败
    if((heap_listp = mem_sbrk(FREE_LIST_NUM * DSIZE)) == (void *)-1) 
        return -1;
    for(int i = 0; i < FREE_LIST_NUM; i++){
        free_listp[i] = mem_heap_lo();
    }

    // 序言块、 结尾块
    PUT(heap_listp, 0);                                     /* Alignment padding */
    PUT(heap_listp + (1 * WSIZE), PACK_ALLOC(DSIZE, 1));    /* Prologue header */ 
    PUT(heap_listp + (2 * WSIZE), PACK_ALLOC(DSIZE, 1));    /* Prologue footer */ 
    PUT(heap_listp + (3 * WSIZE), PACK_ALLOC(0, 1));        /* Epilogue header */
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
    size_t size = GET_SIZE(HDRP(bp));
    // 获取前一个块的使用信息
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    // 更新本块header和footer的信息
    PUT(HDRP(bp), PACK_ALL(size, prev_alloc, 0));
    PUT(FTRP(bp), PACK_ALL(size, prev_alloc, 0));
    // 合并相邻的空闲块, 更新链表
    coalesce(ptr);
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
    oldsize = GET_SIZE(HDRP(ptr));
    oldsize = MIN(oldsize, size);
    memcpy(newptr, ptr, oldsize);

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
static inline int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static inline int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno) {
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
    return coalesce(bp);   
}

static inline void *coalesce(void *bp){
    size_t prev_alloc = GET_PREV_ALLOC(bp);
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    // 前后都已分配
    if(prev_alloc && next_alloc){
        SET_PREV_FREE(HDRP(NEXT_BLKP(bp)));
    }
    // 仅前分配
    else if(prev_alloc && !next_alloc){
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        delete_node(NEXT_BLKP(bp));
        PUT(HDRP(bp), PACK_ALL(size, 2, 0));
        PUT(FTRP(bp), PACK_ALL(size, 2, 0));
    }
    // 仅后分配
    else if(!prev_alloc && next_alloc){
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        delete_node(PREV_BLKP(bp));
        SET_PREV_FREE(HDRP(NEXT_BLKP(bp)));
        size_t prev_prev = GET_PREV_ALLOC(HDRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK_ALL(size, prev_prev, 0));
        bp = PREV_BLKP(bp);
        PUT(FTRP(bp), PACK_ALL(size, prev_prev, 0));
    }
    // 前后均未分配
    else {
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(HDRP(NEXT_BLKP(bp)));
        delete_node(PREV_BLKP(bp));
        delete_node(NEXT_BLKP(bp));
        size_t prev_prev = GET_PREV_ALLOC(HDRP(PREV_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK_ALL(size, prev_prev, 0));
        bp = PREV_BLKP(bp);
        PUT(FTRP(NEXT_BLKP(bp)), PACK_ALL(size, prev_prev, 0));
    }
    insert_node(bp, size);
    return bp;
}