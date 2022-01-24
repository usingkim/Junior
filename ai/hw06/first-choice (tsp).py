from problem import Tsp

def main():
    p = Tsp()
    p.setVariables()
    firstChoice(p)
    p.describe()
    displaySetting()
    p.report()

def firstChoice(p):
    current = p.randomInit()
    valueC  = p.evaluate(current)
    i = 0
    while i < p.getLIMIT_STUCK():
        successor = p.randomMutant(current)
        valueS = p.evaluate(successor)
        if valueS < valueC:
            current = successor
            valueC = valueS
            i = 0
        else:
            i += 1
    p.setSolution(current)
    p.setMin(valueC)

def displaySetting():
    print()
    print("Search algorithm: First-Choice Hill Climbing")

main()