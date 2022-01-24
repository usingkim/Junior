def k(s):
    count = 0
    while(True):
        if(s==0):
            break
        s = s // 10
        count += 1
    return count

num = input()
l = len(num)
num = int(num)

n1 = num // 10
n2 = num % 10
    
while(True):
    num = n1 * n1 + n2 * n2
    print(num)
    k(s)
    n1 = num // 10
    n2 = num % 10
    if(num//10 == 0): break;

print(num)
