if __name__ =="__main__":
    jewel = input().split()
    score = 1 / len(jewel)
    je = {}

    for i in range(len(jewel)):
        if(jewel[i] in je):
            je[jewel[i]] += 1
        else :
            je[jewel[i]] = 1
            
    mm = je[jewel[0]]
    for i in range(1, len(jewel)):
        if(je[jewel[i]] > mm):
           mm = jewel[i]
    s = je[mm]
    print(f"{s:.2f}")
