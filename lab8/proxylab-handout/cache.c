#include "cache.h"
#include "csapp.h"

// 使用第一类读写者问题处理缓存读取和更新问题
// 全局变量
static cache_t cache;
static int readcnt; // 读者数量
static sem_t mutex, w;

// 其他辅助函数
void update_time() {
    for (int i = 0; i < T; i++) {
        if (cache.cache_file[i].valid = 1) {
            cache.cache_file[i].time_stamp++;
        }
    }
}

int findLRU(){
    int max_stamp = -1;
    int max_index = -1;
    for(int i = 0; i < T; i++){
        if(cache.cache_file[i].valid = 0) continue;
        if(max_stamp < cache.cache_file[i].time_stamp){
            max_stamp = cache.cache_file[i].time_stamp;
            max_index = i;
        }
    }
    return max_index;
}

// 缓存池初始化函数
void init_cache() {
    cache.active_cache_num = 0;
    readcnt = 0;
    for (int i = 0; i < T; i++) {
        cache.cache_file[i].valid = 0;
    }
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
        if (cache.cache_file->valid = 0)
            continue;
        // 缓存命中
        if (!strcmp(cache.cache_file[i].url, url)) {
            P(&mutex);
            update_time();
            cache.cache_file[i].time_stamp = 0;
            V(&mutex);
            // 发送缓存内容
            Rio_writen(rio, cache.cache_file[i].data,
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
void update_cache(char *buf, char *url, size_t size) {
    // 加写者锁
    P(&w);

    // 缓存已满
    if(cache.active_cache_num >= T - 1){
        int oldest = findLRU();
        if(oldest == -1){
            fprintf(stderr, "Cache LRU error\n");
            return;
        }
        // 替换缓存
        strcpy(cache.cache_file[oldest].url, url);
        memcpy(cache.cache_file[oldest].data, buf, size);
        P(&mutex);
        update_time();
        cache.cache_file[oldest].time_stamp = 0;
        V(&mutex);
    }
    // 缓存未满
    else {
        strcpy(cache.cache_file[cache.active_cache_num].url, url);
        memcpy(cache.cache_file[cache.active_cache_num].data, buf, size);
        cache.cache_file[cache.active_cache_num].valid = 1;
        P(&mutex);
        update_time();
        cache.cache_file[cache.active_cache_num].time_stamp = 0;
        V(&mutex);
        cache.active_cache_num++;
    }

    V(&w);
}