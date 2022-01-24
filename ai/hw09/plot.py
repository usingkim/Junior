import matplotlib.pylab as pl

def inputs(fileName):
    # 두 개의 그래프를 나타내야하므로, 중복되는 동작이 많기 때문에
    # 함수로 정의해준다.
    infile = open(fileName, 'r')
    line = infile.readline().rstrip()

    i = 0

    x = [] # x 좌표
    y = [] # y 좌표

    while line != '':
        x.append(i) # 행 번호 -> x
        y.append(float(line)) # value -> y
        line = infile.readline().rstrip()
        i+=1
    
    infile.close()

    return x, y

def main():
    x1, y1 = inputs('first.txt')
    x2, y2 = inputs('second.txt')

    pl.figure()
    pl.plot(x1, y1) # 2개의 그래프
    pl.plot(x2, y2)
    pl.xlabel('Number Of Evaluations') # x
    pl.ylabel('Tour Cost') # y
    pl.title('Search Performance (TSP-100)') # title
    pl.legend(['uxp = 0.2', 'uxp = 0.3'])
    # 각 그래프가 어떤 그래프인지 나타냄

    pl.show()

main()
