# Q34 - Shift Left Security

project <- c("Project A", "Project B", "Project C")

early_detected <- c(30, 20, 40)
fixed <- c(25, 15, 35)
coverage <- c(90, 70, 95)
failed_gates <- c(2, 5, 1)
remediation_time <- c(3, 6, 2)
deployment_block <- c(10, 25, 5)

data <- data.frame(
  Project = project,
  Early_Detected = early_detected,
  Fixed = fixed,
  Coverage = coverage,
  Failed_Gates = failed_gates,
  Remediation_Time = remediation_time,
  Deployment_Block = deployment_block
)

print(data)

# Graph
barplot(data$Early_Detected,
        names.arg = data$Project,
        main = "Early Vulnerabilities Detected",
        ylab = "Vulnerabilities")