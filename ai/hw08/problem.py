import random
import math

from setup import *

class Problem(Setup):
    def __init__(self):
        Setup.__init__(self)
        self._NumEval = 0
        self._pFileName = ''
        self._solution = []
        self._minimum = 0

    def storeResult(self, solution, minimum):
        self._solution = solution
        self._minimum = minimum
    
    def storeExpResult(self, results):
        self._bestSolution  = results[0]
        self._bestMinimum   = results[1]
        self._avgMinimum    = results[2]
        self._avgNumEval    = results[3]
        self._sumOfNumEval  = results[4]
        self._avgWhen       = results[5]

    def setVariables(self, parameters):
        Setup.setVariables(self, parameters)
        self._pFileName = parameters['pFileName']

    def describe(self):
        pass
    def report(self):
        print()
        print("Average objective value:", self._avgMinimum)
        print()
        print("Average number of evaluations:", self._avgNumEval)
        print()
        print("Best Solution found:")

    def randomInit(self):
        pass
    def evaluate(self, current):
        pass
    def randomMutant(self, current):
        pass
    def getSolution(self):
        return self._solution
    def getValue(self):
        return self._minimum
    def getNumEval(self):
        return self._NumEval

class Numeric(Problem):

    def __init__(self):
        Problem.__init__(self)
        self._domain = []
        self._expression = ''

    def setVariables(self, parameters):
        Problem.setVariables(self, parameters)
        infile = open(self._pFileName, 'r', encoding='UTF-8')
        self._expression = infile.readline().rstrip()

        varNames = list()
        low = list()
        up = list()

        line = infile.readline()
        while line != '':
            data = line.rstrip().split(",")
            varNames.append(data[0])
            low.append(float(data[1]))
            up.append(float(data[2]))
            line = infile.readline()    
        infile.close()
        self._domain = [varNames, low, up]

    def describe(self):
        print()
        print("Objective function:")
        print(self._expression)
        print()
        print("Search space:")
        varNames, low, up = self._domain[0], self._domain[1], self._domain[2]
        for i in range(len(low)):
            print(" " + varNames[i] + ":", (low[i], up[i]))

    def report(self):
        Problem.report(self)
        print(tuple([round(value, 3) for value in self.getSolution()]))
        print("Best value: {0:,.3f}".format(self.getValue()))
        print()
        print("Total number of evaluations: {0:,}".format(self._NumEval))

    def randomInit(self):
        low, up = self._domain[1], self._domain[2]
        init = [random.uniform(low[i], up[i]) for i in range(len(low))]
        return init

    def evaluate(self, current):
        self._NumEval += 1
        expr = self._expression
        varNames = self._domain[0]
        for i in range(len(varNames)):
            assignment = varNames[i] + '=' + str(current[i])
            exec(assignment)
        return eval(expr)

    def randomMutant(self, current):
        i = random.randint(0, len(current) - 1)
        d = random.sample((-1 * self._delta, self._delta), 1)[0]
        return self.mutate(current, i, d)

    def mutants(self, current):
        neighbors = list()
        for i in range(len(current)):
            neighbors.append(self.mutate(current, i, self._delta))
            neighbors.append(self.mutate(current, i, -1 * self._delta))
        return neighbors

    def mutate(self, current, i, d):
        curCopy = current[:]
        l = self._domain[1][i]
        u = self._domain[2][i]
        if l <= (curCopy[i] + d) <= u:
            curCopy[i] += d
        return curCopy

    def createNextP(self, current):         
        gred = self.getGrediant(current)
        valueS = self.evaluate(current) 
        startP = current[:]
        for i in range(len(current)):
            data = current[:]
            data[i] -= (self._delta * gred[i])
            low, up = self._domain[1], self._domain[2]
            
            if low[i] <= data[i] <= up[i]:
                valueN = self.evaluate(data)
                if valueN < valueS:
                    valueS = valueN
                    startP = data[:]
        return startP, valueS

    def getGrediant(self, currentP):
        value = []
        valueP = self.evaluate(currentP)
        for i in range(len(currentP)):
            newP = self.mutate(currentP, i, self._delta)
            value.append((self.evaluate(newP)-valueP)/self._delta)
        return value

class Tsp(Problem):
    def __init__(self):
        Problem.__init__(self)
        self._numCities = 0
        self._locations = []
        self._table = []

    def setVariables(self, parameters):
        Problem.setVariables(self, parameters)
        infile = open(self._pFileName, 'r', encoding='UTF-8')
        self._numCities = int(infile.readline().rstrip())
        self._locations = []
        line = infile.readline().rstrip()
        while line != '':
            self._locations.append(eval(line))
            line = infile.readline().rstrip()
        infile.close()
        self._table = self.calcDistanceTable()

    def calcDistanceTable(self):
        table = [[0] * self._numCities for i in range(self._numCities)]
        for i in range(self._numCities):
            for j in range(i + 1, self._numCities):
                table[i][j] = math.sqrt(math.pow(self._locations[i][0] - self._locations[j][0], 2)
                                        + math.pow(self._locations[i][1]-self._locations[j][1], 2))
                table[j][i] = table[i][j]
        return table

    def describe(self):
        print()
        print("Number of cities:", self._numCities)
        print("City locations:")
        for i in range(self._numCities):
            print("{0:>12}".format(str(self._locations[i])), end='')
            if i % 5 == 4:
                print()

    def report(self):
        print()
        print("Best order of visits:")
        for i in range(len(self._bestSolution)):
            print("{0:>5}".format(self._bestSolution[i]), end='')
            if i % 10 == 9:
                print()
        print("Minimum tour cost: {0:,}".format(round(self._minimum)))
        print()
        print("Total number of evaluations: {0:,}".format(self._NumEval))

    def randomInit(self):
        n = self._numCities
        init = list(range(n))
        random.shuffle(init)
        return init

    def evaluate(self, current):
        self._NumEval += 1

        numCites = self._numCities
        distanceTable = self._table

        cost = 0
        for i in range(numCites - 1):
            cost += distanceTable[current[i]][current[i+1]]
        cost += distanceTable[numCites-1][current[0]]

        return cost

    def randomMutant(self, current):
        while True:
            i, j = sorted([random.randrange(self._numCities)
                           for _ in range(2)])
            if i < j:
                curCopy = self.inversion(current, i, j)
                break
        return curCopy

    def inversion(self, current, i, j):
        curCopy = current[:]
        while i < j:
            curCopy[i], curCopy[j] = curCopy[j], curCopy[i]
            i += 1
            j -= 1
        return curCopy

    def mutants(self, current):
        n = self._numCities
        neighbors = []
        count = 0
        triedPairs = []
        while count <= n:
            i, j = sorted([random.randrange(n) for _ in range(2)])
            if i < j and [i, j] not in triedPairs:
                triedPairs.append([i, j])
                curCopy = self.inversion(current, i, j)
                count += 1
                neighbors.append(curCopy)
        return neighbors