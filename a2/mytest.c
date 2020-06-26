#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>
#include "smalloc.h"


#define SIZE 4096 * 64

void print_info();

/* This test case, tests the edge cases for both sfree and smalloc.
 * It will test smalloc on the size of a free block that is larger than the head of
 * the free list in order to check if it iterates the free list properly and smallocs correctly.
 * Afterwards it will test sfree on a pointer which does not exist within the allocated_list but is present in freelist.
 * It will smalloc all the memory in freelist.
 */

int main(void) {

    mem_init(SIZE);

    char *pointers[4];
    int i;

    printf("After initial call to mem_init()\n");
    print_info();

    pointers[0] = smalloc(200000);
    pointers[1] = smalloc(60000);
    pointers[2] = smalloc(2100);
    pointers[3] = smalloc(44);
    sfree(pointers[3]);

    write_to_mem(200000, pointers[0], 0);
    write_to_mem(60000, pointers[1], 1);
    write_to_mem(2100, pointers[2], 2);

    printf("\nsmalloc calls results:\n");
    for (i = 0; i < 4; i++) {
        printf("pointers[%d] = %p\n", i, pointers[i]);
    }



    printf("Freeing pointers\n");

    printf("Expect: 0, Actual: %d\n", sfree(pointers[1]));
    printf("Expect: 0, Actual: %d\n", sfree(pointers[2]));
    printf("Expect: -1, Actual: %d\n", sfree(pointers[3]));

    print_info();

    printf("smalloc exactly 60000 bytes to pointers[3]");
    pointers[3] = smalloc(60000);

    print_info();

    printf("\npointers:\n");
    for (i = 0; i < 4; i++) {
        printf("pointers[%d] = %p\n", i, pointers[i]);
    }

    mem_clean();

    return 0;
}
void print_info(){
    printf("\nList of allocated blocks:\n");
    print_allocated();
    printf("List of free blocks:\n");
    print_free();
}