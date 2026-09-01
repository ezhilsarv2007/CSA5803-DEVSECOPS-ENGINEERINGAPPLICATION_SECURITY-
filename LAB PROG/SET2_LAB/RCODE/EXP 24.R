# Q24 - IAM Analysis

users <- data.frame(
  User = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Role = c("Admin", "User", "Admin", "User", "Manager"),
  Permissions = c(10, 3, 9, 2, 6),
  Login_Frequency = c(20, 15, 0, 2, 18),
  Privileged_Access = c("Yes", "No", "Yes", "No", "No"),
  MFA = c("Yes", "Yes", "No", "Yes", "No")
)

print(users)

# Excessive privileges
excessive <- users[users$Permissions > 7, ]
print(excessive)

# Inactive accounts
inactive <- users[users$Login_Frequency == 0, ]
print(inactive)

# Missing MFA
missing_mfa <- users[users$MFA == "No", ]
print(missing_mfa)

# Calculate compliance
compliant <- users$Permissions <= 7 &
  users$Login_Frequency > 0 &
  users$MFA == "Yes"

compliance_percentage <- mean(compliant) * 100

print(paste("IAM Compliance:", compliance_percentage, "%"))