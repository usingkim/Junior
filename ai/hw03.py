'''
Exercise 3.4

66.Median

The median of an ordered set of measurements is a number separating the lower half from the upper half. 
If the number of measurements is odd, the median is the middle measurement. If the number of measurements is even, 
the median is the average of the two middle measurements. 
Write a program that requests a number n and a set of n measurements (not necessarily ordered) as input 
and then displays the median of the measurements.

===================== example =====================
    How many numbers do you want to enter? 4
    Enter a number: 9
    Enter a number: 3
    Enter a number: 6
    Enter a number: 5
    Median: 5.5

===================== sample input =====================
    4 [9,3,6,5]
===================== sample output ====================
    5.5

'''

def median(howMany, listOfNumbers):
    howMany = int(howMany)
    listOfNumbers = listOfNumbers.strip('[]\n')
    listOfNumbers = listOfNumbers.split(',')
    listOfNumbers = list(map(int,listOfNumbers))

#--------------- start your code ---------------


#--------------- end your code -----------------

    return (median)



'''
78. Special Number

Write a program to find the four-digit number, call it abcd, whose digits are reversed when the number is multiplied by 4. 
That is, 4 x abcd = dcba*.

================= example =================
        Since 4 times 2178 is 8712,
        the special number is 2178.

===================== sample input =====================
    1000 10000
===================== sample output ====================
    2178

'''

def special_number(min, max):
    for i in range (int(min), int(max)):
#--------------- start your code ---------------


#--------------- end your code -----------------
        
    return (i)



'''
Exercise 4.2

70. Wilson’s Theorem

A number is prime if its only factors are 1 and itself. 
Write a program that determines whether a number is prime by using the theorem "The number n is a prime number 
if and only if n divides (n – 1)! + 1." 
The program should define a Boolean-valued function named isPrime that calls a function named factorial,
and Boolean-valued function named wilson that that calls a function named isPrime.

================= example =================
        Enter an integer greater than 1: 37
        37 is a prime number.

================= sample input =================
    37
================= sample output =================
    True

'''

def wilson(input):
#--------------- start your code ---------------


#--------------- end your code -----------------


def isPrime(n):
#--------------- start your code ---------------


#--------------- end your code -----------------

def factorial(n):
    value = 1
#--------------- start your code ---------------


#--------------- end your code -----------------
    return value




'''
CHAPTER 4 PROGRAMMING PROJECTS

5. Alphabetical Order  

The following words have three consecutive letters that are also consecutive letters in the alphabet: 
THIRSTY, NOPE, AFGHANISTAN, STUDENT. 
Write a program that accepts a word as input and determines whether or not it has three consecutive letters 
that are consecutive letters in the alphabet. 
The program should use a Boolean-valued function named isTripleConsecutive that accepts an entire word as input. 
Hint: Use the ord function.

================= exmaple =================
        Enter a word: HIJACK
        HIJACK contains three successive letters
        in consecutive alphabetical order.
        
================= smaple input =================
    HIJACK
================= smaple output =================
    True

'''

def isTripleConsecutive(word):
#--------------- start your code ---------------


#--------------- end your code -----------------

def alphabetical_order(input):
#--------------- start your code ---------------


#--------------- end your code -----------------






