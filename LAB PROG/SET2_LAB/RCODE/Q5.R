# Q5: Security Risk Assessment

risks <- data.frame(
  Risk = c(
    "SQL Injection",
    "Data Leakage",
    "Weak Password",
    "XSS Attack",
    "Unauthorized Access",
    "Malware"
  ),
  Probability = c(5, 4, 3, 4, 5, 2),
  Impact = c(5, 5, 2, 3, 5, 4)
)

# Calculate Risk Score
risks$Risk_Score <- risks$Probability * risks$Impact

# Classify risks
risks$Risk_Level <- ifelse(
  risks$Risk_Score >= 15,
  "High",
  ifelse(risks$Risk_Score >= 8, "Medium", "Low")
)

print(risks)

# Graphical representation
barplot(
  risks$Risk_Score,
  names.arg = risks$Risk,
  las = 2,
  main = "Software Risk Assessment",
  xlab = "Risk",
  ylab = "Risk Score",
  col = "orange"
)