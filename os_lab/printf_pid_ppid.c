#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
    printf(" my pid is %d \n", getpid()); 
    printf(" my parentid pid is %d \n", getppid()); 
    return 0;
}
