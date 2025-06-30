import math
def findprime(num):
    if num <=1 : return False
    for i in range(2,int(math.sqrt(num))+1):
        if num%i==0: return False
    return True
if findprime(14) : print("is Prime")
else: print("is Not Prime")