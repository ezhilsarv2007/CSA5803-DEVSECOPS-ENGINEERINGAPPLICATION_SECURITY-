# Q15: Continuous Security Validation

pipeline <- data.frame(
  Build = c(
    "B101", "B102", "B103", "B104",
    "B105", "B106", "B107", "B108"
  ),
  Security_Test = c(
    "Passed", "Passed", "Failed", "Passed",
    "Failed", "Passed", "Passed", "Passed"
  ),
  Vulnerabilities = c(
    2, 1, 5, 2,
    6, 1, 2, 0
  )
)

print(pipeline)

# Count passed and failed builds
passed <- sum(pipeline$Security_Test == "Passed")
failed <- sum(pipeline$Security_Test == "Failed")

total_builds <- nrow(pipeline)

# Calculate percentages
pass_percentage <- (passed / total_builds) * 100
failure_percentage <- (failed / total_builds) * 100

# Average vulnerabilities
average_vulnerabilities <-
  mean(pipeline$Vulnerabilities)

cat("\nSecurity Pass Percentage:",
    pass_percentage, "%\n")

cat("Security Failure Percentage:",
    failure_percentage, "%\n")

cat("Average Vulnerabilities per Build:",
    average_vulnerabilities, "\n")

# Security trend line graph
plot(
  pipeline$Vulnerabilities,
  type = "o",
  xaxt = "n",
  main = "Security Vulnerability Trend",
  xlab = "CI/CD Build",
  ylab = "Number of Vulnerabilities"
)

axis(
  1,
  at = 1:nrow(pipeline),
  labels = pipeline$Build
)