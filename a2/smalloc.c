#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>
#include "smalloc.h"



void *mem;
struct block *freelist;
struct block *allocated_list;

void *createNode(struct block *curr, unsigned int nbytes);
void clean(struct block *head);
int closest_divisable(int n);

void *smalloc(unsigned int nbytes) {

    // Set the current pointer.
    struct block *current_pointer = freelist;
    //Initialize the previous block.
    struct block *previous = current_pointer;

    //Make sure that the address returned by smalloc must be divisible by 8.
    nbytes = closest_divisable(nbytes);

    // Searches the freelist for a node of size >= nbytes.
    while (current_pointer != NULL && current_pointer->size < nbytes) {
        previous = current_pointer;
        current_pointer = current_pointer->next;
    }

    //Checks and exits if there is no block large enough to hold nbytes or if nbytes is equal to 0.
    if (current_pointer == NULL || nbytes == 0) {
        return NULL;
    }

    //  check for the need to split block from freelist.
    if (current_pointer->size == nbytes) {
        // No need to split.

        // check and fix the  references in freelist.
        if (previous->addr != current_pointer->addr) {
            previous->next = current_pointer->next;
        }
        else if (current_pointer->next != NULL) {
            // check if block with correct size at first node was found
            freelist = current_pointer->next;
        }
        // append current_pointer to the allocated_list head.
        current_pointer->next = allocated_list;
        allocated_list = current_pointer;

        //Checks for the case that freelist has only one node that is of size nbytes
        //in this case no memory will be available after smalloc(nbytes).
        if (allocated_list == freelist) {
            freelist = NULL;
        }
    }
    // Case where we need to split a block from freelist.
    else if (current_pointer->size > nbytes){

        //Create a new node and append to the front.
       allocated_list = createNode(current_pointer, nbytes);

        //Split a block from free list, changing address and size.
        current_pointer->addr = current_pointer->addr + nbytes;
        current_pointer->size = current_pointer->size - nbytes;
    }

    //Returns a pointer to the reserved memory.
    return allocated_list->addr;
}



int sfree(void *addr) {

    // set the node that need to be freed to head of the allocated_list.
    struct block *node_to_Free = allocated_list;

    // initialize the previous block.
    struct block *previous = node_to_Free;

    // search the allocated_list for the node with the correct address.
    while (node_to_Free != NULL && node_to_Free->addr != addr) {
        previous = node_to_Free;
        node_to_Free = node_to_Free->next;
    }

    if (!node_to_Free) {
        // no node with the correct address exists.
        return -1;
    }

    // check and fix the references in allocated_list.
    if (previous->next != node_to_Free->next) {
        previous->next = node_to_Free->next;
    } else {
        allocated_list = node_to_Free->next;
    }

    // Move node_to_Free to the correct position within freelist.
    struct block *current_pointer = freelist;
    previous = current_pointer;

    // Search for the node with smaller address.
    if (current_pointer) {
        while(current_pointer->addr < node_to_Free->addr) {
            previous = current_pointer;
            current_pointer = current_pointer->next;
        }
        node_to_Free->next = current_pointer;

        if (!previous->next) {
            // append node_to_Free to head
            if (freelist->size == 0) {
                freelist->addr = node_to_Free->addr;
                freelist->size = node_to_Free->size;
            } else {
                freelist = node_to_Free;
            }
        }
        else {
            // check if node_to_Free->next and previous are the same and append to the head of freelist
            if (node_to_Free->next == previous) {
                freelist = node_to_Free;
            }
            else {
                // modify references
                previous->next = node_to_Free;
            }
        }
    }
    else {
        node_to_Free->next = NULL;
        freelist = node_to_Free;
    }

    return 0;
}


/* Initialize the memory space used by smalloc,
 * freelist, and allocated_list
 * Note:  mmap is a system call that has a wide variety of uses.  In our
 * case we are using it to allocate a large region of memory. 
 * - mmap returns a pointer to the allocated memory
 * Arguments:
 * - NULL: a suggestion for where to place the memory. We will let the 
 *         system decide where to place the memory.
 * - PROT_READ | PROT_WRITE: we will use the memory for both reading
 *         and writing.
 * - MAP_PRIVATE | MAP_ANON: the memory is just for this process, and 
 *         is not associated with a file.
 * - -1: because this memory is not associated with a file, the file 
 *         descriptor argument is set to -1
 * - 0: only used if the address space is associated with a file.
 */
void mem_init(int size) {
    mem = mmap(NULL, size,  PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0);
    if(mem == MAP_FAILED) {
         perror("mmap");
         exit(1);
    }

    // Initialize the freelist.
    freelist = malloc(sizeof(struct block));

    // set starting address,size to the ones given by mmap.
    freelist->addr = mem;
    freelist->size = size;
    freelist->next = NULL;

    // Initialize the allocated_list as null.
    allocated_list = NULL;
        
}

void mem_clean(){

    clean(allocated_list);
    clean(freelist);
}

//====================================================================
//                          Helper functions.
//====================================================================
void *createNode(struct block *current_pointer, unsigned int nbytes) {

    // Create a new node which will be appended to the allocated_list
    struct block *node = malloc(sizeof(struct block));

    node->size = nbytes;
    node->addr = current_pointer->addr;
    node->next = allocated_list;

    return node;
}

void clean(struct block *head) {

    // set current to the head.
    struct block *current = head;
    // initialize a temporary block pointer.
    struct block *temporary;

    // free all nodes in the linked list
    while (current != NULL) {
        temporary = current->next;
        free(current);
        current = temporary;
    }
}

int closest_divisable(int n)
{
    if (n % 8 == 0){
        return n;
    }
    else {
        return (((n / 8) + 1) * 8);
    }
}