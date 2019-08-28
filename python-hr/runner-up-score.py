n = int(input())
arr = list(map(int, input().split()))

for i in range(n-1):
    for i in range(n-1):
        if(arr[i] > arr[i+1]):
            c = arr[i]
            arr[i] = arr[i+1]
            arr[i+1] = c

for i in range(n):
    if(arr[n-1] > arr [n-i-1]):
        print(arr[n-i-1])
        break
