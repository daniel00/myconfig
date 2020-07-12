#include <stdio.h>


int arr[100] = {0,};

void testfunc1()
{
	printf("hello world");
}

void testfunc2()
{
	printf("hello world");
	scanf("");
}

void testfunc3()
{

}

int main()
{
	for (int i = 0; i < 100		; ++i) 
	{
		arr[i]=i+1;
		printf("%d\n", arr[i]);
	}

	for (size_t cnt = 0; cnt < 123; cnt++)
	{
		printf("hello world");
		printf("this is unaligned string");
	}

}
