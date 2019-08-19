
import math
import os
import random
import re
import sys

# Complete the miniMaxSum function below.
def miniMaxSum(arr):
    sum = 0
    for i in range(4):
        for i in range(4):
            if arr[i] > arr[i+1]:
                c = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = c
    for i in range(5):
        sum += arr[i]
    a = sum - arr[0]
    b = sum - arr[4]
    result = a, b
    print(' '.join(map(str, result)))

arr = list(map(int, input().rstrip().split()))

miniMaxSum(arr)

