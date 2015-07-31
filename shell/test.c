#include<stdio.h>
#include<stdlib.h>

int main(void)
{
	char *myenv = getenv("EDITOR");
	printf("The editor environement is set to %s\n", myenv);
	return 0;
}
