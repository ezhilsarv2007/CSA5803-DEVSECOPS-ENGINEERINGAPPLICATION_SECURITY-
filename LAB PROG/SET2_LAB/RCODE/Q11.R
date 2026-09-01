# Q11: DAST Security Testing Analysis

# Create DAST dataset
dast <- data.frame(
  URL = c(
    "https://app1.com",
    "https://app2.com",
    "https://app3.com",
    "https://app4.com",
    "https://app5.com",
    "https://app6.com",
    "https://app7.com",
    "https://app8.com"
  ),
  HTTP_Status = c(200, 200, 404, 200, 500, 200, 200, 403),
  Vulnerability = c(
    "SQL Injection",
    "XSS",
    "Broken Link",
    "CSRF",
    "Command Injection",
    "Security Misconfiguration",
    "XSS",
    "Authentication Failure"
  ),
  Severity = c(
    "Critical",
    "High",
    "Low",
    "Medium",
    "Critical",
    "Medium",
    "High",
    "High"
  ),
  Scan_Result = c(
    "Failed",
    "Failed",
    "Passed",
    "Failed",
    "Failed",
    "Failed",
    "Failed",
    "Failed"
  )
)

# Display dataset
print(dast)

# Count vulnerabilities by severity
severity_summary <- table(dast$Severity)

cat("\nDAST Vulnerability Summary:\n")
print(severity_summary)

# Display failed scans
failed_scans <- subset(dast, Scan_Result == "Failed")

cat("\nFailed Security Scans:\n")
print(failed_scans)

# Total vulnerabilities
cat("\nTotal Vulnerabilities:",
    nrow(failed_scans), "\n")