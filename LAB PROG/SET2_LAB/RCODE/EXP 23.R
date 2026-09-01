# Q23 - Dependency Risk Assessment

dependency_risk <- function(cvss, vulnerabilities, criticality) {
  
  risk <- cvss + vulnerabilities * 2 + criticality
  
  if (risk >= 15) {
    status <- "Critical"
  } else if (risk >= 8) {
    status <- "Warning"
  } else {
    status <- "Safe"
  }
  
  return(c(Risk_Score = risk, Status = status))
}

# Example
result <- dependency_risk(7, 2, 4)

print(result)