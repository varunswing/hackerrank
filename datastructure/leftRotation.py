import math
import os
import random
import re
import sys


nd = input().split()

n = int(nd[0])

d = int(nd[1])

a = list(map(int, input().rstrip().split()))

b = {}

for i in range (n):
    if(i-d >= 0):
        b[i-d] = a[i]
    else:
        b[n+(i-d)] = a[i]

for i in range(n):
    print(b[i], end=" ")

