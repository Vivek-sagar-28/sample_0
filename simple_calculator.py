
def add(a,b):
    return a+b
def subtract(a,b):
    return a-b
def multiply(a,b):
    return a*b
def divide(a,b):
    if b==0:
        return "error can not divide by zero"
    else:
        return a/b
def power(a,b):
    return a**b
def root(a,b):
    if b==0:
        return "error can not take root as zero "
    else:
        return a**(1/b )
def remainder(a,b):
    if b==0:
        return "error can not use  zero "
    else:
        return a%b
print("simple calucations")
print("1.add \n", "2.subtract \n","3.multiply\n")
print("4.divide\n", "5.power \n","6.root\n","7. remainder\n")
choice=input("enter your choice")
a=int(input("enter number"))
b=int(input("enter number"))
if choice=="1":

    print("result is ",add(a,b))
elif choice=="2":
 
    print("result is",subtract(a,b))
elif choice=="3":

    print("result is",multiply(a,b))
elif choice=="4":
 
    print("result is ",divide(a,b))
elif choice=="5":
    
    print("result is",power(a,b))
elif choice=="6":

    print("result is",root(a,b))
elif choice=="7":
   
    print("result is",remainder(a,b))
else:
    print("invalid choice")



