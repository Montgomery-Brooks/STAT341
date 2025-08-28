#Author: Montgomery Brooks; Date : 8/28/2025; Purpose: Measures of descriptive 
stats
# Generate dummy/sample dataset
data <- c(1:50)

# Calculate mean/average for data
mean(data)

# Calculate median for data
median(data)

# Calculate standard deviation for data
sd(data)

# Custom function
get_mode <- function(x) {
	uniq_x <- unique(x)
	uniq_x[which.max(tabulate(match(x, uniq_x)))]}
