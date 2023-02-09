import math

def map(y):
    i = math.ceil(0.5*((8*y+1)**0.5-1))
    j = y - i*(i-1)/2
    return i,j

for y in range(1,100):
    i,j = map(y) 
    print(y,i,j)
