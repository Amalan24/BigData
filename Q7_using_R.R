# Define the dataset
dataset <- c(94, 86, 56, 18, 35, 76, 39, 60, 10, 82, 75, 98, 31, 18, 70)

# Calculate the mean
mean_value <- mean(dataset)

# Calculate the median
median_value <- median(dataset)

# Calculate the mode (using a custom function)
get_mode <- function(x) {
  uniq <- unique(x)
  uniq[which.max(tabulate(match(x, uniq)))]
}
mode_value <- get_mode(dataset)

# Calculate the standard deviation
sd_value <- sd(dataset)

# Calculate the variance
var_value <- var(dataset)

# Print the results
print(mean_value)
print(median_value)
print(mode_value)
print(sd_value)
print(var_value)
