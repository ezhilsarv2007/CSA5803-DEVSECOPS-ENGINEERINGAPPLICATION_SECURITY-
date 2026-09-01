# Q31 - Security Testing

project <- c("Project A", "Project B", "Project C")

SAST <- c(1, 1, 0)
DAST <- c(1, 0, 1)
SCA <- c(1, 1, 0)
Unit_Testing <- c(1, 1, 1)
Integration_Testing <- c(1, 0, 1)
Remediation <- c(1, 0, 1)

data <- data.frame(
  Project,
  SAST,
  DAST,
  SCA,
  Unit_Testing,
  Integration_Testing,
  Remediation
)

# Calculate coverage
data$Coverage <- rowMeans(data[, 2:7]) * 100

print(data)

# Projects requiring improvement
improvement <- data[data$Coverage < 80, ]

print("Projects requiring improvement:")
print(improvement)