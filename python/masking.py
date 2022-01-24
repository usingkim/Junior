def isInit(k):
    collection = list("aeiou")
    for j in collection:
        if(k==j): return 1
    return 0


def change(word, sign):
    for i in range(len(word)):
        if isInit(word[i]) == 1:
            word[i]=sign



if __name__ == '__main__':
    word = list(input())
    sign = input()

    change(word, sign)

    print("".join(word))
