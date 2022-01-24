import math
import random
from setup import *

class HillClimbing(Setup):
    def __init__(self):
        super().__init__()
        self._pType = 0
        self._numRestart = 0
    
    def setVariables(self, parameters):
        Setup.setVariables(self, parameters)
        self._pType = parameters['pType']
        self._numRestart = parameters['numRestart']

    def displaySetting(self):
        print("Number of random restarts:", self._numRestart)
        print()

    def run(self, p):
        pass
    
    def randomRestart(self, p):
        i = 0
        if p.getSolution() == []:
            current = p.randomInit()
            p.storeResult(current, p.evaluate(current))
        bestSolution = p.getSolution()
        bestMinimum = p.getValue()    # First result is current best
        numEval = p.getNumEval()
        while i < self._numRestart:
            self.run(p)
            newSolution = p.getSolution()
            newMinimum = p.getValue()
            numEval += p.getNumEval()
            if newMinimum < bestMinimum:
                bestSolution = newSolution
                bestMinimum = newMinimum
            i+=1
        p.storeResult(bestSolution, bestMinimum)

class SteepestAscent(HillClimbing):
    def __init__(self):
        super().__init__()
    def displaySetting(self):
        print()
        print("Search algorithm: Steepest-Ascent Hill Climbing")
        print()
        super().displaySetting()
        print("Mutation step size:", self._delta)

    def setVariables(self, parameters):
        HillClimbing.setVariables(self, parameters)
        self._pType = parameters['pType']
        self._numExp = parameters['numExp']

    def run(self, p):
        current = p.randomInit()   # 'current' is a list of city ids
        valueC = p.evaluate(current)
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
        best = neighbors[0][:]
        bestValue = p.evaluate(neighbors[0]) 
        for i in range(1, len(neighbors)):
            newValue = p.evaluate(neighbors[i])
            if newValue < bestValue:
                best = neighbors[i][:]
                bestValue =  newValue                   
        return best, bestValue
    
class FirstChoice(HillClimbing):
    def __init__(self):
        super().__init__()
    def displaySetting(self):
        print()
        print("Search algorithm: First-Choice Hill Climbing")
        print()
        super().displaySetting()
        print("Max evaluations with no improvement:", self._limitStuck)
    def setVariables(self, parameters):
        HillClimbing.setVariables(self, parameters)
        self._pType = parameters['pType']
        self._numExp = parameters['numExp']
    def run(self, p):
        current = p.randomInit()
        valueC = p.evaluate(current)
        i = 0
        while i < self._limitStuck:
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
        self._limitStuck = 0
    def displaySetting(self):
        print()
        print("Search algorithm: Gradient Descent")
        print()
        super().displaySetting()
        print("Update rate for gradient descent (alpha) :", self._alpha)
        print()
        print("Increment for calculating derivative (dx) :", self._dx)
    def setVariables(self, parameters):
        HillClimbing.setVariables(self, parameters)
        self._pType = parameters['pType']
        self._numExp = parameters['numExp']
        self._limitStuck = parameters['limitStuck']
    def run(self, p):
        currentP = p.randomInit()       
        valueC = p.evaluate(currentP) 
        i = 0
        while True:
            nextP, valueN = p.createNextP(currentP)
            if valueN >= valueC: 
                i += 1
            else:
                currentP = nextP
                valueC = valueN
                i = 0
            if i >= self._limitStuck:
                break
        p.storeResult(currentP, valueC)

