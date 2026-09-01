# Q21 - Automated Security Risk Classification

# Function to calculate risk
calculate_risk <- function(probability, impact, severity, exposure) {
  
  # Calculate overall risk score
  risk_score <- (probability * impact * severity * exposure) / 10
  
  # Classify the risk
  if (risk_score <= 20) {
    risk <- "Low Risk"
  } else if (risk_score <= 40) {
    risk <- "Medium Risk"
  } else if (risk_score <= 70) {
    risk <- "High Risk"
  } else {
    risk <- "Critical Risk"
  }
  
  return(c(Risk_Score = risk_score, Risk_Level = risk))
}


# Application data
applications <- data.frame(
  Application = c("App1", "App2", "App3", "App4"),
  Probability = c(2, 5, 7, 9),
  Impact = c(3, 6, 8, 10),
  Severity = c(2, 5, 7, 9),
  Exposure = c(2, 5, 8, 10)
)

# Calculate risk for each application
applications$Risk_Score <- with(
  applications,
  (Probability * Impact * Severity * Exposure) / 10
)

# Classify applications
applications$Risk_Level <- ifelse(
  applications$Risk_Score <= 20,
  "Low Risk",
  ifelse(
    applications$Risk_Score <= 40,
    "Medium Risk",
    ifelse(
      applications$Risk_Score <= 70,
      "High Risk",
      "Critical Risk"
    )
  )
)

# Display result
print(applications)