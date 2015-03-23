#include <stdio.h>
#include <linux/kernel.h>
#include <sys/syscall.h>
#include <unistd.h>
int main() 
{
	long int text = syscall(545);
	printf("System call sys_hello returned %ld\n", text);
	return 0;
}
