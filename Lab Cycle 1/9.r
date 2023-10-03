# Data reversal
reverse<-function(vec){
  if (length(vec)==1){
    return (vec)
    #return vec
  }else {
    return(c(tail(vec, 1), reverse(head(vec, -1))))
  }
}
vector<-c(1,2,3)
print(paste(reverse(vector)))
#print(paste(vector))
