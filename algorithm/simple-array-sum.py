import os
import sys

def simpleArraySum(ar):
    sum = 0
    for i in range(0, ar_count):
        sum = sum + ar[i]
    return sum

ar_count = int(input())

ar = list(map(int, input().rstrip().split()))

result = simpleArraySum(ar)
print(result)
