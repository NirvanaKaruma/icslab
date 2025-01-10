#include "csapp.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define T 10

// 单个缓存
typedef struct {
    char url[MAXLINE];          // 内容来源URL
    char data[MAX_OBJECT_SIZE]; // 数据
    int data_size;              // 数据大小
    int time_stamp;             // 时间戳, LRU用
    int valid;                  // 有效位
} cache_file_t;

// 总缓存池
typedef struct {
    int active_cache_num; // 目前存储信息的缓存数
    cache_file_t cache_file[T];
} cache_t;

void init_cache();
int query_cache(rio_t *rio, char *url);
void update_cache(char *buf, char *url, int size);