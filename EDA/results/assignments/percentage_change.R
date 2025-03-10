# percentage_change.R
# This script calculates the percentage change in mean runoff between January, February, and March.

# 1) Load the data.table library
library(data.table)

# 2) Create a small data.table with average runoff values (in m³/s) for three months
runoff_data <- data.table(
  Month = c("January", "February", "March"),
  MeanRunoff = c(300, 320, 280)  # Hypothetical values
)

# 3) Calculate the percentage change in mean runoff relative to January
# Explanation:
#   - We select January's MeanRunoff as the reference.
#   - We compute the difference between each month's MeanRunoff and January's MeanRunoff.
#   - We divide by January's MeanRunoff, then multiply by 100 to get a percentage.
runoff_data[, PercChange := ((MeanRunoff - runoff_data[Month == "January", MeanRunoff]) /
                               runoff_data[Month == "January", MeanRunoff]) * 100]

# 4) Print the resulting data.table
print(runoff_data)

source("results/assignments/percentage_change.R")
