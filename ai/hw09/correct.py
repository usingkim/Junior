from optimizer import *

class SimulatedAnnealing(MetaHeuristics):
    def __init__(self):
        MetaHeuristics.__init__(self)
        self._numSample = 100
    
    def displaySetting(self):
        print()
        print("Search Algorithm: Simulated Annealing")
        print()
        MetaHeuristics.displaySetting(self)

    def run(self, p):
        current = p.randomInit()
        valueC = p.evaluate(current)
        best, valueBest = current, valueC
        whenBestFound = i = 1
        t = self.initTemp(p)
        while True:
            t = self.tSchedule(t)
            if t == 0 or i == self._limitEval:
                break
            neighbor = p.randomMutant(current)
            valueN = p.evaluate(neighbor)
            i += 1
            dE = valueN - valueC
            if dE < 0:
                current = neighbor
                valueC = valueN
            elif random.uniform(0, 1) < math.exp(-dE/t):
                current = neighbor
                valueC = valueN
            if valueC < valueBext:
                (best, valueBest) = (current, valueC)
                whenBestFound = i
        self.whenBestFound = whenBestFound
        p.storeResult(best, valueBest)


def run(self, p):
    pop = p.initializePop(self._popSize)
    best = self.evalAndFindBest(pop, p)
    numEval = p.getNumEval()
    whenBestFound = numEval
    while numEval < self._limitEval:
        newPop = []
        i = 0
        while i < self._popSize:
            par1, par2 = self.sel
            ch1, ch2 = p.crossover(par1, par2, self,_pC)
            newPop.extend([ch1, ch2])
            i += 2
        newPop = [p.mutation(ind, self._pN) for ind in newPop]
        pop = newPop
        newBest = self.evalAndFindBest(pop, p)
        numEval = p.getNumEval()
        if newBest[0] < best[0]:
            best = newBest
            whenBestFound = numEval
    self._whenBestFound = whenBestFound
    bestSolution = p.indToSol(best)
    p.storeResult(bestSolution, best[0])

def evalAndFindBest(self, pop, p):
    best = pop[0]
    p.evalInd(best)
    bestValue = best[0]
    for i in range(1, len(pop)):
        p.evalInd(pop[i])
        newValue = pop[i][0]
        if newValue < bestValue:
            best = pop[i]
            bestValue = newValue
    return best

def selectParents(self, pop):
    ind1, ind2 = self.selectTwo(pop)
    par1 = self.binaryTourment(ind1, ind2)
    ind1, ind2 = self.selectTwo(pop)
    par2 = self.binaryTourment(ind1, ind2)
    return par1, par2

def selectTwo(self, pop):
    popCopy = pop[:]
    random.shuffle(popCopy)
    return popCopy[0], popCopy[1]

def binaryTourment(self, ind1, ind2):
    if ind1[0] < ind2[0]:
        return ind1
    else:
        return ind2

        