
#a = as.integer.readline("Enter the first number : ")
#b = as.integer.readline("Enter the second number : ")
#Arithmetic operations
a<-5
b<-10
print(paste("Sum = ",a+b))
print(paste("Difference = ",a-b))
print(paste("Product = ",a*b))
print(paste("Quotient = ",a/b))

#Greeting message
name<-"Akshadha"
print(paste("Good morning",name"!!!"))

#Circle - area and perimeter
radius<-10
print(paste("Circumference = ",2*pi*radius))
print(paste("Area = ",pi*radius*radius))

#swap
var1<-9
var2<-4
var1<-var1+var2
var2<-var1-var2
var1<-var1-var2
print("---------After swapping--------")
print(paste("Variable 1 : ",var1))
print(paste("Variable 2 : ",var2))

#temperature - Celsius to Fahrenheit
celsius<-30
print(paste("Fahrenheit = ",(celsius*9/5) + 32))

#Age
age<-19
if (age < 18)
{
  print("Minor")
}else
{
  print("Not a minor")
}  
sentence<-"Hi, I am fine."
print(substr(sentence, 1, 5))
print(substr(sentence, -5, -1))

