cmake_minimum_required(VERSION 3.20)
project(server)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
include_directories(/usr/include/mysql CGImysql http lock log threadpool timer ${CMAKE_SOURCE_DIR})

add_executable(server main.cpp webserver.cpp config.cpp http/http_conn.cpp log/log.cpp
        timer/lst_timer.cpp CGImysql/sql_connection_pool.cpp)

include_directories(/path/to/mysql/include)
link_directories(/path/to/mysql/lib)
target_link_libraries(${PROJECT_NAME} mysqlclient)
message("mmmm" ${PROJECT_NAME})