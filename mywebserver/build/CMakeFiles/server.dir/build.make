# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data/data_yonghu/code_python/cpp_test/mywebserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/data_yonghu/code_python/cpp_test/mywebserver/build

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/config.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/config.cpp.o: /data/data_yonghu/code_python/cpp_test/mywebserver/config.cpp
CMakeFiles/server.dir/config.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/data_yonghu/code_python/cpp_test/mywebserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/config.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/config.cpp.o -MF CMakeFiles/server.dir/config.cpp.o.d -o CMakeFiles/server.dir/config.cpp.o -c /data/data_yonghu/code_python/cpp_test/mywebserver/config.cpp

CMakeFiles/server.dir/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/config.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data_yonghu/code_python/cpp_test/mywebserver/config.cpp > CMakeFiles/server.dir/config.cpp.i

CMakeFiles/server.dir/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/config.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data_yonghu/code_python/cpp_test/mywebserver/config.cpp -o CMakeFiles/server.dir/config.cpp.s

CMakeFiles/server.dir/http_conn.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/http_conn.cpp.o: /data/data_yonghu/code_python/cpp_test/mywebserver/http_conn.cpp
CMakeFiles/server.dir/http_conn.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/data_yonghu/code_python/cpp_test/mywebserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/http_conn.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/http_conn.cpp.o -MF CMakeFiles/server.dir/http_conn.cpp.o.d -o CMakeFiles/server.dir/http_conn.cpp.o -c /data/data_yonghu/code_python/cpp_test/mywebserver/http_conn.cpp

CMakeFiles/server.dir/http_conn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/http_conn.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data_yonghu/code_python/cpp_test/mywebserver/http_conn.cpp > CMakeFiles/server.dir/http_conn.cpp.i

CMakeFiles/server.dir/http_conn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/http_conn.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data_yonghu/code_python/cpp_test/mywebserver/http_conn.cpp -o CMakeFiles/server.dir/http_conn.cpp.s

CMakeFiles/server.dir/log.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/log.cpp.o: /data/data_yonghu/code_python/cpp_test/mywebserver/log.cpp
CMakeFiles/server.dir/log.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/data_yonghu/code_python/cpp_test/mywebserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/log.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/log.cpp.o -MF CMakeFiles/server.dir/log.cpp.o.d -o CMakeFiles/server.dir/log.cpp.o -c /data/data_yonghu/code_python/cpp_test/mywebserver/log.cpp

CMakeFiles/server.dir/log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/log.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data_yonghu/code_python/cpp_test/mywebserver/log.cpp > CMakeFiles/server.dir/log.cpp.i

CMakeFiles/server.dir/log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/log.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data_yonghu/code_python/cpp_test/mywebserver/log.cpp -o CMakeFiles/server.dir/log.cpp.s

CMakeFiles/server.dir/lst_timer.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/lst_timer.cpp.o: /data/data_yonghu/code_python/cpp_test/mywebserver/lst_timer.cpp
CMakeFiles/server.dir/lst_timer.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/data_yonghu/code_python/cpp_test/mywebserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/server.dir/lst_timer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/lst_timer.cpp.o -MF CMakeFiles/server.dir/lst_timer.cpp.o.d -o CMakeFiles/server.dir/lst_timer.cpp.o -c /data/data_yonghu/code_python/cpp_test/mywebserver/lst_timer.cpp

CMakeFiles/server.dir/lst_timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/lst_timer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data_yonghu/code_python/cpp_test/mywebserver/lst_timer.cpp > CMakeFiles/server.dir/lst_timer.cpp.i

CMakeFiles/server.dir/lst_timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/lst_timer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data_yonghu/code_python/cpp_test/mywebserver/lst_timer.cpp -o CMakeFiles/server.dir/lst_timer.cpp.s

