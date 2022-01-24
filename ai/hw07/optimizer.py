from setup import *

LIMIT_STUCK = 100

class HillClimbing(Setup):
    def __init__(self):
        super().__init__()
        self._limitStuck = 100
        self._aType = ''
        self._pType = ''
    
    def setVariables(self, aType, pType):
        self._aType = aType
        self._pType = pType

    def displaySetting(self):
        if self._aType == 1 or self._aType == 2:
            print("Mutation step size:", self._delta)
        elif self._aType == 3:
            print("Update Rate:", self._alpha)
            print("Increment for calculating derivatives:", self._dx)
        
    def run(self):
        pass

class SteepestAscent(HillClimbing):
    def __init__(self):
        super().__init__()
    def displaySetting(self):
        print()
        print("Search algorithm: Steepest-Ascent Hill Climbing", '(', self._pType, ')')
        print()
        super().displaySetting()
    def setVariables(self, aType, pType):
        self._aType = 1 
        if pType == 1:
            self._pType = 'Numerical Optimization'
        else:
            self._pType = 'TSP'
    def run(self, p):
        current = p.randomInit()
        valueC = p.evaluate(current)
        p.mutants(current)  
        while True:
            neighbors = p.mutants(current)
            successor, valueS = self.bestOf(neighbors, p)
            if valueS >= valueC:
                break
            else:
                current = successor
                valueC = valueS
        p.storeResult(current, valueC)
    def bestOf(self, neighbors, p):
        best = neighbors[0]
        bestValue = p.evaluate(neighbors[0]) 
        for i in range(1, 10):
            tmpValue = p.evaluate(neighbors[i])
            if bestValue > tmpValue: 
                bestValue = tmpValue
                best = neighbors[i]                   
        return best, bestValue

    
class FirstChoice(HillClimbing):
    def __init__(self):
        super().__init__()
    def displaySetting(self):
        print()
        print("Search algorithm: First-Choice Hill Climbing", '(', self._pType, ')')
        print()
        super().displaySetting()
    def setVariables(self, aType, pType):
        self._aType = 2
        if pType == 1:
            self._pType = 'Numerical Optimization'
        else:
            self._pType = 'TSP'
    def run(self, p):
        current = p.randomInit()
        valueC = p.evaluate(current)
        i = 0
        while i < LIMIT_STUCK:
            successor = p.randomMutant(current)
            valueS = p.evaluate(successor)
            if valueS < valueC:
                current = successor
                valueC = valueS
                i = 0  
            else:
                i += 1
        p.storeResult(current, valueC)

class GradientDescent(HillClimbing):
    def __init__(self):
        super().__init__()
    def displaySetting(self):
        print()
        print("Search algorithm: Gradient Descent")
        print()
        super().displaySetting()
    def setVariables(self, aType, pType):
        self._aType = 3
        self._pType = 'Numerical Optimization'
    def run(self, p):
        currentP = p.randomInit()       
        valueC = p.evaluate(currentP) 
        while True:
            nextP, valueN = p.createNextP(currentP)
            if valueN >= valueC: 
                break
            else:
                currentP = nextP
                valueC = valueN
        p.storeResult(currentP, valueC)