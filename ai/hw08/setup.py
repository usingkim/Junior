class Optimizer:
    def __init__(self):
        self._aType = ''
        self._numExp = 0
    
    def setVariables(self, parameters):
        self._aType = parameters['aType']
        self._numExp = parameters['numExp']
    
    def getAType(self):
        return self._aType
    
    def getNumExp(self):
        return self._numExp

class Setup(Optimizer):
    def __init__(self):
        self._delta = 0
        self._alpha = 0
        self._dx = 0
        Optimizer.__init__(self)

    def setVariables(self, parameters):
        self._delta = parameters['delta']
        self._alpha = parameters['alpha']
        self._dx = parameters['dx']
        Optimizer.setVariables(self, parameters)
    
    