#include <stdio.h>
#include "bmp.h"

#define inNum 2
#define inNameLen 14
#define outNum 2
#define outNameLen 12

char inNames[inNum][inNameLen] = {"../input1.bmp", "../input2.bmp"};
char outNames[outNum][outNameLen] = {"output1.bmp", "output2.bmp"};
bmp files[outNum];

int main()
{
	int i;

	for(i = 0; i < inNum; i++)
		bmpRead(inNames[i], &files[i]);

	for(i = 0; i < outNum; i++)
		bmpWrite(outNames[i], &files[i]);

	return 0;
}