class Stochastic(HillClimbing):
    def __init__(self):
        self._pType = 0
        self._numExp = 0
        self._limitStuck = 0
    def setVariables(self, parameters):
        HillClimbing.setVariables(self, parameters)
        self._pType = parameters['pType']
        self._numExp = parameters['numExp']
        self._limitStuck = parameters['limitStuck']
    def run(self, p):
        # Stochastic hill climbing generates multiple neighbors and then 
        # selects one from them at random by a probability proportional to the quality. 
        # ‘stochasticBest’ can be used for this purpose. 
        current = p.randomInit()   # 'current' is a list of city ids
        value = p.evaluate(current)
        i = 0
        while True:
            neighbors = p.mutants(current)
            bestPoint, bestValue = self.stochasticBest(neighbors, p)
            #stochasticBest 함수를 통해 구한 best 값들을 활용한다.
            if bestValue < value:
                i = 0 # implementation이 있다면, i = 0으로 계속 초기화
                value = bestValue
                current = bestPoint[:]
            else:
                i += 1 # implementation이 없는 경우, i++
            if i >= self._limitStuck:
                break
        if p.getSolution == []: # 처음 실행되는 경우, 0과 []를 return 받는 것을 방지
            p.storeResult( current, value )
        elif p.getValue() > value:
            p.storeResult( current, value )
            
    def displaySetting(self):
        print()
        print("Search algorithm: Stochastic Hill Climbing")
        print()
        super().displaySetting()
        print("Max evaluations with no improvement:", self._limitStuck)
    def stochasticBest(self, neighbors, p):
        # Smaller valuse are better in the following list
        valuesForMin = [p.evaluate(indiv) for indiv in neighbors]
        largeValue = max(valuesForMin) + 1
        valuesForMax = [largeValue - val for val in valuesForMin]
        # Now, larger values are better
        total = sum(valuesForMax)
        randValue = random.uniform(0, total)
        s = valuesForMax[0]
        for i in range(len(valuesForMax)):
            if randValue <= s: # The one with index i is chosen
                break
            else:
                s += valuesForMax[i+1]
        return neighbors[i], valuesForMin[i]

class MetaHeuristics(Setup):
    def __init__(self):
        Setup.__init__(self)
        self._pType = 0
        self._whenBestFound = 0
        self._limitEval = 0
    
    def setVariables(self,parameters):
        Setup.setVariables(self, parameters)
        self._limitEval = parameters['limitEval']

    def displaySetting(self):
        pass
    
    def run(self):
        pass

    def getWhenBestFound(self):
        return self._whenBestFound

    def displayNumExp(self):
        print()
        print('Number of experiments:', self._numExp)


class SimulatedAnnealing(MetaHeuristics):
    def __init__(self):
        MetaHeuristics.__init__(self)
        self._numSample=0
        self._bestPoint=[]
        self._bestValue=0

    def initTemp(self, p): # To set initial acceptance probability to 0.5
        diffs = []
        for _ in range(self._numSample):
            c0 = p.randomInit()     # A random point
            v0 = p.evaluate(c0)     # Its value
            c1 = p.randomMutant(c0) # A mutant
            v1 = p.evaluate(c1)     # Its value
            diffs.append(abs(v1 - v0))
        dE = sum(diffs) / self._numSample  # Average value difference
        t = dE / math.log(2)        # exp(–dE/t) = 0.5
        return t

    def tSchedule(self, t):
        return t * (1 - (1 / 10**4))

    def displaySetting(self):
        MetaHeuristics.displaySetting(self)
        print()
        print('Search algorithm: Simulated-Annealing')
        print()
        print('Limit Evaluations:', self._limitEval)

    def run(self, p):
        if p.getNumEval() >= self._limitEval:
            return
        # init # inputs problem, schedule
        current = p.randomInit()    # 초기 상태 정의
        e1 = p.evaluate(current)    # 정의된 초기상태에 대한 값
        self._numSample = len(current) # Sample의 개수
        t = self.initTemp(p)        # temperature의 초기 상태
        self._bestPoint, self._bestValue = current, e1 # 가장 작은 값을 찾아내기 위한 변수     
        
        f = open('meta.txt', 'w')
        
        # iter
        while p.getNumEval() < self._limitEval: 
            if t == 0:              # if T == 0 return current
                if p.getSolution() == [] or p.getValue() > e1:
                    p.storeResult(self._bestPoint, self._bestValue)
                return

            nextP = p.randomMutant(current) 
            # next <- randomly selected successor of current : randomMutant 함수 이용
            e2 = p.evaluate(nextP)
            f.write(str(e2)+'\n') # plot.py

            k = math.exp((e1-e2)/t)
            if k > random.uniform(0, 1):
                current, e1 = nextP[:], e2 # 다음 반복을 위해 값 바꿔주기.

            if self._bestValue > e2: # 최소값
                self._bestValue, self._bestPoint = e2, nextP
                self._whenBestFound += 1                
            
            t = self.tSchedule(t)   # T <- scheduler[t]
        f.close()
        
        # limitEval이 2 이상일 때를 위함.
        gVal = p.getValue() # p 객체에 저장된 가장 작은 값 불러오고, 비교해서 더 작으면 저장
        if (gVal != 0 and self._bestValue < gVal) or p.getSolution() == []:
            p.storeResult(self._bestPoint, self._bestValue)

