#include "csapp.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define T 10

typedef struct {
    char url[MAXLINE]; // 内容来源URL
    char data[MAX_OBJECT_SIZE];
    size_t data_size;
    int time_stamp; // LRU用
    int valid;
} cache_file_t;

// 总缓存池
typedef struct {
    int active_cache_num;
    cache_file_t cache_file[T];
} cache_t;

void init_cache();
int query_cache(rio_t *rio, char *url);
void update_cache(char *buf, char *url, size_t size);