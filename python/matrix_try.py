class Matrix:
    'a simple matrix class'
    def __init__(self, rows):
        self.elems = rows
    def printMatrix(m):
        for row in m.elems:
            rows = [str(elem) for elem in row]
            print(" ".join(rows))
if __name__ == '__main__':
    m = Matrix([[0]*3 for i in range(2)])
    m.printMatrix()
