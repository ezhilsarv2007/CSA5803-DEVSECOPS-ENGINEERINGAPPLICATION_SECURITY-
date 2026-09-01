# Q33 - DevSecOps Dashboard

project <- c("Project A", "Project B", "Project C")

detected <- c(40, 30, 50)
fixed <- c(35, 20, 45)
incidents <- c(2, 5, 1)
failed_builds <- c(3, 6, 2)
coverage <- c(90, 70, 95)

data <- data.frame(
  Project = project,
  Detected = detected,
  Fixed = fixed,
  Incidents = incidents,
  Failed_Builds = failed_builds,
  Test_Coverage = coverage
)

print(data)

# Remediation rate
data$Remediation_Rate <- data$Fixed / data$Detected * 100

print(data)

# Vulnerabilities graph
barplot(data$Detected,
        names.arg = data$Project,
        main = "Vulnerabilities Detected",
        ylab = "Count")