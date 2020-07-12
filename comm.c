#include <stdio.h>

int getInt();


int  getMid()
{
	int s = 0;
	int e = 120;
	int mid = (s+e)/2;

	while(s>e)
	{
		s = mid;
		e = e;
		mid = (s+e)/2;
	}
}

struct st {
  int a;
  int b;
  int c;
  int d;
};

int main(int argc, char *argv[])
{

	int num = 222;
	printf("%s\n", "hello world");
	printf("%d\n", num);

  	return 0;
}


int getInt()
{
	return 0;
}
