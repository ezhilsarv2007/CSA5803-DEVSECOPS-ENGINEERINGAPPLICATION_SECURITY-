# Q13: OWASP Vulnerability Analysis

owasp <- data.frame(
  Vulnerability = c(
    "Broken Access Control",
    "Cryptographic Failures",
    "Injection",
    "Insecure Design",
    "Security Misconfiguration",
    "Vulnerable Components",
    "Authentication Failures",
    "Software Integrity Failures",
    "Logging Failures",
    "SSRF"
  ),
  Occurrences = c(
    25, 18, 30, 15, 22,
    12, 20, 8, 10, 6
  )
)

print(owasp)

# Identify most frequent vulnerability
most_frequent <- owasp[
  which.max(owasp$Occurrences),
]

cat("\nMost Frequently Occurring Vulnerability:\n")
print(most_frequent)

# Sort vulnerabilities
sorted_owasp <- owasp[
  order(-owasp$Occurrences),
]

# Select top five
top_five <- head(sorted_owasp, 5)

cat("\nTop Five Vulnerabilities:\n")
print(top_five)

# Bar chart
barplot(
  top_five$Occurrences,
  names.arg = top_five$Vulnerability,
  main = "Top 5 OWASP Vulnerabilities",
  xlab = "Vulnerability",
  ylab = "Number of Occurrences",
  las = 2,
  col = "steelblue"
)