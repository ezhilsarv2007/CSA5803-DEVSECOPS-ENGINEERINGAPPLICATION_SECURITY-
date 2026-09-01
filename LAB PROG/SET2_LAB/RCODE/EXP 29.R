# Q29 - OWASP Compliance

project <- c("Project A", "Project B", "Project C")

input_validation <- c(1, 1, 0)
authentication <- c(1, 0, 1)
access_control <- c(1, 1, 0)
encryption <- c(1, 0, 1)
error_handling <- c(1, 1, 0)

data <- data.frame(
  Project = project,
  Input_Validation = input_validation,
  Authentication = authentication,
  Access_Control = access_control,
  Encryption = encryption,
  Error_Handling = error_handling
)

print(data)

# Calculate compliance percentage
data$Compliance <- rowMeans(data[, 2:6]) * 100

print(data)

# Projects needing improvement
improvement <- data[data$Compliance < 80, ]

print("Projects requiring improvement:")
print(improvement)