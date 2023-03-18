#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/select.h>
#include <unistd.h>

int main() {
    // 创建socket
    int lfd = socket(PF_INET, SOCK_STREAM, 0);
    struct sockaddr_in saddr;
    saddr.sin_port = htons(9999);
    saddr.sin_family = AF_INET;
    saddr.sin_addr.s_addr = INADDR_ANY;

    // 绑定
    bind(lfd, (struct sockaddr *)&saddr, sizeof(saddr));

    // 监听
    listen(lfd, 8);

    // 创建一个fd_set的集合，存放的是需要检测的文件描述符
    fd_set rdset, tmp;
    FD_ZERO(&rdset);
    printf("---------%d\n", lfd);
    FD_SET(lfd, &rdset);
    int maxfd = lfd;

    while (1) {
        tmp = rdset;
        // printf("%d %d\n", lfd, maxfd);
        // 调用select系统函数，让内核帮检测哪些文件描述符有数据
        int ret = select(maxfd + 1, &tmp, NULL, NULL, NULL);

        if (ret == -1) {
            perror("select");
            exit(-1);
        } else if (ret == 0) {
            continue;
        } else if (ret > 0) {
            // 说明检测到了有文件描述符的对应的缓冲区的数据发生了改变
            if (FD_ISSET(lfd, &tmp)) {
                // 表示有新的客户端连接进来了
                struct sockaddr_in cliaddr;
                int len = sizeof(cliaddr);
                printf("-111111111111111111111\n");
                int cfd = accept(lfd, (struct sockaddr *)&cliaddr, &len);
                printf("----------------------------------------------------\n");
                // 将新的文件描述符加入到集合中
                FD_SET(cfd, &rdset);
                // 更新最大的文件描述符
                maxfd = maxfd > cfd ? maxfd : cfd;
                printf("maxfd = %d\n", maxfd);
                fflush(stdout);
            }
            // printf("2222222222222222\n");

            for (int i = lfd + 1; i <= maxfd; i++) {
                if (FD_ISSET(i, &tmp)) {
                    // 说明这个文件描述符对应的客户端发来了数据
                    char buf[1024] = {0};
                    int len = read(i, buf, sizeof(buf));
                    if (len == -1) {
                        perror("read");
                        exit(-1);
                    } else if (len == 0) {
                        printf("client closed...\n");
                        close(i);
                        FD_CLR(i, &rdset);
                    } else if (len > 0) {
                        // printf("read buf = %s\n", buf);
                        write(i, buf, strlen(buf) + 1);
                    }
                }
            }
        }
    }
    close(lfd);
    return 0;
}
