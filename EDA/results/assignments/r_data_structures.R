# r_data_structures.R
# This script provides examples of using vectors, lists, matrices, and data frames in R.
# It is designed as an optional exercise to help you practice basic R data structures.

### 1. VECTORS ###
# Creating a numeric vector
num_vector <- c(1, 2, 3, 4, 5)
# Creating a character vector
char_vector <- c("apple", "banana", "cherry")
# Creating a logical vector
logical_vector <- c(TRUE, FALSE, TRUE)

# Display the vectors
print("Numeric Vector:")
print(num_vector)

print("Character Vector:")
print(char_vector)

print("Logical Vector:")
print(logical_vector)

### 2. LISTS ###
# Creating a list that contains different types of data
my_list <- list(
  numbers = num_vector,
  fruits = char_vector,
  flags = logical_vector,
  scalar = 42
)

# Display the entire list
print("Complete List:")
print(my_list)

# Accessing elements from the list by name
print("Accessing 'numbers' from the list:")
print(my_list$numbers)

print("Accessing 'fruits' from the list:")
print(my_list$fruits)

### 3. MATRICES ###
# Creating a matrix from a sequence of numbers
matrix_data <- matrix(1:9, nrow = 3, ncol = 3)
print("Matrix:")
print(matrix_data)

# Transposing the matrix
transposed_matrix <- t(matrix_data)
print("Transposed Matrix:")
print(transposed_matrix)

### 4. DATA FRAMES ###
# Creating a data frame from vectors
df <- data.frame(
  ID = 1:5,
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Score = c(85, 92, 78, 90, 88)
)

# Display the data frame
print("Data Frame:")
print(df)

# Subsetting the data frame: select rows where Score is greater than 85
subset_df <- df[df$Score > 85, ]
print("Subset of Data Frame (Score > 85):")
print(subset_df)


source("results/assignments/r_data_structures.R")

