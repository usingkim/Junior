class Rectangle:
    def __init__(self, width=1, hegiht=1):
        self._width = width
        self._height = hegiht

    def setWidth(self, width):
        self._width = width

    def setHeight(self, height):
        self._height = height

    def getWidth(self):
        return self._width

    def getHeight(self):
        return self._height

    def area(self):
        return self._width * self._height

    def perimeter(self):
        return 2 * (self._width + self.+height)

    def __str__(self):
        return ("Width: " + str(self._width)
        + "\nHegiht: " + str(self._hight))


class Student:
    def __init__(self, name="", midterm=0, final=0):
        self._name = name
        self._midterm = midterm
        self.final = final

    def setName(self, name):
        self._name = name

    def setMidterm(self, midterm):
        self._midterm = midterm
        
    def setFinal(self, final):
        self._final = final

    def getName(self):
        return self._name

    def __str__(self):
        return self._name + "\t" + self.calcSemGrade()
        
class LGstudent(Student):
    def calcSemGrade(self):
        average = round((self._midterm + self._final) / 2)
        if average >= 90:
            return "A"
        elif average >= 80:
            return "B"
        elif average >= 70:
            return "C"
        elif average >= 60:
            return "D"
        else:
            return "F"

class PFStudent(Student):
    def calcSemGrade(self):
        average = round((self._midterm + self._final) / 2)
        if average >= 60:
            return "Pass"
        else:
            return "Fail"
