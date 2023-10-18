#TRIAL
#Data validation
student_records <- function(names,ages,grades){
  for (i in 1:length(ages)){
    if (ages[i] < 0){
      print("Age is not positive !!!")
    }else{
      print("Age is validated")
    }
  }
}
names <- c("Lily","Mabel","Annie")
ages <- c(18,17,19)
grades <- c("A","B","A")
student_records(names,ages,grades)
