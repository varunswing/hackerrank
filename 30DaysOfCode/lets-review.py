n = int(input())

arr = []

for i in range(n):
    str = input()

    for _ in range(0, len(str)):
        if _ % 2 == 0:
            print(str[_], end="")
    print(" ", end="")

    for _ in range(0, len(str)):
        if _ % 2 != 0:
            print(str[_], end="")
    print(" ")

