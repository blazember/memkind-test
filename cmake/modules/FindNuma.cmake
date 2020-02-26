find_path(NUMA_ROOT_DIR
        NAMES include/numa.h
        PATHS ENV NUMA_ROOT
        DOC "NUMA root directory")

find_path(NUMA_INCLUDE_DIR
        NAMES numa.h
        HINTS ${NUMA_ROOT_DIR}
        PATH_SUFFIXES include
        DOC "NUMA include directory")

find_library(NUMA
        NAMES numa
        HINTS ${NUMA_ROOT_DIR}
        DOC "NUMA library")
