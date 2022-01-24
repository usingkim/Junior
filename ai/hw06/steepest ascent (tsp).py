from problem import Tsp

def main():
    p = Tsp()
    p.setVariables()
    steepestAscent(p)
    p.describe()
    displaySetting()
    p.report()

def steepestAscent(p):
    current = p.randomInit()   # 'current' is a list of city ids
    valueC = p.evaluate(current)
    while True:
        neighbors = p.mutants(current)
        (successor, valueS) = bestOf(neighbors, p)
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

    for i in range(1, len(neighbors)):
        newValue = p.evaluate(neighbors[i])
        if newValue < bestValue:
            best = neighbors[i]    
            bestValue =  newValue 
    return best, bestValue

def displaySetting():
    print()
    print("Search algorithm: Steepest-Ascent Hill Climbing")

main()