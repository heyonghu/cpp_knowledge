#include "config.h"
#include "string"
int main(int argc, char *argv[])
{
    //需要修改的数据库信息,登录名,密码,库名
    std::string user = "root";
    std::string passwd = "123456";
    std::string databasename = "yourdb";

    //命令行解析
    Config config;
    config.parse_arg(argc, argv);

    WebServer server;
    printf("1111111111111111\n");
    //初始化
    server.init(config.PORT, user, passwd, databasename, config.LOGWrite, 
                config.OPT_LINGER, config.TRIGMode,  config.sql_num,  config.thread_num, 
                config.close_log, config.actor_model);
    
    printf("1111111111111111\n");
    //日志
    server.log_write();
    printf("1111111111111111\n");

    //数据库
    server.sql_pool();
    printf("1111111111111111\n");

    //线程池
    server.thread_pool();
    printf("1111111111111111\n");

    //触发模式
    server.trig_mode();
    printf("1111111111111111\n");

    //监听
    server.eventListen();
    printf("1111111111111111\n");

    //运行
    server.eventLoop();
    printf("1111111111111111\n");

    return 0;
}