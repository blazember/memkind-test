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
CMAKE_BINARY_DIR = /home/blaze/work/hazelcast/memkind-test/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/dax_kmem_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dax_kmem_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dax_kmem_test.dir/flags.make

CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.o: CMakeFiles/dax_kmem_test.dir/flags.make
CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.o: ../src/dax_kmem_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/blaze/work/hazelcast/memkind-test/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.o -c /home/blaze/work/hazelcast/memkind-test/src/dax_kmem_test.cpp

CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/blaze/work/hazelcast/memkind-test/src/dax_kmem_test.cpp > CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.i

CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/blaze/work/hazelcast/memkind-test/src/dax_kmem_test.cpp -o CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.s

# Object files for target dax_kmem_test
dax_kmem_test_OBJECTS = \
"CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.o"

# External object files for target dax_kmem_test
dax_kmem_test_EXTERNAL_OBJECTS =

../bin/dax_kmem_test: CMakeFiles/dax_kmem_test.dir/src/dax_kmem_test.cpp.o
../bin/dax_kmem_test: CMakeFiles/dax_kmem_test.dir/build.make
../bin/dax_kmem_test: ../lib/libmemkind.a
../bin/dax_kmem_test: /usr/lib/x86_64-linux-gnu/libnuma.so
../bin/dax_kmem_test: /usr/lib/x86_64-linux-gnu/libdaxctl.so
../bin/dax_kmem_test: CMakeFiles/dax_kmem_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/blaze/work/hazelcast/memkind-test/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/dax_kmem_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dax_kmem_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dax_kmem_test.dir/build: ../bin/dax_kmem_test

.PHONY : CMakeFiles/dax_kmem_test.dir/build

CMakeFiles/dax_kmem_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dax_kmem_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dax_kmem_test.dir/clean

CMakeFiles/dax_kmem_test.dir/depend:
	cd /home/blaze/work/hazelcast/memkind-test/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/blaze/work/hazelcast/memkind-test /home/blaze/work/hazelcast/memkind-test /home/blaze/work/hazelcast/memkind-test/cmake-build-release /home/blaze/work/hazelcast/memkind-test/cmake-build-release /home/blaze/work/hazelcast/memkind-test/cmake-build-release/CMakeFiles/dax_kmem_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dax_kmem_test.dir/depend

