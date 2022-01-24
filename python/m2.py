"""
John Middleman is a professional broker of two parties. He is the best finder of the
mid-point of the items. His technique lies in finding the middle point of a set of items, the
item of which are called median.
Normally the median of numbers can be easily calculated by sorting the numbers: the
number at the center if the number of them is odd, and the average of two numbers nearest
to the center if the number of them is even. However, if the items are strings, there needs a
method to find the average of two strings.
The average of two strings are calculated as the string consisted of characters of each word
in turns in an interleaved way. For example, the average of ham and yes is hem, where h
and m from ham and e from yes. If the length of them are different, just attach the trailing
characters of the longer one to the average string. For instance, the average of hello and
dreamer is hrlaoer.
Write a program to help John to find the median of strings. Beware that the items should
be regarded as alphabetical strings even though the numeric items are given, which implies
that 11 should be less than 9. Also note that the numbers comes before the alphabets, and the
capital letters comes before the small letters: "0" < "A" and "A" < "a".
The input consists of strings separated by a space. Alphanumeric strings are allowed only.
Your program should print the median of them to the standard output.

Constraints: Define and use the function median(s1, s2) returning the median of s1 and s2.

"""


#####################################

# Date : 2020-05-06
# name : YooJin Kim ( Karen )
# Version : 1.0

#####################################

def median(s1, s2):
    if len(s1) < len(s2):
        for i in range(len(s1)):
            if i % 2 == 0:
                s2 = s2.replace(s2[i], s1[i], 1)
        return s2
    else:
        for i in range(len(s2)):
            if i % 2 == 1:
                s1 = s1.replace(s1[i], s2[i], 1)
        return s1

if __name__ == "__main__":
    string = input().split()
    string.sort()

    l = len(string)

    if(l % 2 == 0) :
        medi = median(string[l//2-1], string[l//2])
        print(medi)
    else:
        print(string[l//2])


"""
example of input / output

say hello and dreamer / deelmer
I want ham / ham
11 9 7777 123456 / 173756
"""