class GA(MetaHeuristics):
    def __init__(self):
        MetaHeuristics.__init__(self)
        self._popSize = 0     # Population size
        self._uXp = 0   # Probability of swappping a locus for Xover
        self._mrF = 0   # Multiplication factor to 1/n for bit-flip mutation
        self._XR = 0    # Crossover rate for permutation code
        self._mR = 0    # Mutation rate for permutation code
        self._pC = 0    # Probability parameter for Xover
        self._pM = 0    # Probability parameter for mutation

    def setVariables(self, parameters):
        MetaHeuristics.setVariables(self, parameters)
        self._popSize = parameters['popSize']
        self._uXp = parameters['uXp']
        self._mrF = parameters['mrF']
        self._XR = parameters['XR']
        self._mR = parameters['mR']
        if self._pType == 1:
            self._pC = self._uXp
            self._pM = self._mrF
        if self._pType == 2:
            self._pC = self._XR
            self._pM = self._mR

    def displaySetting(self):
        print()
        print("Search Algorithm: Genetic Algorithm")
        MetaHeuristics.displaySetting(self)
        print()
        print("Population size:", self._popSize)
        if self._pType == 1:   # Numerical optimization
            print("Number of bits for binary encoding:", self._resolution)
            print("Swap probability for uniform crossover:", self._uXp)
            print("Multiplication factor to 1/L for bit-flip mutation:",
                  self._mrF)
        elif self._pType == 2: # TSP
            print("Crossover rate:", self._XR)
            print("Mutation rate:", self._mR)

    def randomNum2(self, _range):
        n = list()
        n.append(random.randint(0,_range-1))
        n.append(random.randint(0,_range-1))
        return n

    def run(self, p):
        # 1 chromosome design & 2 Initialization
        populations = p.initializePop(self._popSize)
        # 3 Fitness Evaluation
        for i in populations:            
            p.evalInd(i)
        numEval = p.getNumEval()
        smallestValue, smallestSolution = self.findSmallest(populations)
        whenBestFound = numEval

        # repeat
        while numEval < self._limitEval:
            newPop = list()
            for i in range(self._popSize):
                # 4 Random Select
                sel = self.randomNum2(self._popSize)
                # 5 CrossOver & 6 Mutation
                newPop = p.crossover(populations[sel[0]], populations[sel[1]], self._uXp)
                # 7 Update generation
                for j in range(2):
                    p.evalInd(newPop[j])
                    populations[sel[j]] = newPop[j][:]
                bestValue, bestSolution = self.findSmallest(newPop)
                i += 1
            if bestValue < smallestValue:
                smallestValue, smallestSolution = bestValue, bestSolution
                whenBestFound = numEval
            numEval = p.getNumEval()
        
        self._whenBestFound = whenBestFound           
        if p.getSolution() == [] or (p.getSolution() != [] and p.getValue() > smallestValue):
            p.storeResult(p.indToSol([smallestValue, smallestSolution]), smallestValue)

    def findSmallest(self, populations):
        bestValue = populations[0][0]
        bestIdx = 0

        for i in range(1, len(populations)):
            if populations[i][0] < bestValue:
                bestIdx = i
                bestValue = populations[i][0]
        
        return populations[bestIdx][0], populations[bestIdx][1]
            
