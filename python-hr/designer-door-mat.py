l = int(input())
b = int(input())

c = '.|.'
f = (l-1)//2

for i in range(1, (l-1)//2):
    print((c*i).center(b, '-'))
for i in range(((l+1)//2)+1, l):
    print((c*(b-i)).center(b, '-'))
if(i==f):
    print('WELCOME'.center(b, '-'))