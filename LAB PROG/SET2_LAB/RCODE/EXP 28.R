# Q28 - Chaos Testing

component <- c("Server", "Network", "Service", "Database")

recovery_time <- c(10, 25, 15, 35)
failure_rate <- c(5, 12, 8, 18)
availability <- c(99, 96, 98, 94)

data <- data.frame(
  Component = component,
  Recovery_Time = recovery_time,
  Failure_Rate = failure_rate,
  Availability = availability
)

print(data)

# Component with lowest availability
lowest <- data$Component[which.min(data$Availability)]

print(paste("Lowest resiliency:", lowest))

# Recovery time graph
barplot(data$Recovery_Time,
        names.arg = data$Component,
        main = "Recovery Time",
        ylab = "Minutes")