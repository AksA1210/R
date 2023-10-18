# Function to perform run-length encoding on a string
run_length_encode <- function(input_string) {
  encoded_string <- ""
  if (nchar(input_string) == 0) {
    return(encoded_string)
  }
  
  current_char <- substr(input_string, 1, 1)
  char_count <- 1
  
  for (i in 2:nchar(input_string)) {
    if (substr(input_string, i, i) == current_char) {
      char_count <- char_count + 1
    } else {
      encoded_string <- paste0(encoded_string, current_char, char_count)
      current_char <- substr(input_string, i, i)
      char_count <- 1
    }
  }
  
  encoded_string <- paste0(encoded_string, current_char, char_count)
  return(encoded_string)
}
print("*******DATA COMPRESSION********")
# User input for the string to be encoded
input_string <- readline("Enter a string to be run-length encoded : ")

# Perform run-length encoding and print the result
encoded_result <- run_length_encode(input_string)
cat("Run-length encoded string :", encoded_result, "\n")
