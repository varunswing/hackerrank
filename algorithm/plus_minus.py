
import math
import os
import random
import re
import sys

# Complete the plusMinus function below.
def plusMinus(arr):
    m = 0
    p = 0
    z = 0
    for i in range(n):
        if arr[i] < 0:
            m = m + 1
        else:
            if arr[i] > 0:
                p = p + 1
            else:
                if arr[i] == 0:
                    z = z + 1
    p=p/n
    m=m/n
    z=z/n
    round(p,6)
    round(m,6)
    round(z,6)
    print(p)
    print(m)
    print(z)
        
n = int(input())

arr = list(map(int, input().rstrip().split()))

plusMinus(arr)
