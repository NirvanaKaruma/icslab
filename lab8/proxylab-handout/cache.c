#include "cache.h"
#include "csapp.h"

// 使用第一类读写者问题处理缓存读取和更新问题
// 全局变量
static cache_t cache;  // 缓存池
static int readcnt;    // 读者数量
static sem_t mutex, w; // 保护全局变量的互斥量和写者锁

// 其他辅助函数
// LRU查找最久不使用缓存
int findLRU() {
    int min_stamp = 0;
    int min_index;
    for (int i = 0; i < T; i++) {
        if (cache.cache_file[i].valid == 0)
            continue;
        if (min_stamp < cache.cache_file[i].time_stamp) {
            min_stamp = cache.cache_file[i].time_stamp;
            min_index = i;
        }
    }
    return min_index;
}

// 更新时间戳
void update_time() {
    for (int i = 0; i < T; i++) {
        if (cache.cache_file[i].valid == 0)
            continue;
        cache.cache_file[i].time_stamp++;
    }
}

// 缓存池初始化函数
void init_cache() {
    cache.active_cache_num = 0;
    for (int i = 0; i < T; i++) {
        cache.cache_file[i].valid = 0;
    }
    readcnt = 0;
    sem_init(&mutex, 0, 1);
    sem_init(&w, 0, 1);
}

// 读缓存
int query_cache(rio_t *rio, char *url) {
    P(&mutex);
    readcnt++;
    if (readcnt == 1) {
        // 加写者锁
        P(&w);
    }
    V(&mutex);

    // 查找缓存
    int flag = 0;
    for (int i = 0; i < T; i++) {
        if (cache.cache_file[i].valid == 0)
            continue;
        // 缓存命中
        if (!strcmp(cache.cache_file[i].url, url)) {
            P(&mutex);
            update_time();
            cache.cache_file[i].time_stamp++;
            V(&mutex);
            // 发送缓存内容
            Rio_writen(rio->rio_fd, cache.cache_file[i].data,
                       cache.cache_file[i].data_size);
            flag = 1;
            break;
        }
    }

    P(&mutex);
    readcnt--;
    if (readcnt == 0) {
        // 释放写者锁
        V(&w);
    }
    V(&mutex);

    return flag;
}

// 写缓存
void update_cache(char *buf, char *url, int size) {
    // 加写者锁
    P(&w);

    // 缓存已满
    if (cache.active_cache_num == T) {
        int oldest = findLRU();
        // 替换缓存
        strcpy(cache.cache_file[oldest].url, url);
        memcpy(cache.cache_file[oldest].data, buf, size);
        cache.cache_file[oldest].data_size = size;
        P(&mutex);
        update_time();
        cache.cache_file[oldest].time_stamp = 0;
        V(&mutex);
    }
    // 缓存未满
    else {
        strcpy(cache.cache_file[cache.active_cache_num].url, url);
        memcpy(cache.cache_file[cache.active_cache_num].data, buf, size);
        cache.cache_file[cache.active_cache_num].data_size = size;
        cache.cache_file[cache.active_cache_num].valid = 1;
        P(&mutex);
        update_time();
        cache.cache_file[cache.active_cache_num].time_stamp = 0;
        V(&mutex);
        cache.active_cache_num++;
    }

    V(&w);
    return;
}