# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /home/yonghu/.cache/JetBrains/RemoteDev/dist/c221e6861d714_CLion-2022.3.2/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/yonghu/.cache/JetBrains/RemoteDev/dist/c221e6861d714_CLion-2022.3.2/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data/data_yonghu/cpp_enev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/data_yonghu/cpp_enev/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/test03.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test03.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test03.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test03.dir/flags.make

CMakeFiles/test03.dir/test03.cpp.o: CMakeFiles/test03.dir/flags.make
CMakeFiles/test03.dir/test03.cpp.o: /data/data_yonghu/cpp_enev/test03.cpp
CMakeFiles/test03.dir/test03.cpp.o: CMakeFiles/test03.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data/data_yonghu/cpp_enev/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test03.dir/test03.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test03.dir/test03.cpp.o -MF CMakeFiles/test03.dir/test03.cpp.o.d -o CMakeFiles/test03.dir/test03.cpp.o -c /data/data_yonghu/cpp_enev/test03.cpp

CMakeFiles/test03.dir/test03.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test03.dir/test03.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/data_yonghu/cpp_enev/test03.cpp > CMakeFiles/test03.dir/test03.cpp.i

CMakeFiles/test03.dir/test03.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test03.dir/test03.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/data_yonghu/cpp_enev/test03.cpp -o CMakeFiles/test03.dir/test03.cpp.s

# Object files for target test03
test03_OBJECTS = \
"CMakeFiles/test03.dir/test03.cpp.o"

# External object files for target test03
test03_EXTERNAL_OBJECTS =

test03: CMakeFiles/test03.dir/test03.cpp.o
test03: CMakeFiles/test03.dir/build.make
test03: CMakeFiles/test03.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data/data_yonghu/cpp_enev/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test03"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test03.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test03.dir/build: test03
.PHONY : CMakeFiles/test03.dir/build

CMakeFiles/test03.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test03.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test03.dir/clean

CMakeFiles/test03.dir/depend:
	cd /data/data_yonghu/cpp_enev/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/data_yonghu/cpp_enev /data/data_yonghu/cpp_enev /data/data_yonghu/cpp_enev/cmake-build-debug /data/data_yonghu/cpp_enev/cmake-build-debug /data/data_yonghu/cpp_enev/cmake-build-debug/CMakeFiles/test03.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test03.dir/depend
