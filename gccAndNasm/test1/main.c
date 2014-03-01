#include<stdio.h>
extern void print_two_helloworld();

char * str = "hello world\n";
void print_helloworld()
{
	printf("%s",str);
}

int main()
{
	print_two_helloworld();
	return 0;
}
