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
    # median이란 lower half와 upper half를 가르는 수 이다.
    listOfNumbers.sort() # 중간 수를 찾아내기 위해서 sort를 해준다.
    if howMany % 2 == 1: # 개수가 홀수개인 경우
        median = listOfNumbers[len(listOfNumbers) // 2]
        # idx가 중간 값을 찾아주면 되므로, listOfNumbers의 크기를 2로 나눈 몫을 참조한다.
        # 예시 howMany = 5, 5//2 = 2, listOfNumbers[2] 참조
    else: # 개수가 짝수개인 경우
        median = (listOfNumbers[len(listOfNumbers) // 2] + \
                  listOfNumbers[len(listOfNumbers) // 2 - 1]) / 2
        # 코드가 캡쳐하기에 길어서 '\' 를 사용했다.
        # 중간에 위치한 두 수의 평균을 내야하므로,
        # idx가 len(listOfNumbers) // 2에 해당하는 수와
        # len(listOfNumbers) // 2 - 1 에 해당 하는 수를 합해서 2로 나눈다.
        
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
        num = list(str(i))
        # 보다 쉽게 숫자를 거꾸로 뒤집어주기 위한 코드이다.
        # n의 자리 숫자들을 각각 리스트의 원소로 만들어 num 변수에 할당해준다.
        # 우선 i 값을 str로 바꿔준 뒤 str은 iterable하기 때문에,
        # list로 변경해주면 각각의 숫자가 리스트의 원소가 된다.
        
        num_r = num[:] # num에 있는 원소들을 복사해주기 위해서 사용했다. 나의 목적은 num과 num_r이 다른 주소를 참조하는 것이었기 때문에, 해당 코드를 사용했다.
        num_r.reverse() # 리스트 원소들의 순서를 거꾸로 뒤집어 주기 위함
        num_r = int("".join(num_r)) # reverse된 'integer'값을 만들기 위해서 join 함수를 이용해 하나의 단어로 만들어 준 뒤 int() 함수를 이용하여 integer로 변환시킴
        if (i * 4) != num_r: # special num을 판별하기 위한 이프문이다.
            continue # 만약 해당 수가 special num이 아닐 경우, for 문을 지속적으로 돌려야하므로 continue 문을 사용했다.
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
    return isPrime(input) # isPrime을 통해 소수인지 아닌지 판별해서 return 해준다.
#--------------- end your code -----------------


def isPrime(n):
#--------------- start your code ---------------
    return (factorial(n-1) + 1) % n == 0
    # (n-1)! + 1이 n으로 나누어 떨어지면 소수이기 때문에
    # 그 경우 True를 반환하고 그 외에는 False를 반환한다.
#--------------- end your code -----------------

def factorial(n):
    value = 1
#--------------- start your code ---------------
    for i in range(2, n + 1):
        value *= i
    # factorial 구현을 위해서 for문을 이용하여 2에서 부터 n까지 곱해줬다.
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
    # 문자열이 TripleConsecutive한지 아닌지 판별해서 리턴해주는 함수로 아스키 코드를 이용할 것이다.
    word = list(map(ord, list(word))) # ord 함수로 각각의 문자를 map 함수를 통해서 변환하고, 그 결과값을 리스트로 변환해 변수로 할당해준다.
    for i in range(len(word) - 2): # i와 i+1, i+1와 i+2를 비교하기 위해서 range를 len(word)-2로 설정해준다.
        if word[i] + 1 == word[i+1] and word[i+1] + 1 == word[i+2]:
            return True
    return False        
#--------------- end your code -----------------

def alphabetical_order(input):
#--------------- start your code ---------------
    return isTripleConsecutive(input) #isTripleConsecutive 함수를 호출해주는 함수
#--------------- end your code -----------------
