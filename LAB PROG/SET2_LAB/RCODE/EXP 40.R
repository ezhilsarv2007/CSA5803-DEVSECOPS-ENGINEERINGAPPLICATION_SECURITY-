# Q40 - GitOps Security Analysis

commit <- c("C101", "C102", "C103", "C104", "C105")

deployment <- c("Success", "Success", "Failed", "Success", "Success")

scan <- c("PASS", "FAIL", "FAIL", "PASS", "PASS")

policy <- c("No", "Yes", "Yes", "No", "No")

approval <- c("Yes", "Yes", "No", "Yes", "Yes")

rollback <- c("No", "Yes", "Yes", "No", "No")

data <- data.frame(
  Commit_ID = commit,
  Deployment = deployment,
  Security_Scan = scan,
  Policy_Violation = policy,
  Approval = approval,
  Rollback = rollback
)

print(data)

# Identify insecure deployments
insecure <- data[
  data$Security_Scan == "FAIL" |
    data$Policy_Violation == "Yes",
]

print("Insecure deployments:")
print(insecure)

# Successful security checks
passed <- data$Security_Scan == "PASS" &
  data$Policy_Violation == "No" &
  data$Approval == "Yes"

percentage <- mean(passed) * 100

print(paste(
  "Deployments passing security checks:",
  percentage,
  "%"
))