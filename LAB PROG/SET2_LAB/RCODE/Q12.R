# Q12: Infrastructure as Code Security Analysis

iac <- data.frame(
  Configuration_File = c(
    "network.tf",
    "database.tf",
    "server.tf",
    "storage.tf",
    "security.tf",
    "application.tf",
    "firewall.tf",
    "backup.tf"
  ),
  Resource = c(
    "VPC",
    "Database",
    "EC2 Server",
    "S3 Bucket",
    "IAM Role",
    "Application",
    "Firewall",
    "Backup"
  ),
  Security_Violation = c(
    "Open Port",
    "Weak Password",
    "None",
    "Public Access",
    "Excessive Permissions",
    "None",
    "None",
    "Unencrypted Backup"
  ),
  Severity = c(
    "High",
    "Critical",
    "Low",
    "High",
    "High",
    "Low",
    "Low",
    "Medium"
  ),
  Remediation_Status = c(
    "Open",
    "Open",
    "Fixed",
    "Open",
    "Open",
    "Fixed",
    "Fixed",
    "Open"
  )
)

print(iac)

# Identify insecure configurations
insecure <- subset(
  iac,
  Security_Violation != "None"
)

cat("\nInsecure Configurations:\n")
print(insecure)

# Calculate compliant resources
compliant <- sum(iac$Security_Violation == "None")

total_resources <- nrow(iac)

compliance_percentage <-
  (compliant / total_resources) * 100

cat("\nTotal Resources:", total_resources, "\n")
cat("Compliant Resources:", compliant, "\n")
cat("Security Compliance Percentage:",
    compliance_percentage, "%\n")