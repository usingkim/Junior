n = int(input())
m = int(input())

def horizontal(x):
    print("+---" * x, end="")
    print("+")

def Vertical(x):
    print("|   " * (x), end="")
    print("|")
    
def Rectangle(x,y):
    for i in range(x):
        horizontal(y)
        Vertical(y)
    horizontal(y)

Rectangle(n, m)

