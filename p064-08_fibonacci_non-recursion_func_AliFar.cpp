// fibonacci number without using recursion
// by ►Ali Far◄

#include "stdafx.h"
#include <iostream>
using namespace std;
void fibo(int);

int main()
{
	int Num;
	cout << "Donbale Fibonachi ta marhaleye :";
	cin >> Num;
	fibo(Num);
	
	cin.ignore();
	cin.get();
	return 0;
}
void fibo(int N)
{
	int x = 1, y = 0;
	cout << (x) << '\t';
	for (int i = 0; i < N-1; i++)
	{
		if (x < y)
		{
			x = x + y;
			cout << (x) << '\t';
		}
		else
		{
			y = y + x;
			cout << (y) << '\t';
		}

	}
}
