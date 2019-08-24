import math
import os
import random
import re
import sys

arr = []
s = []
sum = []
max = -50

for _ in range(6):
    arr.append(list(map(int, input().rstrip().split())))

for i in range(4):
    for j in range(4):
        a = arr[i][j]+arr[i][j+1]+arr[i][j+2]+arr[i+1][j+1]+arr[i+2][j]+arr[i+2][j+1]+arr[i+2][j+2]
        s.append(a)

for i in range(16): 
    if s[i] > max: 
        max = s[i] 

print(max)
