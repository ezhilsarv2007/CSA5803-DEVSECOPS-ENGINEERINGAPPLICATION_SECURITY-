# Q36 - Vulnerability Mitigation

id <- c("V1", "V2", "V3", "V4")

cvss <- c(8.5, 6.5, 9.0, 5.0)

discovery <- as.Date(c(
  "2026-01-01",
  "2026-01-05",
  "2026-01-10",
  "2026-01-15"
))

remediation <- as.Date(c(
  "2026-01-10",
  "2026-01-12",
  "2026-02-15",
  "2026-01-20"
))

data <- data.frame(
  ID = id,
  CVSS = cvss,
  Discovery = discovery,
  Remediation = remediation
)

# Calculate remediation days
data$MTTR <- as.numeric(data$Remediation - data$Discovery)

print(data)

# Average MTTR
average_mttr <- mean(data$MTTR)

print(paste("Average MTTR:", average_mttr, "days"))

# Deadline = 30 days
exceeded <- data[data$MTTR > 30, ]

print("Vulnerabilities exceeding deadline:")
print(exceeded)