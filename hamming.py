
"""
Rick Hamming likes to play with words. And he defined the distance of two words of the
same length, i.e. the number of places where the characters in those places are different. For
instance, the Hamming distance of two strings, RICK and DICK, is just one since only the
first characters of them are different.
You want to write a program to help Rick, which calculates the Hamming distance of two
strings. The strings consists of alphabets and numbers only without any special characters.
Therefore, "K2" is valid, but "ad-hoc" is not allowed. Your program should be case-insensitive,
i.e. the cases of the strings are ignored. For example, the Hamming distance of the pair of
TeX and tEx is zero.
Input strings are given to the standard input. The first line of the input contains the first
string, and the second line does the second one. Your program should print the Hamming
distance of them to the standard output. Beware that the distance is non-negative and not
greater than the length of the strings.
Constraints: Define and use function hamming(s1, s2) returning the Hamming distance of the
arguments.
"""


#####################################

# Date : 2020-05-06
# name : YooJin Kim ( Karen )
# Version : 1.0
# Assignmane Name : Hamming Distance

#####################################

def hamming(s1, s2):
    result = 0
    for i in range(len(s1)):
        if s1[i].upper() != s2[i].upper():
            result=result+1
    return result

if __name__ == "__main__":
    s1 = input()
    s2 = input()

    k = hamming(s1, s2)
    print(k)


"""
example of input / output

first and second are input
another one is output

Rick
Dick
1

Python
Wilton
4

b4TeX
lAtEx
2

"""

