#include <stdio.h>

int recur(int n)
{
   if (n==1)
		return 1;
   else
		return recur(n-1)*n;
}

int main(void) {
	int sum = recur(10);
	printf("%d", sum);
	return 0;
}
