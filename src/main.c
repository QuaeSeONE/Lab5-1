#include <stdio.h>
#include "sqr.h"

int main() {
	double a, b, c, x1, x2;
	char flag;
	printf ("Input a, b, c:\n");
	scanf ("%lf %lf %lf", &a, &b, &c);
	flag = sqr (a, b, c, &x1, &x2);
	if (flag == 0) 
		printf ("Answer: x1 = %.1lf, x2 = %.1lf\n", x1, x2);
	else 
		printf ("Error! There is no solution\n");
	return 0;
}
