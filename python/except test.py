'''class Point:
    def __init__(self, other):
        self.value = other
    def result(self, other):
        return self.value + other'''
        
    

if __name__ == '__main__':
    op = input().split()
    try:
        op = [int(op[i]) for i in range(len(op))]
        c = op[0]/op[1]
    except ValueError as k:
        print(f"{k} except!")
    except ZeroDivisionError:
        print("Zero except!")
    else:
        print(c)
    finally:
        print("program is the end!")
    raise ('what')

    '''s = 30
    
    p1 = Point(19)
    p2 = Point(27)

    print(p1.result(s), p2.result(s))'''

    
    
    
