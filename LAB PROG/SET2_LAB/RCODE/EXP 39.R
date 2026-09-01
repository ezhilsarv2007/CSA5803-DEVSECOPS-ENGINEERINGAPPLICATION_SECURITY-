# Q39 - CI/CD Security Dashboard

release <- c("R1", "R2", "R3", "R4")

build_success <- c(1, 1, 0, 1)
SAST <- c(5, 10, 20, 3)
DAST <- c(2, 5, 8, 1)
SCA <- c(3, 7, 10, 2)
security_gate <- c("PASS", "PASS", "FAIL", "PASS")
remediation <- c(90, 80, 50, 95)
coverage <- c(90, 85, 60, 95)

data <- data.frame(
  Release = release,
  Build_Success = build_success,
  SAST = SAST,
  DAST = DAST,
  SCA = SCA,
  Security_Gate = security_gate,
  Remediation = remediation,
  Coverage = coverage
)

print(data)

# Deployment decision
data$Deployment <- ifelse(
  data$Security_Gate == "PASS" &
    data$Coverage >= 80,
  "Suitable",
  "Not Suitable"
)

print(data)

# Graph
barplot(data$Coverage,
        names.arg = data$Release,
        main = "Security Test Coverage",
        ylab = "Coverage %")