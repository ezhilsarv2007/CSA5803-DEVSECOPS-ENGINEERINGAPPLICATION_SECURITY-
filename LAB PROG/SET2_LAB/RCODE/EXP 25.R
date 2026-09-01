# Q25 - Security Incident Analysis

months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
incidents <- c(12, 18, 10, 25, 20, 15)

data <- data.frame(Month = months, Incidents = incidents)

print(data)

# Highest incident month
highest <- data$Month[which.max(data$Incidents)]

print(paste("Highest incidents:", highest))

# Monthly average
average <- mean(data$Incidents)

print(paste("Monthly average:", average))

# Line graph
plot(data$Incidents,
     type = "o",
     xaxt = "n",
     xlab = "Month",
     ylab = "Number of Incidents",
     main = "Security Incident Trend")

axis(1, at = 1:6, labels = months)