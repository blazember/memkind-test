# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/blaze/apps/dev/clion-2019.1.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/blaze/apps/dev/clion-2019.1.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/blaze/work/hazelcast/memkind-test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/blaze/work/hazelcast/memkind-test/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/mmap_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mmap_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mmap_test.dir/flags.make

CMakeFiles/mmap_test.dir/src/mmap_test.cpp.o: CMakeFiles/mmap_test.dir/flags.make
CMakeFiles/mmap_test.dir/src/mmap_test.cpp.o: ../src/mmap_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/blaze/work/hazelcast/memkind-test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mmap_test.dir/src/mmap_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mmap_test.dir/src/mmap_test.cpp.o -c /home/blaze/work/hazelcast/memkind-test/src/mmap_test.cpp

CMakeFiles/mmap_test.dir/src/mmap_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mmap_test.dir/src/mmap_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/blaze/work/hazelcast/memkind-test/src/mmap_test.cpp > CMakeFiles/mmap_test.dir/src/mmap_test.cpp.i

CMakeFiles/mmap_test.dir/src/mmap_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mmap_test.dir/src/mmap_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/blaze/work/hazelcast/memkind-test/src/mmap_test.cpp -o CMakeFiles/mmap_test.dir/src/mmap_test.cpp.s

# Object files for target mmap_test
mmap_test_OBJECTS = \
"CMakeFiles/mmap_test.dir/src/mmap_test.cpp.o"

# External object files for target mmap_test
mmap_test_EXTERNAL_OBJECTS =

../bin/mmap_test: CMakeFiles/mmap_test.dir/src/mmap_test.cpp.o
../bin/mmap_test: CMakeFiles/mmap_test.dir/build.make
../bin/mmap_test: CMakeFiles/mmap_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/blaze/work/hazelcast/memkind-test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/mmap_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mmap_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mmap_test.dir/build: ../bin/mmap_test

.PHONY : CMakeFiles/mmap_test.dir/build

CMakeFiles/mmap_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mmap_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mmap_test.dir/clean

CMakeFiles/mmap_test.dir/depend:
	cd /home/blaze/work/hazelcast/memkind-test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/blaze/work/hazelcast/memkind-test /home/blaze/work/hazelcast/memkind-test /home/blaze/work/hazelcast/memkind-test/cmake-build-debug /home/blaze/work/hazelcast/memkind-test/cmake-build-debug /home/blaze/work/hazelcast/memkind-test/cmake-build-debug/CMakeFiles/mmap_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mmap_test.dir/depend

