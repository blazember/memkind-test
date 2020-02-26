#include <memkind.h>
#include <libpmem.h>

#include <iostream>
#include <string>
#include <unistd.h>
#include <climits>
#include <cstring>

using namespace std;

static char path[PATH_MAX]="/tmp/";
static const size_t PMEM_PART_SIZE = MEMKIND_PMEM_MIN_SIZE + 4 * 1024;

static void print_err_message(int err)
{
    char error_message[MEMKIND_ERROR_MESSAGE_SIZE];
    memkind_error_message(err, error_message, MEMKIND_ERROR_MESSAGE_SIZE);
    fprintf(stderr, "%s\n", error_message);
}

int main(int argc, char **argv) {
    const string hello_world = "hello world";
    struct memkind *pmem_kind = NULL;
    int err = 0;

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
    mapped_addr = pmem_map_file(file_path.c_str(), (size_t) PMEM_PART_SIZE, PMEM_FILE_CREATE, 0666, &mapped_len, &is_pmem);

    if (mapped_addr == NULL) {
        cout << "Could not map file with libpmem. Mapped len is " << mapped_len << endl;
        cout << pmem_errormsg();
        return 1;
    }
    cout << "Mapped file with libpmem. Mapped len is " << mapped_len << endl << "Unmapping the file" << endl;
    pmem_unmap(mapped_addr, mapped_len);

    string is_pmem_str = is_pmem ? "true" : "false";

    cout << "The used path \"" << path << "\" is PMEM? " << is_pmem_str << " " << is_pmem << endl;


    err = memkind_create_pmem(path, PMEM_PART_SIZE, &pmem_kind);
    if (err) {
        print_err_message(err);
        return 1;
    }

    char *ptr = static_cast<char *>(memkind_malloc(pmem_kind, hello_world.size()));

    strcpy(ptr, hello_world.c_str());

    string kind_type_str;
    memkind_t kind_type = memkind_detect_kind(ptr);

    if (kind_type == MEMKIND_DEFAULT) {
        kind_type_str = "DRAM";
    } else {
        kind_type_str = "PMEM";
    }

    cout << "Created " << kind_type_str << " kind and wrote \""<< hello_world<< "\" there" << endl << "<press any key to continue>"<< flush;
    cin.get();

    memkind_free(pmem_kind, ptr);

    err = memkind_destroy_kind(pmem_kind);
    if (err) {
        print_err_message(err);
        return 1;
    }

    cout << "Memory was successfully released." << endl;

    cout << "Testing DAX_KMEM mode " << endl << "<press any key to test>"<< flush;
    cin.get();

    char *ptr2 = static_cast<char *>(memkind_malloc(MEMKIND_DAX_KMEM, hello_world.size()));

    if (ptr2 == NULL){
        cout << "Could not allocate DAX_KMEM kind memory" << endl;
        return 1;
    }

    kind_type = memkind_detect_kind(ptr2);

    if (kind_type == MEMKIND_DAX_KMEM) {
        kind_type_str = "DAX_KMEM";
    } else {
        kind_type_str = "NOT DAX_KMEM";
    }

    cout << "Created " << kind_type_str << " kind" << endl << "<press any key to exit>" << endl << flush;
    memkind_free(MEMKIND_DAX_KMEM, ptr);
    cout << "Memory was successfully released." << endl;
}
