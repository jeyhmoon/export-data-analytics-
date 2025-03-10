# Define temperature and weight vectors
temperatures <- c(3, 6, 10, 14)
weights <- c(1, 0.8, 1.2, 1)

# Load necessary library
library(data.table)

# Define a function to multiply two vectors element-wise
multiply_vectors <- function(x, y) {
  x * y
}

# Apply the function and store the results
results <- multiply_vectors(temperatures, weights)
print(results)

