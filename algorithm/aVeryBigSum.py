import math
import os
import random
import re
import sys

def aVeryBigSum(ar):
    sum = 0
    for i in range(0, ar_count):
        sum = sum + ar[i]
    return sum

ar_count = int(input())

ar = list(map(int, input().rstrip().split()))

result = aVeryBigSum(ar)

print(str(result))