CMakeFiles/server.dir/main.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/main.cpp.o: /data/data_yonghu/code_python/cpp_test/mywebserver/main.cpp
CMakeFiles/server.dir/main.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/data_yonghu/code_python/cpp_test/mywebserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/server.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/main.cpp.o -MF CMakeFiles/server.dir/main.cpp.o.d -o CMakeFiles/server.dir/main.cpp.o -c /data/data_yonghu/code_python/cpp_test/mywebserver/main.cpp

CMakeFiles/server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data_yonghu/code_python/cpp_test/mywebserver/main.cpp > CMakeFiles/server.dir/main.cpp.i

CMakeFiles/server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data_yonghu/code_python/cpp_test/mywebserver/main.cpp -o CMakeFiles/server.dir/main.cpp.s

CMakeFiles/server.dir/sql_connection_pool.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/sql_connection_pool.cpp.o: /data/data_yonghu/code_python/cpp_test/mywebserver/sql_connection_pool.cpp
CMakeFiles/server.dir/sql_connection_pool.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/data_yonghu/code_python/cpp_test/mywebserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/server.dir/sql_connection_pool.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/sql_connection_pool.cpp.o -MF CMakeFiles/server.dir/sql_connection_pool.cpp.o.d -o CMakeFiles/server.dir/sql_connection_pool.cpp.o -c /data/data_yonghu/code_python/cpp_test/mywebserver/sql_connection_pool.cpp

CMakeFiles/server.dir/sql_connection_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/sql_connection_pool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data_yonghu/code_python/cpp_test/mywebserver/sql_connection_pool.cpp > CMakeFiles/server.dir/sql_connection_pool.cpp.i

CMakeFiles/server.dir/sql_connection_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/sql_connection_pool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data_yonghu/code_python/cpp_test/mywebserver/sql_connection_pool.cpp -o CMakeFiles/server.dir/sql_connection_pool.cpp.s

CMakeFiles/server.dir/webserver.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/webserver.cpp.o: /data/data_yonghu/code_python/cpp_test/mywebserver/webserver.cpp
CMakeFiles/server.dir/webserver.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/data_yonghu/code_python/cpp_test/mywebserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/server.dir/webserver.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/webserver.cpp.o -MF CMakeFiles/server.dir/webserver.cpp.o.d -o CMakeFiles/server.dir/webserver.cpp.o -c /data/data_yonghu/code_python/cpp_test/mywebserver/webserver.cpp

CMakeFiles/server.dir/webserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/webserver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data_yonghu/code_python/cpp_test/mywebserver/webserver.cpp > CMakeFiles/server.dir/webserver.cpp.i

CMakeFiles/server.dir/webserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/webserver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data_yonghu/code_python/cpp_test/mywebserver/webserver.cpp -o CMakeFiles/server.dir/webserver.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/config.cpp.o" \
"CMakeFiles/server.dir/http_conn.cpp.o" \
"CMakeFiles/server.dir/log.cpp.o" \
"CMakeFiles/server.dir/lst_timer.cpp.o" \
"CMakeFiles/server.dir/main.cpp.o" \
"CMakeFiles/server.dir/sql_connection_pool.cpp.o" \
"CMakeFiles/server.dir/webserver.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

server: CMakeFiles/server.dir/config.cpp.o
server: CMakeFiles/server.dir/http_conn.cpp.o
server: CMakeFiles/server.dir/log.cpp.o
server: CMakeFiles/server.dir/lst_timer.cpp.o
server: CMakeFiles/server.dir/main.cpp.o
server: CMakeFiles/server.dir/sql_connection_pool.cpp.o
server: CMakeFiles/server.dir/webserver.cpp.o
server: CMakeFiles/server.dir/build.make
server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/data_yonghu/code_python/cpp_test/mywebserver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /data/data_yonghu/code_python/cpp_test/mywebserver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/data_yonghu/code_python/cpp_test/mywebserver /data/data_yonghu/code_python/cpp_test/mywebserver /data/data_yonghu/code_python/cpp_test/mywebserver/build /data/data_yonghu/code_python/cpp_test/mywebserver/build /data/data_yonghu/code_python/cpp_test/mywebserver/build/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend

