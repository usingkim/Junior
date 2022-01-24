def change(word):
    word = list(word)
    vowel = ['a', 'e', 'i', 'o', 'u']
    for i in range(len(word)):
        for j in range(len(vowel)):
            if(word[i]==vowel[j]):
                word[i] = word[i].upper()
                return "".join(word)

def main():
    str = input()
    str = str.split()
    for i in range(len(str)):
        k = str[i]
        if(len(k)>=5):
            str[i] = change(k)
    print(" ".join(str))


if __name__=="__main__":
    main()    

