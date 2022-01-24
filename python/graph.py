def main():
    line = input().split()
    n = len(line)
    sum = 0
    for k in range(1, n):
        sum += int(line[k])
        print(line[0]*sum)

main()




