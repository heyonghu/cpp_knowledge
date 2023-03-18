
cmake_minimum_required(VERSION 3.20)
project(server)

set(CMAKE_CXX_STANDARD 14)
find_package(Threads REQUIRED)
aux_source_directory(. DIR_LIB_SRCS)
add_executable(server ${DIR_LIB_SRCS})

# find_package(MySQL REQUIRED)
include_directories(/usr/mysql/include)
# link_directories(/usr/mysql/lib)

target_link_libraries(${PROJECT_NAME} -lmysqlclient ${CMAKE_THREAD_LIBS_INIT})
message("mmmm" ${PROJECT_NAME})
message("mmmm" ${CMAKE_THREAD_LIBS_INIT})
# message("mmmm" ${CMAKE_MYSQL_LIBS_INIT})

