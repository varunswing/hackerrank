import math
import os
import random
import re
import sys

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr):
    sum = 0
    sum1 = 0
    sum2 = 0
    for i in range(n):
        sum1 = sum1 + arr[i][i] # Way to access element of list in array
        sum2 = sum2 + arr[i][(n-1)-i]
    sum = sum2 - sum1
    if sum < 0:
        sum = sum * -1
    return sum

n = int(input().strip())

arr = []

for _ in range(n):
    arr.append(list(map(int, input().rstrip().split()))) # Way to take 2D array as input

result = diagonalDifference(arr)

print(str(result))

