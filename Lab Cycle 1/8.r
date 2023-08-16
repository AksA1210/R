#PALINDROME CHECKER
# Question 1 : Develop a program to read a paragraph of text and perform the following tasks:
# 1. Count the total no: of words
# 2. Calculate the average word length
# 3. Identify and print the longest word
# 4. Replace all occurrences of a specific word with another word of your choice.

word = readline(prompt = "Enter a sentence : ")

# R is a programming language for statistical computing and graphics supported by the R Core Team and 
# the R Foundation for Statistical Computing. Created by statisticians Ross Ihaka and Robert Gentleman,
# R is used among data miners, bioinformaticians and statisticians for data analysis and developing statistical software.
# The core R language is augmented by a large number of extension packages containing reusable code and documentation.
revv<-rev(word)
REV = stringi::stri_reverse(word)
cat("reversed",REV)
if(word==REV){
  print("This is a palindrome.")
}
