# Q1: DevOps vs Secure DevOps Data Analysis

# Security activities performed
pipeline <- c("Traditional DevOps", "Secure DevOps")
activities <- c(4, 10)

# Calculate statistics
total <- sum(activities)
mean_value <- mean(activities)
maximum <- max(activities)
minimum <- min(activities)

cat("Total Security Activities:", total, "\n")
cat("Mean Security Activities:", mean_value, "\n")
cat("Maximum Security Activities:", maximum, "\n")
cat("Minimum Security Activities:", minimum, "\n")

# Display data
data <- data.frame(pipeline, activities)
print(data)

# Bar chart
barplot(
  activities,
  names.arg = pipeline,
  main = "Security Activities: DevOps vs Secure DevOps",
  xlab = "Pipeline",
  ylab = "Number of Security Activities",
  col = c("skyblue", "seagreen")
)