def calculate(n, x):
    s = 0

    for i in range(len(num)):
        y=1
        for j in range(len(num)-i-1):
            y *= x
        s += y * n[i]

    return s
        

if __name__=='__main__':
    num = input().split()
    x = int(input())

    num = [int(num[i]) for i in range(len(num))]

    print(calculate(num, x))

