# Function to reverse a list without using built-in functions or loops
reverse_list <- function(lst) {
  if (length(lst) <= 1) {
    return(lst)
  } else {
    # Pop the first element
    first_element <- lst[[1]]
    remaining_list <- lst[-1]
    # Recursively reverse the remaining list
    reversed_list <- reverse_list(remaining_list)
    # Append the first element to the reversed list
    return(c(reversed_list, first_element))
  }
}

print("*******DATA REVERSAL*******")
#Hard-coded input
original_list <- list(1, 2, 3, 4, 5)
print("Original List : ")
print(original_list)
# Reverse the list and print the result
reversed_list <- reverse_list(original_list)
#print(paste("Original List :", original_list))
print("Reversed List :")
print(reversed_list)




