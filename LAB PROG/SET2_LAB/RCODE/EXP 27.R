# Q27 - Continuous Security Monitoring

days <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")

incidents <- c(2, 3, 2, 5, 8, 4, 3)
failed_scans <- c(1, 2, 1, 3, 5, 2, 2)

data <- data.frame(
  Day = days,
  Incidents = incidents,
  Failed_Scans = failed_scans
)

print(data)

# Identify abnormal increase
average_failures <- mean(data$Failed_Scans)

abnormal <- data[data$Failed_Scans > average_failures * 1.5, ]

print("Abnormal security failures:")
print(abnormal)

# Graph
plot(failed_scans,
     type = "o",
     xaxt = "n",
     xlab = "Day",
     ylab = "Failed Scans",
     main = "Security Scan Failures")

axis(1, at = 1:7, labels = days)