# Q19: Software Composition Analysis

sca <- data.frame(
  Dependency = c(
    "Log4j",
    "OpenSSL",
    "jQuery",
    "Spring Framework",
    "Apache HTTP",
    "React",
    "Bootstrap",
    "Node.js"
  ),
  Version = c(
    "2.14.1",
    "1.0.1",
    "3.4.1",
    "5.2.0",
    "2.4.49",
    "18.2.0",
    "3.3.7",
    "18.16.0"
  ),
  Known_Vulnerability = c(
    "CVE-2021-44228",
    "CVE-2014-0160",
    "CVE-2020-11022",
    "CVE-2022-22965",
    "CVE-2021-41773",
    "None",
    "CVE-2019-8331",
    "None"
  ),
  CVSS = c(
    10.0, 7.5, 6.1, 9.8,
    7.5, 0, 6.1, 0
  ),
  Dependency_Status = c(
    "Vulnerable",
    "Vulnerable",
    "Vulnerable",
    "Vulnerable",
    "Vulnerable",
    "Safe",
    "Vulnerable",
    "Safe"
  )
)

print(sca)

# Select vulnerable dependencies
vulnerable <- subset(
  sca,
  Dependency_Status == "Vulnerable"
)

# Classify risk based on CVSS
vulnerable$Risk_Level <- ifelse(
  vulnerable$CVSS >= 9,
  "Critical",
  ifelse(
    vulnerable$CVSS >= 7,
    "High",
    ifelse(
      vulnerable$CVSS >= 4,
      "Medium",
      "Low"
    )
  )
)

cat("\nVulnerable Dependencies:\n")
print(vulnerable)

cat("\nDependency Risk Classification:\n")
print(
  vulnerable[
    c("Dependency", "CVSS", "Risk_Level")
  ]
)
