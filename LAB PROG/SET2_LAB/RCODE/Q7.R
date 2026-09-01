# Q7: SAST Integration in CI/CD

builds <- data.frame(
  Build = c("B101", "B102", "B103", "B104",
            "B105", "B106"),
  Build_Status = c("Success", "Success", "Failed",
                   "Success", "Success", "Success"),
  SAST_Status = c("Passed", "Failed", "Failed",
                  "Passed", "Failed", "Passed"),
  Vulnerabilities = c(0, 2, 5, 1, 3, 0),
  Severity = c("None", "High", "Critical",
               "Medium", "High", "None"),
  Deployment_Status = c("Deployed", "Blocked", "Blocked",
                        "Deployed", "Blocked", "Deployed")
)

print(builds)

# Identify builds containing Critical or High vulnerabilities
blocked_builds <- subset(
  builds,
  Severity %in% c("Critical", "High")
)

cat("\nBuilds that should be BLOCKED:\n")
print(blocked_builds)

cat("\nBuild Numbers to Block:\n")
print(blocked_builds$Build)