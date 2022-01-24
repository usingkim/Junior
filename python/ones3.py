## format(7, 'b')

def count(n1, n2, m):

    binary = [format(i, 'b') for i in range(n1, n2+1)]
    print(binary)
    result = 0
    
    for i in range(len(binary)):
        for j in range(len(binary[i])):
            if binary[i][j] == m[0]:
                c = 1
                for k in range(1, len(m)):
                    if j + k < len(binary[i]) and binary[i][j+k] == m[k]:
                        c+=1
                    else:
                        break
                if(c == len(m)):
                    result += 1
                    print(binary[i])

    return result

if '__main__' == __name__:
    n1, n2 = input().split()
    ## n1부터 n2까지의 수들
    d = input()
    
    print(count(int(n1), int(n2), format(int(d), 'b')))
    
    

    
