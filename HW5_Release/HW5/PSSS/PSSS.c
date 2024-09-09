#include <stdio.h>
#include <stdlib.h>

//Reference: https://www.geeksforgeeks.org/print-sums-subsets-given-set/

//==============testcase1==============
int arr[] = { 5, 4, 3 };
int n = 3;
//output: 12 9 8 5 7 4 3 0
//=====================================

//==============testcase2==============
//int arr[] = {2, 3};
//int n = 2;
//output: 5 2 3 0
//=====================================

// Prints sums of all subsets of arr[l..r]
void subsetSums(int arr[], int l, int r, int sum)
{
    // Print current subset
    if (l > r) {
        printf("%d ",sum);
        return;
    }

    // Subset including arr[l]
    subsetSums(arr, l + 1, r, sum + arr[l]);

    // Subset excluding arr[l]
    subsetSums(arr, l + 1, r, sum);
}

// Driver code
int main()
{
    printf("output: ");
    subsetSums(arr, 0, n - 1,0);
    return 0;
}
