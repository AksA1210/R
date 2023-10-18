# Function to validate the age
is_valid_age <- function(age) {
  return(is.numeric(age) && age > 0)
}

# Function to validate the grade
is_valid_grade <- function(grade) {
  valid_grades <- c("A", "B", "C", "D", "F")
  return(grade %in% valid_grades)
}

# Function to read student records and calculate the average age
read_student_records <- function() {
  valid_records <- data.frame(Name = character(0), Age = numeric(0), Grade = character(0))
  total_age <- 0
  valid_count <- 0
  print("***DATA VALIDATION AND USER INPUT***")
  while (TRUE) {
    name <- readline("Enter student name (or 'quit' to exit) : ")
    
    if (name == "quit") {
      break
    }
    
    age <- as.numeric(readline("Enter the age of the student : "))
    if (!is_valid_age(age)) {
      cat("Invalid age. Please enter a positive integer.\n")
      next
    }
    
    grade <- readline("Enter the grade of the student (A, B, C, D, F) : ")
    if (!is_valid_grade(grade)) {
      cat("Invalid grade. Please enter a valid letter grade (A, B, C, D, F).\n")
      next
    }
    
    valid_records <- rbind(valid_records, data.frame(Name = name, Age = age, Grade = grade))
    total_age <- total_age + age
    valid_count <- valid_count + 1
  }
  
  if (valid_count > 0) {
    average_age <- total_age / valid_count
    cat("Average age of students with valid records :", average_age, "\n\n")
    print(valid_records)
  } else {
    cat("No valid records entered.\n")
  }
  
  return(valid_records)
}

# Read student records and calculate the average age
student_records <- read_student_records()
