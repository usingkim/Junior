############ 별 찍기 입니다. #############

s = int(input("별찍기 : "))

def star(n):
    for i in range(n):
        for j in range(i+1):
            print("*", end="")
        print()

def reverse_star(n):
    for i in range(n, 0, -1):
        for j in range(i):
            print("*", end="")
        print()

def r_star(n):
    for i in range(n):
        for j in range(n, i+1, -1):
            print(" ", end="")
        for j in range(i+1):
            print("*", end="")
        print()

def r_star_r(n):
    for i in range(n, 0, -1):
        for j in range(n-i):
            print(" ", end="")
        for j in range(i):
            print("*", end="")
        print()

def tri_star(n):
    for i in range(n):
        for j in range(n, i+1, -1):
            print(" ", end="")
        for j in range(2*i+1):
            print("*", end="")
        print()

def re_tri_star(n):
    for i in range(n, 0, -1):
        for j in range(n, i, -1):
            print(" ", end="")
        for j in range(2*i-1):
            print("*", end="")
        print()


star(s)
print("#######################")
reverse_star(s)
print("#######################")
r_star(s)
print("#######################")
r_star_r(s)
print("#######################")
tri_star(s)
print("#######################")
re_tri_star(s)
