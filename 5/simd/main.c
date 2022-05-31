#include <stdio.h>

extern void add_one_float(float arr[], size_t len);

void print_float_arr(float arr[], size_t len)
{
    printf("float arr[%ld] = { ", len);
    for (size_t i = 0; i < len; i++)
    {
        printf("%f%s ", arr[i], (i == len - 1) ? "" : ",");
    }
    printf("}\n");
}

int main(int argc, char const *argv[])
{
    float arr[] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f};
    size_t arr_len = sizeof(arr) / sizeof(arr[0]);

    print_float_arr(arr, arr_len);

    add_one_float(arr, arr_len);

    print_float_arr(arr, arr_len);

    return 0;
}
