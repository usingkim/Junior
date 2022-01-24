def main1():
    file="C:\\Users\\chris\\Downloads\\05_data_files\\FirstPresidents.txt"
    displayWithForLoop(file)
    displayWithListComprehension(file)
    displayWithReadline(file)

def displayWithForLoop(file):
    infile = open(file, 'r') # r : reading
    for line in infile:
        print(line.rstrip())
    infile.close()

def displayWithListComprehension(file): #list로 출력하는 함수
    infile = open(file, 'r')
    listPres = [line.rstrip() for line in infile]
    # rstrip 오른쪽 공백을 제거해주는 함수이다.
    infile.close()
    print(listPres)

def displayWithReadline(file):
    infile = open(file, 'r')
    line = infile.readline()
    while line != "":
        print(line.rstrip())
        line = infile.readline()
    infile.close()

def main2():
    L = ["George Washington", "John Adams", "Thomas Jefferson"]
    file1="C:\\Users\\chris\\Downloads\\05_data_files\\FirstPresidents2.txt"
    file2 = "C:\\Users\\chris\\Downloads\\05_data_files\\FirstPresidents3.txt"
    outfile = open(file1, 'w')
    createWithWrite(L, outfile)
    outfile = open(file2, 'w')
    createWithWritelines(L, outfile)

def createWithWrite(L, outfile):
    for i in range(len(L)):
        outfile.write(L[i] + "\n")
    outfile.close()

def createWithWritelines(L, outfile):
    for i in range(len(L)):
        L[i] = L[i] + "\n"
    outfile.writelines(L)
    outfile.close()

def main3():
    stateList = createListFromFile("C:\\Users\\chris\\Downloads\\05_data_files\\States.txt")
    createSortedFile(stateList, "C:\\Users\\chris\\Downloads\\05_data_files\\StatesAlpha.txt")

def createSortedFile(listName, fileName):
    listName.sort()
    for i in range(len(listName)):
        listName.sort()
    outfile = open(fileName, 'w')
    outfile.writelines(listName)
    outfile.close()

def main4():
    vicePresList = createListFromFile("C:\\Users\\chris\\Downloads\\05_data_files\\VPres.txt")
    createNewFile(vicePresList, "C:\\Users\\chris\\Downloads\\05_data_files\\USPres.txt", "C:\\Users\\chris\\Downloads\\05_data_files\\Both.txt")
    # VPres : 부통령, USPres : 미국 대통령
    # 부통령 대통령 둘 다 해본 적 있는 

def createListFromFile(fileName):
    file = open(fileName, 'r')
    L = [word.rstrip() for word in file]
    file.close()
    return L

def createNewFile(L, file1, file2):
    infile = open(file1, 'r')
    outfile = open(file2, 'w')

    for Pres in infile:
        if Pres.rstrip() in L:
            outfile.write(Pres)
    
    infile.close()
    outfile.close()

def main():
    vicePresSet = createSetFromFile("VPres.txt")
    presSet = createSetFromFile("USPres.txt")
    bothPresAndVPresSet = createIn

    


