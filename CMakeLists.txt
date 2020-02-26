cmake_minimum_required(VERSION 3.14)
project(memkind_test)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake/modules)
set(CMAKE_BINARY_DIR ${CMAKE_CURRENT_LIST_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(CMAKE_CXX_STANDARD 11)
set(THREADS_PREFER_PTHREAD_FLAG ON)

find_library(MEMKIND memkind lib)
find_library(PMEM pmem lib)
find_library(VMEM vmem lib)

find_package(Threads REQUIRED)
find_package(Numa REQUIRED)

include_directories(lib)

add_executable(pmem_vistest src/pmem_vistest.cpp)
target_link_libraries(pmem_vistest LINK_PUBLIC ${MEMKIND} ${PMEM} ${VMEM} ${NUMA} ${CMAKE_DL_LIBS} Threads::Threads)

add_executable(vmem_vistest src/vmem_vistest.cpp)
target_link_libraries(vmem_vistest LINK_PUBLIC ${MEMKIND} ${PMEM} ${VMEM} ${NUMA} ${CMAKE_DL_LIBS} Threads::Threads)
