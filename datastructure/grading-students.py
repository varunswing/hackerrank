import math
import os
import random
import re
import sys

def gradingStudents(grades):
    for i in range(grades_count):
        if grades[i] >= 38:
            a = grades[i] + 1
            b = grades[i] + 2
            c = a % 5
            d = c % 5
            if(a%5 == 0):
                print(a)
            elif(b%5 == 0):
                print(b)
            else:
                print(grades[i])
        else:
            print(grades[i])

grades_count = int(input().strip())

grades = []

for _ in range(grades_count):
    grades_item = int(input().strip())
    grades.append(grades_item)

result = gradingStudents(grades)
