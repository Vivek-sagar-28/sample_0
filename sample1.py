a=5
for i in range(a):
    print('*'*a)

for i in range(a+1):
    print('*'*i)

print()

for i in range(a,0,-1):
    print('*'*i)

    
for i in range(a):
    print(' '*(a-i-1)+'*'*(2*i+1))


for i in range(a):
    print(' '*i+'*'*(2*(a-i)-1))
