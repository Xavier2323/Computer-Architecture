#include <iostream>

using namespace std;
//Reference: https://www.geeksforgeeks.org/find-number-of-triangles-possible/

//===============testcase1=======================
int arr[] = { 10, 21, 22, 100, 101, 200, 300 };
int n = 7;
//output: Total number of triangles possible is 6
//================================================

//===============testcase2========================
//int arr[] = {4, 6, 3, 7};
//int n = 4;
//output: Total number of triangles possible is 3
//================================================

// Function to count all possible triangles with arr[] elements
int findNumberOfTriangles(int arr[], int n)
{
    // Count of triangles
    int count = 0;

    // The three loops select three different values from
    // array
    for (int i = 0; i < n; i++) {
        for (int j = i + 1; j < n; j++) {
            // The innermost loop checks for the triangle property
            for (int k = j + 1; k < n; k++)
                // Sum of two sides is greater than the third
                if (arr[i] + arr[j] > arr[k]
                    && arr[i] + arr[k] > arr[j]
                    && arr[k] + arr[j] > arr[i])
                    count++;
        }
    }
    return count;
}

int main()
{
    // Function call
    int answer = findNumberOfTriangles(arr, n);
    cout << "output: Total number of triangles possible is " << answer;
    return 0;
}
