import math
import os
import random
import re
import sys

# Complete the solve function below.
def solve(meal_cost, tip_percent, tax_percent):
    total_cost = meal_cost + ((tip_percent*meal_cost)/100) + ((tax_percent*meal_cost)/100)
    print(round(total_cost))
    

meal_cost = float(input())

tip_percent = int(input())

tax_percent = int(input())

solve(meal_cost, tip_percent, tax_percent)
