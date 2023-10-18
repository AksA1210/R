# Function to generate a Fibonacci-like series where each term is the sum of the last three terms
generate_series <- function(n) {
  if (n <= 0) {
    cat("Please enter a positive number of terms.")
    return(NULL)
  }
  
  series <- numeric(n)
  
  for (i in 1:n) {
    if (i <= 3) {
      series[i] <- i
    } else {
      series[i] <- series[i - 1] + series[i - 2] + series[i - 3]
    }
  }
  
  return(series)
}
print("*****FIBONACCI SERIES*****")
# User input for the number of terms
num_terms <- as.numeric(readline("Enter the number of terms : "))

# Generate and print the series
if (!is.na(num_terms)) {
  result <- generate_series(num_terms)
  if (!is.null(result)) {
    cat("Generated series with", num_terms, "terms :\n")
    cat(result, "\n")
  }
}
