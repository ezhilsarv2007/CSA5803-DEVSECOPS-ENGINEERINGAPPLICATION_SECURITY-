# Q10: Secure Coding Vulnerability Analysis

secure_coding <- data.frame(
  Module = c(
    "Login Module",
    "Payment Module",
    "User Module",
    "File Upload",
    "Database Module",
    "Admin Module",
    "API Module",
    "Authentication Module"
  ),
  Vulnerability = c(
    "SQL Injection",
    "Buffer Overflow",
    "XSS",
    "Insecure Input Validation",
    "SQL Injection",
    "Hard-coded Credentials",
    "XSS",
    "Hard-coded Credentials"
  ),
  Severity = c(
    "Critical",
    "Critical",
    "Medium",
    "High",
    "Critical",
    "High",
    "Medium",
    "High"
  )
)

print(secure_coding)

# Classify vulnerabilities according to severity
low <- subset(
  secure_coding,
  Severity == "Low"
)

medium <- subset(
  secure_coding,
  Severity == "Medium"
)

high <- subset(
  secure_coding,
  Severity == "High"
)

critical <- subset(
  secure_coding,
  Severity == "Critical"
)

cat("\nLow Vulnerabilities:\n")
print(low)

cat("\nMedium Vulnerabilities:\n")
print(medium)

cat("\nHigh Vulnerabilities:\n")
print(high)

cat("\nCritical Vulnerabilities:\n")
print(critical)

# Count each severity
severity_count <- table(secure_coding$Severity)

cat("\nTotal Vulnerabilities by Severity:\n")
print(severity_count)

# Display graph
barplot(
  severity_count,
  main = "Secure Coding Vulnerability Severity",
  xlab = "Severity",
  ylab = "Number of Vulnerabilities",
  col = "tomato"
)