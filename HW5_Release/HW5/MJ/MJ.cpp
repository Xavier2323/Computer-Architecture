#include<iostream>
#include<vector>
using namespace std;
// Refernce : https://practice.geeksforgeeks.org/problems/minimum-number-of-jumps-1587115620/1?page=1&difficulty[]=1&category[]=Arrays&sortBy=submissions

//==============testcase1==============
int n = 6;
int arr[] = { 1, 4, 3, 2, 6, 7 };
//output: 2
//=====================================

//==============testcase2==============
//int n = 11;
//int arr[] = { 1, 3, 5, 8, 9, 2, 6, 7, 6, 8, 9 };
//output: 3
//=====================================

int minJumps(int arr[], int n) {

	if (n <= 1)
		return 0;

	if (arr[0] == 0)
		return -1;

	int maxReach = arr[0];

	int step = arr[0];

	int jump = 1;

	for (int i = 1; i < n; i++) {
		if (i == n - 1)
			return jump;

		maxReach = max(maxReach, i + arr[i]);


		step--;


		if (step == 0) {

			jump++;


			if (i >= maxReach)
				return -1;

			step = maxReach - i;
		}
	}

	return -1;
}
int main() {
	int temp = minJumps(arr, n);
	cout << "output: " << temp;
	return 0;
}