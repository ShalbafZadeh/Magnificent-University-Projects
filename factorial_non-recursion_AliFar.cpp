// factorial
// by ►Ali Far◄

#include "stdafx.h"
#include <iostream>
using namespace std;

int main()
{
	int cache = 1, top;
	cin >> top;
	for (int i = 1; i < top + 1; i++)
		cache = cache * i;
	cout << cache;
	
	cin.ignore();
	cin.get();
	return 0;
}