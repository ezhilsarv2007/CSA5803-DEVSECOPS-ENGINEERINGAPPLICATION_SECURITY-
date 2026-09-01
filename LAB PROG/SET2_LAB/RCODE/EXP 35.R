# Q35 - Security Feedback Loop

tool <- c("SAST", "DAST", "SCA")

total <- c(20, 15, 25)
fixed <- c(15, 10, 20)

data <- data.frame(
  Tool = tool,
  Total = total,
  Fixed = fixed
)

data$Pending <- data$Total - data$Fixed
data$Remediation_Percentage <- data$Fixed / data$Total * 100

print(data)

# Total vulnerabilities
total_vulnerabilities <- sum(data$Total)

# Total fixed
total_fixed <- sum(data$Fixed)

# Total pending
total_pending <- sum(data$Pending)

print(paste("Total vulnerabilities:", total_vulnerabilities))
print(paste("Total fixed:", total_fixed))
print(paste("Total pending:", total_pending))

remediation <- total_fixed / total_vulnerabilities * 100

print(paste("Remediation percentage:", remediation, "%"))