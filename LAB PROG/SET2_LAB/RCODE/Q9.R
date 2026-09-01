# Q9: DevSecOps Vulnerability Analysis

vulnerabilities <- data.frame(
  Vulnerability_ID = c(
    "V001", "V002", "V003", "V004",
    "V005", "V006", "V007", "V008",
    "V009", "V010"
  ),
  Severity = c(
    "Critical", "High", "Medium", "Low",
    "High", "Critical", "Medium", "Low",
    "High", "Medium"
  ),
  Component = c(
    "Login", "Database", "API", "UI",
    "Payment", "Authentication", "API",
    "UI", "Database", "Server"
  ),
  Remediation_Status = c(
    "Open", "Fixed", "Open", "Fixed",
    "Open", "Open", "Fixed", "Fixed",
    "Open", "Fixed"
  )
)

print(vulnerabilities)

# Count vulnerabilities by severity
severity_count <- table(vulnerabilities$Severity)

cat("\nVulnerability Count by Severity:\n")
print(severity_count)

# Pie chart
pie(
  severity_count,
  main = "DevSecOps Vulnerabilities by Severity",
  labels = paste(
    names(severity_count),
    severity_count,
    sep = ": "
  )
)