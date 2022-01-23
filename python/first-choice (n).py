import random
import math

DELTA = 0.01   # Mutation step size
LIMIT_STUCK = 100  # Max number of evaluations enduring no improvement
NumEval = 0    # Total number of evaluations


def main():
    # Create an instance of numerical optimization problem
    p = createProblem()   # 'p': (expr, domain)
    # Call the search algorithm
    solution, minimum = firstChoice(p)
    # Show the problem and algorithm settings
    describeProblem(p)
    displaySetting()
    # Report results
    displayResult(solution, minimum)


def createProblem():
    ## Read in an expression and its domain from a file.
    ## Then, return a problem 'p'.
    ## 'p' is a tuple of 'expression' and 'domain'.
    ## 'expression' is a string.
    ## 'domain' is a list of 'varNames', 'low', and 'up'.
    ## 'varNames' is a list of variable names.
    ## 'low' is a list of lower bounds of the varaibles.
    ## 'up' is a list of upper bounds of the varaibles.

    fileName = input("Enter the file name of a function: ")

    infile = open(fileName, 'r')
    expression = infile.readline().rstrip()

    varNames = list()
    low = list()
    up = list()

    for _ in range(5):
        tmp = infile.readline().rstrip().split(",")
        # infile.readline().rstrip() 파일의 한 줄을 받아와서 오른쪽의 여백을 없애고 
        # .split(",")                ','를 기준으로 나눠서 tmp에 리스트로 저장한다.
        varNames.append(tmp[0])
        low.append(int(tmp[1]))
        up.append(int(tmp[2]))

    domain = [varNames, low, up]
    # domain은 varNames와 low, up으로 구성된 리스트이다.

    infile.close()

    return expression, domain


def firstChoice(p):
    current = randomInit(p)   # 'current' is a list of values
    valueC = evaluate(current, p)
    i = 0
    while i < LIMIT_STUCK:
        successor = randomMutant(current, p)
        valueS = evaluate(successor, p)
        if valueS < valueC:
            current = successor
            valueC = valueS
            i = 0              # Reset stuck counter
        else:
            i += 1
    return current, valueC


def randomInit(p):
    ###
    # 초기 값을 설정해주는 함수
    domain = p[1]
    low = domain[1]
    up = domain[2]

    init = [random.uniform(low[i], up[i]) for i in range(5)]
    # random모듈의 uniform 함수는 low값과 up값 사이의 실수를 return 해준다.
    # 5개의 random값을 생성해준다.
    ###
    return init    # Return a random initial point
    # as a list of values


def evaluate(current, p):
    ## Evaluate the expression of 'p' after assigning
    ## the values of 'current' to the variables
    global NumEval

    NumEval += 1
    expr = p[0]         # p[0] is function expression
    varNames = p[1][0]  # p[1] is domain: [varNames, low, up]
    for i in range(len(varNames)):
        assignment = varNames[i] + '=' + str(current[i])
        exec(assignment)
    return eval(expr)


def randomMutant(current, p):
    ###
    
    # mutate 함수에 넣어줄 값들을 random 모듈을 이용해서 설정해주는 함수
    i = random.randint(0, 4) 
    # i는 idx를 나타내므로, 0에서 4 사이의 값들 중 하나의 정수여야한다.
    d = random.sample((-1 * DELTA, DELTA), 1)[0]
    # d는 -1 * DELTA 이거나, DELTA 값 둘 중 하나여야하는데, 
    # sample 함수의 리턴값이 리스트형태이므로 [0]으로 인덱싱을 해줬다.

    ###
    return mutate(current, i, d, p)  # Return a random successor


def mutate(current, i, d, p):  # Mutate i-th of 'current' if legal
    curCopy = current[:]
    domain = p[1]        # [VarNames, low, up]
    l = domain[1][i]     # Lower bound of i-th
    u = domain[2][i]     # Upper bound of i-th
    if l <= (curCopy[i] + d) <= u:
        curCopy[i] += d
    return curCopy


def describeProblem(p):
    print()
    print("Objective function:")
    print(p[0])   # Expression
    print("Search space:")
    varNames = p[1][0]  # p[1] is domain: [VarNames, low, up]
    low = p[1][1]
    up = p[1][2]
    for i in range(len(low)):
        print(" " + varNames[i] + ":", (low[i], up[i]))


def displaySetting():
    print()
    print("Search algorithm: First-Choice Hill Climbing")
    print()
    print("Mutation step size:", DELTA)


def displayResult(solution, minimum):
    print()
    print("Solution found:")
    print(coordinate(solution))  # Convert list to tuple
    print("Minimum value: {0:,.3f}".format(minimum))
    print()
    print("Total number of evaluations: {0:,}".format(NumEval))


def coordinate(solution):
    c = [round(value, 3) for value in solution]
    return tuple(c)  # Convert the list to a tuple

main()