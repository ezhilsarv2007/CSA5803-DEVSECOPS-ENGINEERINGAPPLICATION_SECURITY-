# Q26 - Security Tool Analysis

tools <- c("SAST", "DAST", "SCA", "Container")
vulnerabilities <- c(25, 18, 30, 15)

data <- data.frame(
  Tool = tools,
  Vulnerabilities = vulnerabilities
)

print(data)

# Tool detecting highest vulnerabilities
highest <- data$Tool[which.max(data$Vulnerabilities)]

print(paste("Highest detecting tool:", highest))

# Bar graph
barplot(data$Vulnerabilities,
        names.arg = data$Tool,
        main = "Vulnerabilities Detected",
        xlab = "Security Tool",
        ylab = "Vulnerabilities")