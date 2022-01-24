from setup import Optimizer
from problem import *
import math

class MetaHeuristics(Optimizer):
    pass

class SimulatedAnnealing(MetaHeuristics):
    def __init__(self):
        Optimizer.__init__(self)
        self._numSample=0
        self._pType=0
        self._aType = ''
        self._whenBestFound = 0
        self._bestPoint=[]
        self._bestValue=0
        self._limitEval = 0
    
    def setVariables(self, parameters):
        Optimizer.setVariables(self, parameters)
        self._pType = parameters['pType']
        self._aType = parameters['aType']
        self._limitEval = parameters['limitEval']

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

    def displayNumExp(self):
        print()
        print('Number of experiments:', self._numExp)

    def displaySetting(self):
        print()
        print('Limit Evaluations:', self._limitEval)
    
    def getWhenBestFound(self):
        return self._whenBestFound

    def run(self, p):
        if p.getNumEval() >= self._limitEval:
            return
        # init # inputs problem, schedule
        current = p.randomInit()    # 초기 상태 정의
        e1 = p.evaluate(current)    # 정의된 초기상태에 대한 값
        self._numSample = len(current) # Sample의 개수
        t = self.initTemp(p)        # temperature의 초기 상태
        self._bestPoint, self._bestValue = current, e1 # 가장 작은 값을 찾아내기 위한 변수     
        
        f = open('meta.txt', 'a')
        
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

