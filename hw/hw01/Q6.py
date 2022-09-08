#hw01 Q6:Hailstone
def hailstone(n):
    i=1
    while n!=1:
        print(int(n))
        if n%2==0:
            n=n/2
        else:
            n=n*3+1
        i=i+1
    print(1)
    #print(int(i))
