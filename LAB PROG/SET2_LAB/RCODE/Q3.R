# Q3: SAST Vulnerability Analysis

sast <- data.frame(
  Vulnerability_ID = c("V001", "V002", "V003", "V004",
                       "V005", "V006", "V007", "V008"),
  File = c("login.php", "database.php", "login.php",
           "payment.java", "api.py", "admin.java",
           "database.php", "upload.py"),
  Type = c("SQL Injection", "Hard-coded Password",
           "XSS", "SQL Injection",
           "Buffer Overflow", "Authentication Bypass",
           "XSS", "Command Injection"),
  Severity = c("Critical", "High", "Medium", "Critical",
               "High", "Critical", "Low", "High"),
  Status = c("Open", "Open", "Fixed", "Open",
             "Open", "Fixed", "Open", "Open")
)

print(sast)

# Number of vulnerabilities by severity
severity_count <- table(sast$Severity)

cat("Vulnerabilities by Severity:\n")
print(severity_count)

# Files containing Critical vulnerabilities
critical_files <- unique(
  sast$File[sast$Severity == "Critical"]
)

# Files containing High vulnerabilities
high_files <- unique(
  sast$File[sast$Severity == "High"]
)

cat("\nFiles containing Critical vulnerabilities:\n")
print(critical_files)

cat("\nFiles containing High vulnerabilities:\n")
print(high_files)