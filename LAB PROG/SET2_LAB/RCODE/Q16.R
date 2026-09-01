# Q16: Secure Configuration Analysis

config <- data.frame(
  System = c(
    "Web Server",
    "Database Server",
    "Application Server",
    "API Server",
    "File Server",
    "Authentication Server"
  ),
  Password_Policy = c(
    "Strong", "Weak", "Strong",
    "Weak", "Strong", "Strong"
  ),
  Encryption = c(
    "Enabled", "Disabled", "Enabled",
    "Enabled", "Disabled", "Enabled"
  ),
  Firewall = c(
    "Enabled", "Enabled", "Disabled",
    "Enabled", "Disabled", "Enabled"
  ),
  Open_Ports = c(
    2, 8, 6, 3, 10, 1
  ),
  Logging = c(
    "Enabled", "Enabled", "Disabled",
    "Enabled", "Disabled", "Enabled"
  ),
  Compliance = c(
    "Compliant", "Non-Compliant", "Non-Compliant",
    "Non-Compliant", "Non-Compliant", "Compliant"
  )
)

print(config)

# Calculate risk score
config$Risk_Score <-
  ifelse(config$Password_Policy == "Weak", 5, 0) +
  ifelse(config$Encryption == "Disabled", 5, 0) +
  ifelse(config$Firewall == "Disabled", 5, 0) +
  ifelse(config$Open_Ports > 5, 3, 0) +
  ifelse(config$Logging == "Disabled", 3, 0)

# Classify risk
config$Risk_Level <- ifelse(
  config$Risk_Score >= 10,
  "Critical",
  ifelse(
    config$Risk_Score >= 7,
    "High",
    ifelse(
      config$Risk_Score >= 4,
      "Medium",
      "Low"
    )
  )
)

# Non-compliant configurations
non_compliant <- subset(
  config,
  Compliance == "Non-Compliant"
)

cat("\nNon-Compliant Configurations:\n")
print(non_compliant)

cat("\nRisk Classification:\n")
print(
  non_compliant[
    c("System", "Risk_Score", "Risk_Level")
  ]
)