# Q4: Security Log Analysis

logs <- data.frame(
  Timestamp = c(
    "2026-09-01 08:00",
    "2026-09-01 08:05",
    "2026-09-01 08:10",
    "2026-09-01 08:15",
    "2026-09-01 08:20",
    "2026-09-01 08:25",
    "2026-09-01 08:30",
    "2026-09-01 08:35"
  ),
  User_ID = c("U101", "U102", "U103", "U101",
              "U104", "U105", "U102", "U106"),
  IP_Address = c("192.168.1.10", "192.168.1.11",
                 "192.168.1.12", "192.168.1.10",
                 "192.168.1.13", "192.168.1.14",
                 "192.168.1.11", "192.168.1.15"),
  Event_Type = c("Login", "Login", "File Access", "Login",
                 "Password Change", "Login", "File Access",
                 "Login"),
  Status = c("Success", "Failed", "Success", "Failed",
             "Success", "Failed", "Success", "Success"),
  Severity = c("Low", "High", "Medium", "High",
               "Low", "Critical", "Medium", "Low")
)

print(logs)

# Successful activities
successful <- subset(logs, Status == "Success")

# Failed activities
failed <- subset(logs, Status == "Failed")

cat("\nSuccessful Activities:\n")
print(successful)

cat("\nFailed Activities:\n")
print(failed)

# Summary based on severity
severity_summary <- table(logs$Severity)

cat("\nSecurity Events by Severity:\n")
print(severity_summary)