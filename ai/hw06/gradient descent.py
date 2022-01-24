from problem import Numeric

def main():
    p = Numeric()
    p.setVariables()
    gradientDescent(p)
    p.describe()
    displaySetting(p)
    p.report()

def gradientDescent(p):
    currentP = p.randomInit()       # 임의의 시작 점 선택
    valueC = p.evaluate(currentP)   # 시작 점 value 구함 
    while True:
        nextP, valueN = p.createNextP(currentP)
        if valueN >= valueC:        # step 3 update
            break
        else:
            currentP = nextP
            valueC = valueN
    p.setSolution(currentP)
    p.setMin(valueC)
    
def displaySetting(p):
    print()
    print("Search algorithm: Gradient Descent")
    print()
    print("Learning Rate:", p.getDELTA())

main()