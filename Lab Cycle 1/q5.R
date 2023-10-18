# Function to calculate the sum of the series
calculate_series_sum <- function(n) {
  if (n <= 0) {
    cat("Please enter a positive number of terms.")
    return(NULL)
  }
  
  series_sum <- 0
  sign <- 1  # To alternate between addition and subtraction
  
  for (i in 1:n) {
    term <- i / (2 * i - 1) * sign
    series_sum <- series_sum + term
    sign <- -sign  # Change the sign for the next term
  }
  
  return(series_sum)
}
print("*******SERIES SUMMATION*******")
# User input for the number of terms
num_terms <- as.numeric(readline("Enter the number of terms in the series : "))

# Calculate and print the sum of the series
if (!is.na(num_terms)) {
  result <- calculate_series_sum(num_terms)
  if (!is.null(result)) {
    cat("Sum of the series with", num_terms, "terms :", result, "\n")
  }
}
