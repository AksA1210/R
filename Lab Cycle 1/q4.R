# Function to generate a random password
generate_password <- function(length) {
  if (length < 8) {
    cat("Password length should be at least 8 characters.")
    return(NULL)
  }
  
  # Define character sets for each category
  uppercase_letters <- sample(LETTERS, length, replace = TRUE)
  lowercase_letters <- sample(letters, length, replace = TRUE)
  digits <- sample(0:9, length, replace = TRUE)
  special_characters <- sample(c('!', '@', '#', '$', '%', '^', '&', '*'), length, replace = TRUE)
  
  # Combine character sets and shuffle
  all_characters <- c(uppercase_letters, lowercase_letters, digits, special_characters)
  shuffled_password <- sample(all_characters, length)
  
  # Convert the password to a string
  password <- paste(shuffled_password, collapse = "")
  
  return(password)
}
print("*******PASSWORD GENERATOR*******")
# User input for password length
password_length <- as.numeric(readline("Enter the desired password length : "))

# Generate and print the password
if (!is.na(password_length)) {
  password <- generate_password(password_length)
  if (!is.null(password)) {
    cat("Generated Password :", password, "\n")
  }
}
