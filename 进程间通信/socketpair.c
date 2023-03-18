#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    int sv[2];
    pid_t pid;

    // 创建一对已连接的套接字
    if (socketpair(AF_UNIX, SOCK_STREAM, 0, sv) == -1) {
        perror("socketpair");
        exit(EXIT_FAILURE);
    }

    // 创建子进程
    pid = fork();

    if (pid == -1) {
        perror("fork");
        exit(EXIT_FAILURE);
    } else if (pid == 0) {
        // 子进程
        // close(sv[0]);  // 关闭父进程套接字
        char buf[1024];
        strcpy(buf, "Hello, parent process!");
        if (send(sv[1], buf, strlen(buf) + 1, 0) == -1) {
            perror("send");
            exit(EXIT_FAILURE);
        }
        exit(EXIT_SUCCESS);
    } else {
        // 父进程
        // close(sv[1]);  // 关闭子进程套接字
        char buf[1024];
        if (recv(sv[0], buf, sizeof(buf), 0) == -1) {
            perror("recv");
            exit(EXIT_FAILURE);
        }
        printf("Received message from child process: %s\n", buf);
    }

    return 0;
}