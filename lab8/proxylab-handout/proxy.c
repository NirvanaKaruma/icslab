/*
 * name: 栾佑宇
 * student-id: <2300013113>
 */
#include "csapp.h"
#include "cache.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

// http字符串, 用于验证URL合法性

// URL结构
typedef struct {
    char host[MAXLINE];
    char port[MAXLINE];
    char path[MAXLINE];
} url_t;

// 自定义函数
void *thread(void *vargp);                                  // 线程函数
void echo(int connfd);                                      // 响应处理函数
int URL_parser(char *s, url_t *url);                        // URL解析函数
void header_parser(rio_t *rio, char *header, url_t *url);   // 头解析函数
void doit(rio_t *client_rio, char *url);                           // GET处理函数

int main(int argc, char **argv) {
    Signal(SIGPIPE, SIG_IGN);

    int listenfd, *connfdp;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    pthread_t tid;
    
    // 检查参数数目是否合法
    if (argc != 2) {
        fprintf(stderr, "usage :%s <port> \n", argv[0]);
        exit(1);
    }

    listenfd = Open_listenfd(argv[1]);

    init_cache();

    while(1){
        clientlen = sizeof(clientaddr);
        // 重新开辟空间, 保存传递给线程的connfdp, 防止竞争
        connfdp = Malloc(sizeof(int));
        *connfdp = Accept(listenfd, (SA *) &clientaddr, &clientlen);
        Pthread_create(&tid, NULL, thread, connfdp);
    }

    return 0;
}

// 线程函数
void *thread(void *vargp){
    // 分离自身线程
    Pthread_detach(pthread_self());
    int connfd = *((int *)vargp);
    Free(vargp);
    echo(connfd);
    Close(connfd);
    return NULL;
}

// echo函数, 响应请求
void echo(int connfd){
    char buf[MAXLINE];
    rio_t rio;

    rio_readinitb(&rio, connfd);

    // 按行读取请求
    if(Rio_readlineb(&rio, buf, MAXLINE) <= 0){
        fprintf(stderr, "Readline error: %s\n", strerror(errno));
        Close(connfd);
        return;
    }

    // 解析请求行
    char method[MAXLINE], url[MAXLINE], version[MAXLINE];
    if(sscanf(buf, "%s %s %s", method, url, version) != 3){
        fprintf(stderr, "Parse request error: %s\n", strerror(errno));
        Close(connfd);
        return;
    }

    // 只响应GET方法
    if(strcasecmp(method, "GET") == 0){
        doit(&rio, url);
    }
    return;
}

// URL解析, 成功返回0, 不成功返回-1, 结果保存在url中
int URL_parser(char *s, url_t *url){
    int http_pre_len = strlen("http://");
    // 检查是否为HTTP协议
    if(strncasecmp(s, "http://" ,http_pre_len)){
        fprintf(stderr, "URL not http protocol: %s\n", s);
        return -1;
    }

    // 查找host, port, path的位置
    char *host_s = s + http_pre_len;
    char* port_s = strchr(host_s, ':');
    char* path_s = strchr(host_s, '/');

    // 无path
    if(path_s == NULL){
        return -1;
    }

    // 有端口号
    if(port_s != NULL){
        *port_s = '\0';
        strcpy(url->host, host_s);
        *port_s = ':';
        *path_s = '\0';
        strcpy(url->port, port_s + 1);
        *path_s = '/';
        strcpy(url->path, path_s);
    }

    // 无端口号
    else{
        *path_s = '\0';
        strcpy(url->host, host_s);
        strcpy(url->port, "80");
        *path_s = '/';
        strcpy(url->path, path_s);
    }

    return 0;
}

// 头解析函数
void header_parser(rio_t *rio, char *header, url_t *url){
    char buf[MAXLINE];
    int isHost = 0;

    while(1){
        Rio_readlineb(rio, buf, MAXLINE);
        // 结束行
        if(!strcmp(buf, "\r\n")){
            break;
        }
        // 遇到已有host头
        if(!strncasecmp(buf, "Host:", strlen("Host:"))){
            isHost = 1;
        }
        // 忽略Connection头、Proxy-Connection头、User-Agent头
        if(!strncasecmp(buf, "Connection:", strlen("Connection:"))) {
            continue;
        }
        if(!strncasecmp(buf, "Proxy-Connection:", strlen("Proxy-Connection:"))) {
            continue;
        }
        if(!strncasecmp(buf, "User-Agent:", strlen("User-Agent:"))) {
            continue;
        }
        // 其他头和Host头直接添加
        strcat(header, buf);
    }

    // 没有Host头, 手动添加
    if(!isHost){
        sprintf(buf, "Host: %s\r\n", url->host);
        strcat(header, buf);
    }

    // 添加User-Agent头、Proxy-Connection头、Connection头
    strcat(header, "Connection: close\r\n");
    strcat(header, "Proxy-Connection: close\r\n");
    strcat(header, user_agent_hdr);

    strcat(header, "\r\n");
}

void doit(rio_t *client_rio, char *url){
    // 缓存命中, 直接返回
    if(query_cache(client_rio, url) > 0) return;

    // 开辟新空间解析url
    url_t *url_data = (url_t *)malloc(sizeof(url_t));
    if(URL_parser(url, url_data) < 0){
        fprintf(stderr, "URL parse error\n");
        return;
    }

    // 解析头
    char header_data[MAXLINE];
    header_parser(client_rio, header_data, url_data);

    // 启动链接
    int server_fd = Open_clientfd(url_data->host, url_data->port);
    if(server_fd < 0) {
        fprintf(stderr, "Connect error to %s:%s\n", url_data->host, url_data->port);
        return;
    }

    rio_t server_rio;
    Rio_readinitb(&server_rio, server_fd);

    // 准备、发送GET请求和请求头
    char buf[MAXLINE];
    sprintf(buf, "GET %s HTTP/1.0\r\n%s", url_data->path, header_data);
    Rio_writen(server_fd, buf, strlen(buf));

    // 读取响应
    char cache_object[MAX_OBJECT_SIZE];
    size_t cache_size = 0;
    size_t cache_size_tmp = 0;
    int client_fd = client_rio->rio_fd;

    while((cache_size_tmp = Rio_readlineb(&server_rio, buf, MAXLINE))){
        if(cache_size_tmp < 0){
            fprintf(stderr, "Read from server error\n");
            Close(server_fd);
            return;
        }
        // 如果小于最大限制, 存入缓存中, 以备加入缓存
        if(cache_size + cache_size_tmp < MAX_OBJECT_SIZE){
            memcpy(cache_object + cache_size, buf, cache_size_tmp);
        }
        cache_size += cache_size_tmp;
        // 发送给客户端
        Rio_writen(client_fd, buf, cache_size_tmp);
    }

    // 本次总缓存小于最大限制, 更新至缓存池中
    if(cache_size < MAX_OBJECT_SIZE){
        update_cache(cache_object, url, cache_size);
    }

    Close(server_fd);
    return;
}