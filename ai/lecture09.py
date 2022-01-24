def main1():
    continent = input("Enter the name of a continent: ")
    continent = continent.title()
    if continent != "Antarctica":
        infile = open("C:\\Users\\chris\\Downloads\\05_data_files\\UN.txt")
        for line in infile:
            data = line.split(',')
            if data[1] == continent:
                print(data[0])
    else:
        print("There are no contries in Antarctica.")
   
def main():
    countries = placeRecordsIntoList("C:\\Users\\chris\\Downloads\\05_data_files\\UN.txt")
    countries.sort(key=lambda country: country[3], reverse=True)
    displayFiveLargestCountries(countries)
    #createNewFile(countries)

def placeRecordsIntoList(file):
    infile = open(file, 'r')
    l = []
    for line in infile:
        data = line.split(',')
        l.append(data)
    return l

def displayFiveLargestCountries(countries):
    for i in range(5):
        print(countries[i][0])

main()
