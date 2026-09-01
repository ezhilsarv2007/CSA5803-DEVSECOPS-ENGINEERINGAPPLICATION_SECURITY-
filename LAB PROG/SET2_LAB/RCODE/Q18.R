# Q18: Automated Security Controls in CI/CD

builds <- data.frame(
  Build_Number = c(
    "B201", "B202", "B203", "B204",
    "B205", "B206", "B207"
  ),
  Unit_Test_Status = c(
    "Passed", "Passed", "Failed", "Passed",
    "Passed", "Passed", "Passed"
  ),
  Security_Scan_Status = c(
    "Passed", "Failed", "Failed", "Passed",
    "Failed", "Passed", "Passed"
  ),
  Vulnerabilities = c(
    0, 2, 5, 1, 3, 0, 1
  ),
  Severity = c(
    "None", "High", "Critical", "Medium",
    "Critical", "None", "Low"
  ),
  Deployment_Status = c(
    "Deployed", "Blocked", "Blocked", "Deployed",
    "Blocked", "Deployed", "Deployed"
  )
)

print(builds)

# Identify Critical vulnerability builds
blocked_builds <- subset(
  builds,
  Severity == "Critical"
)

cat("\nBuilds that should be BLOCKED:\n")
print(blocked_builds)

cat("\nBuild Numbers to Block:\n")
print(blocked_builds$Build_Number)