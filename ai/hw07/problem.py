import random
import math
from setup import *

# problem.py는 이전에 제출했던 problem 파일을 그대로 사용한다.

class Problem(Setup):
    def __init__(self):
        Setup.__init__(self)
        self._solution = []
        self._minimum = 0
        self.NumEval = 0

    def storeResult(self, solution, minimum):
        self._solution = solution
        self._minimum = minimum

    def setVariables(self):
        pass
    def describe(self):
        pass
    def report(self):
        pass
    def randomInit(self):
        pass
    def evaluate(self, current):
        pass
    def randomMutant(self, current):
        pass


class Numeric(Problem):

    def __init__(self):
        Problem.__init__(self)
        self._p = []
        self._expression = ''

    def setVariables(self):
        fileName = input("Enter the file name of a function: ")
        infile = open(fileName, 'r')
        self._expression = infile.readline().rstrip()

        varNames = list()
        low = list()
        up = list()

        while True:
            tmp = infile.readline().rstrip()
            if not tmp:
                break
            tmp = tmp.split(",")
            varNames.append(tmp[0])
            low.append(int(tmp[1]))
            up.append(int(tmp[2]))

        self._p = [varNames, low, up]
        infile.close()

    def describe(self):
        print()
        print("Objective function:")
        print(self._p[0])
        print("Search space:")
        varNames = self._p[0]
        low = self._p[1]
        up = self._p[2]
        for i in range(len(low)):
            print(" " + varNames[i] + ":", (low[i], up[i]))

    def report(self):
        print()
        print("Solution found:")
        print(tuple([round(value, 3) for value in self._solution]))
        print("Minimum value: {0:,.3f}".format(self._minimum))
        print()
        print("Total number of evaluations: {0:,}".format(self.NumEval))

    def randomInit(self):
        low = self._p[1]
        up = self._p[2]

        init = [random.uniform(low[i], up[i]) for i in range(len(low))]
        return init

    def evaluate(self, current):
        self.NumEval += 1
        expr = self._expression
        varNames = self._p[0]
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
        l = self._p[1][i]
        u = self._p[2][i]
        if l <= (curCopy[i] + d) <= u:
            curCopy[i] += d
        return curCopy

    def createNextP(self, currentP):         
        g = self.getGrediant(currentP)      
        resultV = self.evaluate(currentP) 
        resultP = currentP[:]       
        for i in range(len(currentP)):
            tmpP = currentP[:]
            tmpP[i] -= (self._delta * g[i])   
            low = self._p[1]
            up = self._p[2]
            
            if low[i] <= tmpP[i] <= up[i]:
                valueN = self.evaluate(tmpP)
                if valueN < resultV:
                    resultV = valueN
                    resultP = tmpP[:]
        return resultP, resultV             

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

    def setVariables(self):
        fileName = input("Enter the file name of a TSP: ")
        infile = open(fileName, 'r')

        self._numCities = int(infile.readline())
        self._locations = []
        line = infile.readline()
        while line != '':
            self._locations.append(eval(line))
            line = infile.readline()
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
        for i in range(len(self._solution)):
            print("{0:>5}".format(self._solution[i]), end='')
            if i % 10 == 9:
                print()
        print("Minimum tour cost: {0:,}".format(round(self._minimum)))
        print()
        print("Total number of evaluations: {0:,}".format(self.NumEval))

    def randomInit(self):
        n = self._numCities
        init = list(range(n))
        random.shuffle(init)
        return init

    def evaluate(self, current):
        self.NumEval += 1

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

