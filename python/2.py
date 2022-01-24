n, m = input().split()
n = int(n)
m = int(m)


def row(i):
    print("|   " *(i+1))

    
def column(i):  
    print("+---" * i , end="")
    print("+")

def Rect(i, j):
    for k in range(i):
        column(j)
        row(j)
    column(j)

Rect(n, m)
