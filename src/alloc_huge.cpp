#include <cstdlib>
#include <iostream>
#include <cstring>

using namespace std;

const long long GB = 1024 * 1024 * 1024;
const long long TB1 = 1024 * GB;

void * alloc() {
    size_t size = TB1;
    void * ptr = malloc(size);
    if (ptr == NULL) {
        cout << "Could not allocate 1TB with malloc" << endl;
        return NULL;
    }
    memset(ptr, 'A', size);
    cout << "Successfully allocated 1TB with malloc " << size << endl;

    return ptr;
}

int main() {
    void *ptr = alloc();

    if (ptr != NULL) {
        free(ptr);
    }
}
