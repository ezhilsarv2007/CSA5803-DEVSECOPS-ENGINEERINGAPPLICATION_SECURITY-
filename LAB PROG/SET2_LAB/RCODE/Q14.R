# Q14: Early Vulnerability Detection Analysis

vulnerabilities <- data.frame(
  Vulnerability_ID = c(
    "V001", "V002", "V003", "V004",
    "V005", "V006", "V007", "V008",
    "V009"
  ),
  SDLC_Stage = c(
    "Coding",
    "Coding",
    "Coding",
    "Testing",
    "Testing",
    "Testing",
    "Production",
    "Production",
    "Production"
  ),
  Remediation_Days = c(
    2, 3, 4,
    7, 8, 6,
    15, 20, 18
  )
)

print(vulnerabilities)

# Calculate average remediation time
average_time <- aggregate(
  Remediation_Days ~ SDLC_Stage,
  data = vulnerabilities,
  FUN = mean
)

cat("\nAverage Remediation Time:\n")
print(average_time)

# Compare early and late detection
coding_avg <- mean(
  vulnerabilities$Remediation_Days[
    vulnerabilities$SDLC_Stage == "Coding"
  ]
)

production_avg <- mean(
  vulnerabilities$Remediation_Days[
    vulnerabilities$SDLC_Stage == "Production"
  ]
)

cat("\nAverage Coding Remediation Time:",
    coding_avg, "days\n")

cat("Average Production Remediation Time:",
    production_avg, "days\n")

if (coding_avg < production_avg) {
  cat("\nConclusion: Early vulnerability detection reduces remediation effort.\n")
} else {
  cat("\nConclusion: Early detection does not reduce remediation effort in this dataset.\n")
}