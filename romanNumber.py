#####################################

# Date : 2020-05-13
# name : YooJin Kim ( Karen )
# Version : 1.0
# Assignmane Name : Roman numerals to Decimal with Recursion (5000 or more excluded)

#####################################

def score(word):
    if word == 'I':
        t = 1
    elif word == 'V':
        t = 5
    elif word == 'X':
        t = 10
    elif word == 'L':
        t = 50
    elif word == 'C':
        t = 100
    elif word == 'D':
        t = 500
    elif word == 'M':
        t = 1000
    else:
        t = 0
    return t

def roman(s, l):
    if len(s) <= l:
        return 0
    n = roman(s, l+1)
    t = score(s[l])
    if n > t and t < score(s[l+1]) and s[l] != s[l+1]:
        t = t * -1
    return t + n

if __name__ == "__main__":
    string = input()
    print(roman(string, 0))

