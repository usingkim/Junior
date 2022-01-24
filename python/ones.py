if __name__ == "__main__":
    o1, o2 = input().split()
    o1 = int(o1)
    o2 = int(o2)

    d = int(input())
    d = format(d, 'b')
    d = int(d)

    count = 0
    ope = [op for op in range(o1, o2+1)]

    for i in ope:
        i = format(i, 'b')
        i = int(i)
        i = i / d
        i = str(i)
        count += i.count('1')
        
    print(count)  

    


