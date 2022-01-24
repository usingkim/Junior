from problem import Numeric

def main():
    p = Numeric()
    p.setVariables()
    steepestAscent(p)
    p.describe()
    displaySetting(p)
    p.report()

def steepestAscent(p):
    current = p.randomInit()
    valueC = p.evaluate(current)
    p.mutants(current)  
    while True:
        neighbors = p.mutants(current)
        successor, valueS = bestOf(neighbors, p)
        if valueS >= valueC:
            break
        else:
            current = successor
            valueC = valueS
    p.setSolution(current)
    p.setMin(valueC)

def bestOf(neighbors, p):
    best = neighbors[0]
    bestValue = p.evaluate(neighbors[0]) 
    for i in range(1, 10):
        tmpValue = p.evaluate(neighbors[i])
        if bestValue > tmpValue: 
            bestValue = tmpValue
            best = neighbors[i]                   
    return best, bestValue

def displaySetting(p):
    print()
    print("Search algorithm: Steepest-Ascent Hill Climbing")
    print()
    print("Mutation step size:", p.getDELTA())

main()