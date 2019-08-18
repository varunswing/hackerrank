import math
import os
import random
import re
import sys

# Complete the compareTriplets function below.
def compareTriplets(a, b):
    c = 0
    d = 0
    for i in range(0,3):
        if a[i] > b[i]:
            c = c + 1
        if a[i] < b[i]:
            d = d + 1

    return c, d

a = list(map(int, input().rstrip().split()))

b = list(map(int, input().rstrip().split()))

result = compareTriplets(a, b)
print(' '.join(map(str, result)))
