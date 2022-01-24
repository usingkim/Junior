import random
import math


class Problem:

    # Numeric 클래스와 Tsp 클래스에서 사용
    LIMIT_STUCK = 100
    NumEval = 0

    # 두 class 모두 solution 리스트와 minimum 값을 구하는 클래스이므로,
    # parent class 에서 정의함.
    def __init__(self, solution=[], minimum=0):
        self._solution = solution
        self._minimum = minimum

    # LIMIT_STUCK 값을 얻기 위함
    def getLIMIT_STUCK(self):
        return self.LIMIT_STUCK

    # 각각 solution 값과 minimum 값을 얻기 위함
    def setSolution(self, solution):
        self._solution = solution

    def setMin(self, minimum):
        self._minimum = minimum

    # 하위 6개의 함수 : Numeric 클래스와 Tsp 클래스에서 오버라이딩
    # 임의로 함수 내부 채워넣음.
    def setVariables(self):
        print("Problem Class")

    def describe(self):
        print()

    def report(self):
        print()

    def randomInit(self):
        return random.randint(1, 5)

    def evaluate(self, current):
        sum(current)

    def randomMutant(self, current):
        return random.randint(1, 5)


class Numeric(Problem):
    DELTA = 0.01

    def __init__(self, p=[], expression=''):
        self._p = p
        self._expression = expression

    def setVariables(self):
        # file에서 읽어온 값을 클래스의 변수에 할당해주는 함수
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
        # 파일로 읽어온 값을 print 해주는 함수
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
        # 결과값을 print 해주는 함수
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

    def getDELTA(self):
        return self.DELTA

    def randomMutant(self, current):
        i = random.randint(0, len(current) - 1)
        d = random.sample((-1 * self.DELTA, self.DELTA), 1)[0]
        return self.mutate(current, i, d)

    def mutants(self, current):
        neighbors = list()
        for i in range(len(current)):
            neighbors.append(self.mutate(current, i, self.DELTA))
            neighbors.append(self.mutate(current, i, -1 * self.DELTA))

        return neighbors

    def mutate(self, current, i, d):
        curCopy = current[:]
        l = self._p[1][i]
        u = self._p[2][i]
        if l <= (curCopy[i] + d) <= u:
            curCopy[i] += d
        return curCopy

    # 하위의 두개 함수가 grediantDescent를 지원하기 위한 함수들이다.
    def createNextP(self, currentP):         
        g = self.getGrediant(currentP)      # step 1 get gradient
        resultV = self.evaluate(currentP)   # 만약, 아래에서 구하는 모든 점들이 조건에 부합하지 않은 경우, 
        resultP = currentP[:]               # currentP를 리턴해 gradientDescent 함수의 작동을 멈추기 위함
        for i in range(len(currentP)):
            tmpP = currentP[:]
            tmpP[i] -= (self.DELTA * g[i])       # step 2 get nextP, 
                                            # it should be in domain
            low = self._p[1]
            up = self._p[2]
            
            if low[i] <= tmpP[i] <= up[i]:
                valueN = self.evaluate(tmpP)
                if valueN < resultV:
                    resultV = valueN
                    resultP = tmpP[:]
        return resultP, resultV             
        # value가 가장 작은 점의 정보와 해당 value를 리턴해준다.
        # 이 때 value는 evaluate 연산을 더이상 하지 않기 위함.

    # 각각의 x[k]에 대해서 lerning rate 만큼 이동한 뒤 (DELTA값 사용)
    # currentP 와 새롭게 생성된 newP의 기울기를 구해서 value에 넣어줬다.
    def getGrediant(self, currentP):
        value = []
        valueP = self.evaluate(currentP)
        for i in range(len(currentP)):
            newP = self.mutate(currentP, i, self.DELTA)
            value.append((self.evaluate(newP)-valueP)/self.DELTA)
        return value

class Tsp(Problem):
    def __init__(self, numCities=0, locations=[], table=[]):
        self._numCities = numCities
        self._locations = locations
        self._table = table

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
