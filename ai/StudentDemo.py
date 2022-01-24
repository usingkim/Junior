import Student

def main():
    listOfStudents = obtainListOfStudents()
    displayResults(listOfStudents)

def obtainListOfStudents():
    listOfStudents = []
    carryOn = 'Y'
    while carryOn =='Y':
        name = input("Enter student's name: ")
        midterm = float(input("Enter grade on midterm: "))
        final = float(input("Enter grade on final: "))
        category = input("Enter category (LG or PF): ")
        if category.upper() == "LG":
            st = Student.LGstudent(name, midterm, final)
        else:
            st = Student.PFStudent(name, midterm, final)
        listOfStudents.append(st)
        carryOn = input("Do you want to continue (Y/N)? ")
        carryOn = carryOn.upper()
    return listOfStudents

def displayResults(listOfStudents):
    print("\nNAME\tGRADE")
    listOfStudents.sort(key=lambda x: x.getName())
    for pupil in listOfStudents:
        print(pupil)

main()