# Function to encrypt a sentence using a Caesar cipher
caesar_cipher_encrypt <- function(sentence, shift) {
  encrypted_sentence <- ""
  
  for (i in 1:nchar(sentence)) {
    char <- substr(sentence, i, i)
    
    if (char %in% letters) {
      # Handle lowercase letters
      shifted_char <- letters[(which(letters == char) + shift - 1) %% 26 + 1]
    } else if (char %in% LETTERS) {
      # Handle uppercase letters
      shifted_char <- LETTERS[(which(LETTERS == char) + shift - 1) %% 26 + 1]
    } else {
      # Non-alphabetic characters remain unchanged
      shifted_char <- char
    }
    
    encrypted_sentence <- paste0(encrypted_sentence, shifted_char)
  }
  
  return(encrypted_sentence)
}
print("*******STRING ENCRYPTION*******")
# User input for the sentence and shift value
sentence <- readline("Enter a sentence to encrypt : ")
shift <- as.numeric(readline("Enter the Caesar cipher shift value : "))

# Encrypt the sentence and print the result
if (!is.na(shift)) {
  encrypted_result <- caesar_cipher_encrypt(sentence, shift)
  cat("Encrypted sentence :", encrypted_result, "\n")
}
