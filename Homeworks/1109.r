# 1. Print SQUARE of a NUMBER.
# 2. Accept NAME and find the LENGTH.
# 3. Accept a vector and find :
#  a. Sum 
#  b. Maximum element
#  c. Minimum element

square <- function(n){
  n <- as.integer(n)
  print(paste("Square of the number : ",n*n))
}
n <- readline("Enter the number : ")
square(n)

name_len <-function(name){
  print(paste("Length of the name : ",nchar(name)))
}
name_len("Akshadha")  

func1 <- function(vr) {
  #v<-c(1,2,3,4)
  sum = 0
  for (i in 1:length(v)) { 
  sum = sum+v[i]
  }
  print(paste("Sum : ",sum))
  print(paste("Maximum : ",max(v)))
  print(paste("Minimum : ",min(v)))
}  
#x <- scan()
#func1(x)
func1(c(1,2,3,4))
