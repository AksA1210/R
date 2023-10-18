# Function to check if a number is prime
is_prime <- function(num) {
  if (num <= 1) {
    return(FALSE)
  }
  if (num <= 3) {
    return(TRUE)
  }
  if (num %% 2 == 0 || num %% 3 == 0) {
    return(FALSE)
  }
  i <- 5
  while (i * i <= num) {
    if (num %% i == 0 || num %% (i + 2) == 0) {
      return(FALSE)
    }
    i <- i + 6
  }
  return(TRUE)
}

# Function to find and print prime numbers within a range
find_primes_in_range <- function(start, end) {
  cat("Prime numbers in the range", start, "to", end, "are :\n")
  for (i in start:end) {
    if (is_prime(i)) {
      cat(i, " ")
    }
  }
  cat("\n")
}

print("*******PRIME NUMBER CHECKER*******")
# User input for a single number
num <- as.numeric(readline("Enter a number to check for prime : "))

# Check if the number is prime
if (!is.na(num)) {
  if (is_prime(num)) {
    cat(num, "is a prime number.\n")
  } else {
    cat(num, "is not a prime number.\n")
  }
}

# User input for a range
start_range <- as.numeric(readline("Enter the start of the range : "))
end_range <- as.numeric(readline("Enter the end of the range : "))

# Find and print prime numbers in the range
if (!is.na(start_range) && !is.na(end_range)) {
  find_primes_in_range(start_range, end_range)
}
