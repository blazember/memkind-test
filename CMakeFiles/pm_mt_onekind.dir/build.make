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
CMAKE_BINARY_DIR = /home/blaze/work/hazelcast/memkind-test

# Include any dependencies generated for this target.
include CMakeFiles/pm_mt_onekind.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pm_mt_onekind.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pm_mt_onekind.dir/flags.make

CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.o: CMakeFiles/pm_mt_onekind.dir/flags.make
CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.o: src/pmem_multithreads_onekind.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/blaze/work/hazelcast/memkind-test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.o -c /home/blaze/work/hazelcast/memkind-test/src/pmem_multithreads_onekind.cpp

CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/blaze/work/hazelcast/memkind-test/src/pmem_multithreads_onekind.cpp > CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.i

CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/blaze/work/hazelcast/memkind-test/src/pmem_multithreads_onekind.cpp -o CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.s

# Object files for target pm_mt_onekind
pm_mt_onekind_OBJECTS = \
"CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.o"

# External object files for target pm_mt_onekind
pm_mt_onekind_EXTERNAL_OBJECTS =

pm_mt_onekind: CMakeFiles/pm_mt_onekind.dir/src/pmem_multithreads_onekind.cpp.o
pm_mt_onekind: CMakeFiles/pm_mt_onekind.dir/build.make
pm_mt_onekind: CMakeFiles/pm_mt_onekind.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/blaze/work/hazelcast/memkind-test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pm_mt_onekind"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pm_mt_onekind.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pm_mt_onekind.dir/build: pm_mt_onekind

.PHONY : CMakeFiles/pm_mt_onekind.dir/build

CMakeFiles/pm_mt_onekind.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pm_mt_onekind.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pm_mt_onekind.dir/clean

CMakeFiles/pm_mt_onekind.dir/depend:
	cd /home/blaze/work/hazelcast/memkind-test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/blaze/work/hazelcast/memkind-test /home/blaze/work/hazelcast/memkind-test /home/blaze/work/hazelcast/memkind-test /home/blaze/work/hazelcast/memkind-test /home/blaze/work/hazelcast/memkind-test/CMakeFiles/pm_mt_onekind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pm_mt_onekind.dir/depend

