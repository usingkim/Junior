from problem import Numeric

def main():
    p = Numeric()
    p.setVariables()
    firstChoice(p)
    p.describe()
    displaySetting(p)
    p.report()

def firstChoice(p):
    current = p.randomInit()
    valueC = p.evaluate(current)
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

def displaySetting(p):
    print()
    print("Search algorithm: First-Choice Hill Climbing")
    print()
    print("Mutation step size:", p.getDELTA())

main()