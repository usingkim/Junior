def name_5_1_46():
#--------------- start your code ---------------
    import os
    path = "C:\\Users\\chris\\OneDrive\\바탕 화면\\pnu\\ai\\hw04\\"
    infile = open(path + "Names.txt", "r")
    listPres = [line.rstrip() for line in infile]
    infile.close()
    
    newName = input("Enter a first name to be included: ")
    newName = newName.capitalize()
    if newName not in listPres:
        listPres.append(newName)
        listPres.sort()
        listPres = [i + '\n' for i in listPres]

        outfile = open(path + "Names_.txt", "w")
        outfile.writelines(listPres)
        outfile.close()
        os.remove(path + "Names.txt")
        os.rename(path + "Names_.txt", path + "Names.txt")
        print(newName, "is added in Names.txt")
    
    else:
        print("Names.txt already have", newName)
#--------------- end your code -----------------



def number_6_1_31():
#--------------- start your code ---------------
    while True:
        num = input("Enter an integer from 1 to 100: ")

        try:
            num = eval(num)
        except NameError:
            print("You did not enter an integer.")
            continue

        if 1 <= num <= 100 and type(num) == int:
            print("Your number is", num)
            break
        elif type(num) == int:
            print("Your number was not between 1 and 100")
            continue
        else:
            print("You did not enter an integer.")
#--------------- end your code -----------------



def alphabet_6_2_9():
#--------------- start your code ---------------
    import random

    alph = list()
    while True:
        char = chr(random.randint(97, 122))
        if char not in alph:
            alph.append(char)
        if len(alph) == 3:
            break
    
    alph.sort()
    print(" ".join(alph))
#--------------- end your code -----------------



if __name__ == '__main__':
    name_5_1_46()
    number_6_1_31()
    alphabet_6_2_9()