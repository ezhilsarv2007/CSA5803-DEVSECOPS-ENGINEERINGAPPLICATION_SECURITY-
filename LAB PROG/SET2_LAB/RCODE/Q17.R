# Q17: Security Metrics in CI/CD Pipeline

pipeline <- data.frame(
  Builds = c(100),
  Failed_Builds = c(15),
  Security_Scans = c(90),
  Vulnerabilities_Detected = c(50),
  Vulnerabilities_Fixed = c(40)
)

print(pipeline)

# Build success rate
successful_builds <-
  pipeline$Builds - pipeline$Failed_Builds

build_success_rate <-
  successful_builds / pipeline$Builds * 100

# Vulnerability detection rate
vulnerability_detection_rate <-
  pipeline$Vulnerabilities_Detected /
  pipeline$Security_Scans * 100

# Vulnerability remediation rate
vulnerability_remediation_rate <-
  pipeline$Vulnerabilities_Fixed /
  pipeline$Vulnerabilities_Detected * 100

cat("\nBuild Success Rate:",
    build_success_rate, "%\n")

cat("Vulnerability Detection Rate:",
    vulnerability_detection_rate, "%\n")

cat("Vulnerability Remediation Rate:",
    vulnerability_remediation_rate, "%\n")