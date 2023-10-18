
# Count the total number of words
count_words <- function(text) {
  words <- unlist(strsplit(text, " "))
  return(length(words))
}

# Calculate the average word length
average_word_length <- function(text) {
  words <- unlist(strsplit(text, " "))
  total_chars <- sum(nchar(words))
  total_words <- length(words)
  return(total_chars / total_words)
}

# Printing the longest word
longest_word <- function(text) {
  words <- unlist(strsplit(text, " "))
  longest <- which.max(nchar(words))
  return(words[longest])
}

# Replace all occurrences of a specific word
replace_word <- function(text, old_word, new_word) {
  return(gsub(old_word, new_word, text))
}
print("*******DATA TYPES AND MANIPULATION*******")
# Input paragraph of text
#paragraph <- "This is a sample paragraph. It contains some words that need to be analyzed. For example, 'analyzed' is one of the words that will be replaced."
print('Enter a paragraph : ')
paragraph<-readline('Enter the sentences : ')
# a. Count the total number of words
word_count <- count_words(paragraph)
cat("Total number of words :", word_count, "\n")

# b. Calculate the average word length
avg_length <- average_word_length(paragraph)
cat("Average word length :", avg_length, "\n")

# c. Identify and print the longest word
longest <- longest_word(paragraph)
cat("Longest word :", longest, "\n")

# d. Replace all occurrences of a specific word with another word
old_word <- readline('Enter the word : ')
new_word <- readline('Enter the new word : ')
new_paragraph <- replace_word(paragraph, old_word, new_word)
cat("Replaced paragraph:\n", new_paragraph, "\n")

