#include <libpmem.h>
#include <libvmem.h>

#include <iostream>
#include <string>
#include <unistd.h>
#include <climits>
#include <cstring>

using namespace std;

static char path[PATH_MAX]="/tmp/";
static const size_t PMEM_PART_SIZE = 1024 * 1024 * 16;

struct persistent_memory_heap {
    void* mapped_addr;
    size_t mapped_len;
    int is_pmem;
    VMEM* vmp;
};

int main(int argc, char **argv) {
    const string hello_world = "hello world";

    if (argc > 2) {
        fprintf(stderr, "Usage: %s [pmem_kind_dir_path]\n", argv[0]);
        return 1;
    } else if (argc == 2 && (realpath(argv[1], path) == NULL)) {
        fprintf(stderr, "Incorrect pmem_kind_dir_path %s\n", argv[1]);
        return 1;
    }

    fprintf(stdout,
            "This example shows how to use memkind_free with unknown kind as a parameter.\n");


    string file_name = "/test.tst";
    string file_path = path + file_name;
    int is_pmem;
    size_t mapped_len = 0;
    void* mapped_addr;
    mapped_addr = pmem_map_file(file_path.c_str(), (size_t) PMEM_PART_SIZE, PMEM_FILE_CREATE|PMEM_FILE_EXCL, 0666, &mapped_len, &is_pmem);

    if (mapped_addr == NULL) {
        cout << "Could not map file with libpmem. Mapped len is " << mapped_len << endl;
        cout << pmem_errormsg();
        return 1;
    }
    cout << "Mapped file with libpmem. Mapped len is " << mapped_len << endl << "Unmapping the file" << endl;

    VMEM* vmp = vmem_create_in_region(mapped_addr, mapped_len);
    if (vmp == NULL) {
        cout << "Could not map create a region with libvmem." << endl;
        pmem_unmap(mapped_addr, mapped_len);
        return 1;
    }

    char* p = static_cast<char *>(vmem_malloc(vmp, (size_t) hello_world.size()));
    strcpy(p, hello_world.c_str());

    cout << "Allocated persistent memory with libvmem and wrote \""<< hello_world<< "\" there" << endl << "<press any key to continue>"<< flush;
    cin.get();

    cout << p << endl;

    vmem_free(vmp, p);
    pmem_unmap(mapped_addr, mapped_len);

    cout << "Memory was successfully released." << endl;
}
