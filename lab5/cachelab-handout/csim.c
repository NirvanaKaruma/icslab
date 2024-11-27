// 栾佑宇 2300013113
#include "cachelab.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <getopt.h>

// 定义cache_line
typedef struct cache_line{
    int valid;  // 有效位
    int tag;    // 标记位
    int time_stamp;  // 时间戳
    // 忽略块偏移b
} Cache_line;

// 定义cache
typedef struct cache{
    int S;  // 组数
    int E;  // 每组缓存行数
    int B;  // 块大小
    Cache_line **line;
} Cache;

Cache *cache = NULL;    // 缓存

unsigned hit_count = 0, miss_count = 0, eviction_count = 0; // 冲突不命中、缓存不命中、驱逐次数

int v = 0;  // 是否需要输出迭代信息

// 初始化cache
void init(int s, int E, int b){
    // 异常处理
    if(s <= 0 || E <= 0 || b <= 0 || (s + b) > 64){
        printf("Error init!\n");
        exit(-1);
    }
    cache = (Cache *)malloc(sizeof(Cache));
    int S = 1 << s;
    int B = 1 << b;
    cache->S = S;
    cache->E = E;
    cache->B = B;
    cache->line = (Cache_line **)malloc(sizeof(Cache_line *) * S);
    for(int i = 0; i < S; i++){
        cache->line[i] = (Cache_line *)malloc(sizeof(Cache_line) * E);
        for(int j = 0; j < E; j++){
            // 每行缓存初始化
            cache->line[i][j].valid = -1;
            cache->line[i][j].tag = -1;
            cache->line[i][j].time_stamp = -1;
        }
    }
}

// 释放cache
void freeCache(){
    int S = cache->S;
    for(int i = 0; i < S; i++){
        free(cache->line[i]);
    }
    free(cache->line);
    free(cache);
}

// 更新缓存时间戳
void updateTimeInfo(int op_s, int op_i, long op_tag){
    cache->line[op_s][op_i].valid = 1;
    cache->line[op_s][op_i].tag = op_tag;
    int E = cache->E;
    for(int j = 0; j < E; j++){
        if(cache->line[op_s][j].valid == 1){
            // 所有有效的缓存行时间戳+1
            cache->line[op_s][j].time_stamp++;
        }
    }
    // 现在操作的缓存行时间戳设0
    cache->line[op_s][op_i].time_stamp = 0;
}

// 查找最久未使用缓存行
int findLRU(int op_s){
    int max_time_stamp = 0;
    int index = 0;
    int E = cache->E;
    for(int i = 0; i < E; i++){
        if(cache->line[op_s][i].time_stamp > max_time_stamp){
            max_time_stamp = cache->line[op_s][i].time_stamp;
            index = i;
        }
    }
    return index;
}

// 检查缓存是否已满, 便于判断是否发生冷不命中与更新缓存
int isFull(int op_s){
    int E = cache->E;
    for(int i = 0; i < E; i++){
        // 如果有空的缓存行, 则返回该行索引
        if(cache->line[op_s][i].valid == -1){
            return i;
        }
    }
    return -1;
}

// 查找缓存行
int getLine(int op_s, long op_tag){
    int E = cache->E;
    for(int i = 0; i < E; i++){
        if(cache->line[op_s][i].valid != -1 && cache->line[op_s][i].tag == op_tag){
            return i;
        }
    }
    return -1;
}

// 更新缓存
void update(int op_s, long op_tag){
    int index = getLine(op_s, op_tag);
    if(index == -1){    // 不命中
        miss_count++;
        if(v){  // 打印信息
            printf("miss\n");
        }
        int op_i = isFull(op_s);
        if(op_i == -1){ // 已满, 发生驱逐
            eviction_count++;
            if(v){
                printf("eviction\n");
            }
            op_i = findLRU(op_s);   // 用LRU找驱逐的行
        }
        updateTimeInfo(op_s, op_i, op_tag);
    } else {    //命中
        hit_count++;
        if(v){
            printf("hit\n");
        }
        updateTimeInfo(op_s, index, op_tag);
    }
}

// 打印帮助信息
void printUsageInfo(){
    // 略
    printf("This is usage info.");
}

int main(int argc, char* argv[])
{
    int opt;
    int s, E, b;
    FILE* file;
    while((opt = getopt(argc, argv, "hvs:E:b:t:")) != -1){
        switch(opt){
            case 'h':
                printUsageInfo();
                exit(0);
            case 'v':
                v = 1;
                break;
            case 's':
                s = atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                file = fopen(optarg, "r");  // 打开文件
                break;
            default:
                printUsageInfo();
                exit(-1);   // 异常退出
        }
    }

    // 空文件，异常退出
    if(file == NULL){
        printf("Empty input file!\n");
        exit(-1);
    }

    init(s, E, b);

    char operation;
    long address;
    int size;   // 没用

    while(fscanf(file, "%s %lx,%d\n", &operation, &address, &size) == 3){
        long op_tag = address >> (s + b);
        int op_s = address >> b & ((1 << s) - 1);
        switch(operation){
            case 'I':
                continue;
            case 'M':   // 一次储存一次加载
                update(op_s, op_tag);
            case 'L':
            case 'S':
                update(op_s, op_tag);
                break;
            default:
                exit(-1);
        }
    }
    freeCache();
    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}
