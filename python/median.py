def avg_even(num): ##평균값
    l = len(num) // 2
    num.sort()
    
    return (num[l]+num[l-1])/2

def avg_odd(num):
    l = len(num) // 2
    num.sort()
    return num[l]

if __name__=="__main__":
    num = input().split()

    for i in range(len(num)):
        num[i] = float(num[i])

    if len(num) % 2 == 0:
        result = avg_even(num)
    else:
        result = avg_odd(num)

    print(f"{result:.1f}")
