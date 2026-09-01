# Q6: Shift-Left vs Traditional Security

phases <- data.frame(
  Phase = c(
    "Design",
    "Coding",
    "Testing",
    "Deployment",
    "Production"
  ),
  Vulnerabilities = c(20, 35, 25, 15, 5)
)

# Total vulnerabilities
total_vulnerabilities <- sum(phases$Vulnerabilities)

# Percentage at each phase
phases$Percentage <-
  phases$Vulnerabilities /
  total_vulnerabilities * 100

print(phases)

cat("\nTotal Vulnerabilities:",
    total_vulnerabilities, "\n")

# Bar chart
barplot(
  phases$Vulnerabilities,
  names.arg = phases$Phase,
  main = "Vulnerabilities Detected by Development Phase",
  xlab = "Development Phase",
  ylab = "Number of Vulnerabilities",
  col = "steelblue"
)