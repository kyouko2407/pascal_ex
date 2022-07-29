n = int(input(': '))
p = int(input(': '))
count = n
a = []
for i in range(1,n+1):
    a.append(i)
while count > 1:
    if p + 4 > count:
        a.pop(p + 4 - count)
    elif p + 4 < count:
        a.pop(p + 4)
    count -= 1
print(a)
