# Q30 - Red Team vs Blue Team

attack <- c("SQL Injection", "XSS", "Phishing", "Brute Force")

severity <- c("High", "Medium", "High", "Medium")

detection_time <- c(10, 15, 20, 12)
response_time <- c(20, 25, 30, 18)

mitigation <- c("Yes", "Yes", "No", "Yes")

data <- data.frame(
  Attack = attack,
  Severity = severity,
  Detection_Time = detection_time,
  Response_Time = response_time,
  Mitigation = mitigation
)

print(data)

# Average times
avg_detection <- mean(data$Detection_Time)
avg_response <- mean(data$Response_Time)

print(paste("Average Detection Time:", avg_detection))
print(paste("Average Response Time:", avg_response))

# Mitigation percentage
mitigation_percentage <- mean(data$Mitigation == "Yes") * 100

print(paste("Mitigation Percentage:", mitigation_percentage, "%"))