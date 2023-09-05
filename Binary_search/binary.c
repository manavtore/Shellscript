#include <stdio.h>
 
// An iterative binary search function.
int binarySearch(int arr[], int l, int r, int x)
{
    while (l <= r) {
        int m = l + (r - l) / 2;
 
        // Check if x is present at mid
        if (arr[m] == x)
            return m;
 
        // If x greater, ignore left half
        if (arr[m] < x)
            l = m + 1;
 
        // If x is smaller, ignore right half
        else
            r = m - 1;
    }
 
    // If we reach here, then element was not present
    return -1;
}
 
// Driver code
int main(int argc, char *argv[])
{
    const char *str = argv[1];
    printf("%s", str);
    printf("\n");
    int arr[8];
    int numread = sscanf(str, "%d %d %d %d %d %d %d %d ", &arr[0], &arr[1], &arr[2], &arr[3], &arr[4], &arr[5], &arr[6], &arr[7]);
    int n = sizeof(arr) / sizeof(arr[0]);
    int x;
    printf("Enter Element to Search for : ");
    scanf("%d", &x);
    int result = binarySearch(arr, 0, n - 1, x);
    (result == -1) ? printf("Element is not present"
                            " in array")
                   : printf("Element is present at "
                            "index %d",
                            result);
    return 0;
}
