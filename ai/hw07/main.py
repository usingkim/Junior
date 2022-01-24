from problem import *
from optimizer import *

def main():
    p, pType = selectProblem()
    alg = selectAlgorithm(pType)
    alg.run(p)
    p.describe()
    alg.displaySetting()
    p.report()

def selectProblem():
    print("Select the problem type:")
    print(" 1. Numerical Optimization")
    print(" 2. TSP")
    pType = int(input("Enter the number:"))
    if pType == 1:
        p = Numeric()
    elif pType == 2:
        p = Tsp()
    p.setVariables()
    return p, pType

def selectAlgorithm(pType):
    print()
    print("Select the search algorithm:")
    print(" 1. Steepest-Ascent")
    print(" 2. First-Choice")
    if pType == 1: # TSP의 경우, Gradient Descent 메뉴가 뜨지않도록 설계함
        print(" 3. Gradient Descent")

    optimizers = {  1: 'SteepestAscent()',
                    2: 'FirstChoice()',
                    3: 'GradientDescent()'}
    aType = int(input("Enter the number: "))
    if invalid(pType, aType): # 위에서 3번이 보이지 않게 설계했음에도 불구하고
        exit(0)                 # 3번 선택시, 프로그램 종료되도록
    alg = eval(optimizers[aType])
    alg.setVariables(aType, pType)
    return alg

def invalid(pType, aType):
    if pType == 2 and aType == 3:
        print('You cannot choose Gradient Descent with TSP')
        return True
    else:
        return False

main()