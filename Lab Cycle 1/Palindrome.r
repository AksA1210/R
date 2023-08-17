x1<-readline(prompt = "Enter a word : ")
string_split<- strsplit(x1,NULL)[[1]]

rev_word = rev(string_split)
reversed_string <-paste(rev(string_split),collapse="")
cat("++++++++++++++++++++++++++++++++++++++",rev_word)
if(x1==reversed_string)
{
  print("Palindrome")
}else{
  print("Not a palindrome")
}
