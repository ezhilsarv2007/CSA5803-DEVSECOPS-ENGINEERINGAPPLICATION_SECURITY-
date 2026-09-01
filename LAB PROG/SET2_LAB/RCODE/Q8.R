# Q8: Failed Login Detection and Alerting

login_logs <- data.frame(
  User_ID = c(
    "U101", "U101", "U101",
    "U102", "U102",
    "U103", "U104", "U104", "U104", "U104"
  ),
  IP_Address = c(
    "192.168.1.10",
    "192.168.1.10",
    "192.168.1.10",
    "192.168.1.11",
    "192.168.1.11",
    "192.168.1.12",
    "192.168.1.13",
    "192.168.1.13",
    "192.168.1.13",
    "192.168.1.13"
  ),
  Status = c(
    "Failed", "Failed", "Failed",
    "Failed", "Success",
    "Success", "Failed", "Failed", "Failed", "Failed"
  )
)

print(login_logs)

# Define threshold
threshold <- 3

# Select failed attempts
failed_logins <- subset(
  login_logs,
  Status == "Failed"
)

# Count failures by User ID
user_failures <- table(failed_logins$User_ID)

cat("\nFailed attempts by User:\n")
print(user_failures)

# Count failures by IP address
ip_failures <- table(failed_logins$IP_Address)

cat("\nFailed attempts by IP Address:\n")
print(ip_failures)

# Generate alerts
alert_users <- user_failures[user_failures > threshold]
alert_ips <- ip_failures[ip_failures > threshold]

cat("\nALERT - Users exceeding threshold:\n")
print(alert_users)

cat("\nALERT - IP addresses exceeding threshold:\n")
print(alert_ips)