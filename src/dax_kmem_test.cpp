#include <memkind.h>

#include <iostream>
#include <string>
#include <unistd.h>
#include <cstring>
#include <thread>
#include <chrono>

using namespace std;
const long long GB = 1024 * 1024 * 1024;
const long long BIG = 1024 * GB;

const char *format_bytes(long long bytes, char *str);
void try_allocate_memkind(memkind_t memory_kind, const string &memory_kind_str);
void try_allocate_malloc();

int main(int argc, char **argv) {
    try_allocate_malloc();
    try_allocate_memkind(MEMKIND_DEFAULT, "DEFAULT");
    try_allocate_memkind(MEMKIND_REGULAR, "REGULAR");
    try_allocate_memkind(MEMKIND_DAX_KMEM, "DAX_KMEM");
    try_allocate_memkind(MEMKIND_DAX_KMEM_ALL, "DAX_KMEM_ALL");
    try_allocate_memkind(MEMKIND_DAX_KMEM_PREFERRED, "DAX_KMEM_PREFERRED");
}

const char *format_bytes(long long bytes, char *str) {
    const char *sizes[5] = { "B", "KB", "MB", "GB", "TB" };

    int i;
    double dblByte = bytes;
    for (i = 0; i < 5 && bytes >= 1024; i++, bytes /= 1024)
        dblByte = bytes / 1024.0;

    sprintf(str, "%.2f", dblByte);

    return strcat(strcat(str, " "), sizes[i]);
}

void try_allocate_malloc() {
    size_t size = BIG;
    char size_str[32];
    format_bytes(size, size_str);
    void *ptr = malloc(size);
    if (ptr == NULL){
        cout << "Could not allocate " << size_str << " bytes with malloc" << endl;
        return;
    }
    memset(ptr, 'A', size);
    cout << "Successfully allocated " << size_str << " byte with malloc" << endl;
    free(ptr);
    cout << "Successfully freed memory allocated with malloc" << endl;
}

void try_allocate_memkind(memkind_t memory_kind, const string &memory_kind_str) {
    size_t size = BIG;
    char size_str[32];
    format_bytes(size, size_str);
    void *ptr = memkind_malloc(memory_kind, size);
    if (ptr == NULL){
        cout << "Could not allocate " << size_str << " byte from " << memory_kind_str << " kind" << endl;
        return;
    }
    memset(ptr, 'A', size);
    cout << "Successfully allocated " << size_str << " byte from " << memory_kind_str << " kind" << endl;
    memkind_free(NULL, ptr);
    cout << "Successfully freed memory allocated from " << memory_kind_str << " kind" << endl;
}
