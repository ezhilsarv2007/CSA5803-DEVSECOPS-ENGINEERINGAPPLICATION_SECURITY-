# Q2: Secure by Design Analysis

projects <- data.frame(
  Project = c("P1", "P2", "P3", "P4", "P5",
              "P6", "P7", "P8", "P9", "P10"),
  Stage = c("Design", "Development", "Testing", "Design",
            "Development", "Production", "Design",
            "Development", "Testing", "Design"),
  Security_Check = c("Yes", "Yes", "No", "Yes", "Yes",
                     "No", "Yes", "Yes", "No", "Yes")
)

print(projects)

# Projects implementing security checks during Design
design_projects <- sum(
  projects$Stage == "Design" &
    projects$Security_Check == "Yes"
)

# Projects implementing security checks during Development
development_projects <- sum(
  projects$Stage == "Development" &
    projects$Security_Check == "Yes"
)

# Total projects in Design and Development
total_design_dev <- sum(
  projects$Stage %in% c("Design", "Development")
)

# Percentage
percentage <- (design_projects + development_projects) /
  total_design_dev * 100

cat("Projects with security checks during Design:",
    design_projects, "\n")

cat("Projects with security checks during Development:",
    development_projects, "\n")

cat("Percentage implementing security checks during Design/Development:",
    percentage, "%\n")