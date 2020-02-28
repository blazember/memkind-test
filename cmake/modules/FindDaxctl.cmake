find_path(DAXCTL_ROOT_DIR
        NAMES include/libdaxctl.h
        PATHS ENV DAXCTL_ROOT
        DOC "DAXCTL root directory")

find_path(DAXCTL_INCLUDE_DIR
        NAMES libdaxctl.h
        HINTS ${DAXCTL_ROOT_DIR}
        PATH_SUFFIXES include
        DOC "DAXCTL include directory")

find_library(DAXCTL
        NAMES daxctl
        HINTS ${DAXCTL_ROOT_DIR}
        DOC "DAXCTL library")
