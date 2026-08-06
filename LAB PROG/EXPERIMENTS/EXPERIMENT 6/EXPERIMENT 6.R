# Shift-Left Security Pipeline Simulation

cat("----------------------------------\n")
cat("Traditional Pipeline (Security Checked Late)\n")

traditional_stage <- c(
  "Security Scan","Release","Security Scan","Security Scan","Release",
  "Security Scan","Release","Security Scan","Security Scan","Release"
)

traditional_cost <- c(10,15,10,10,15,10,15,10,10,15)

total_traditional <- 0

for(i in 1:10){
  
  cat(sprintf("  Defect-%-2d detected at %-15s | Cost Units: %d\n",
              i,
              traditional_stage[i],
              traditional_cost[i]))
  
  total_traditional <- total_traditional + traditional_cost[i]
}

cat("Total Remediation Cost:", total_traditional, "units\n\n")

cat("Shift-Left Pipeline (Security Checked Early)\n")

shift_stage <- c(
  "SAST Scan","SCA Scan","SAST Scan","DAST Scan","SAST Scan",
  "SCA Scan","SAST Scan","DAST Scan","SAST Scan","SCA Scan"
)

shift_cost <- c(1,2,1,5,1,2,1,5,1,2)

total_shift <- 0

for(i in 1:10){
  
  cat(sprintf("  Defect-%-2d detected at %-15s | Cost Units: %d\n",
              i,
              shift_stage[i],
              shift_cost[i]))
  
  total_shift <- total_shift + shift_cost[i]
}

cat("Total Remediation Cost:", total_shift, "units\n")

cat("----------------------------------\n")

reduction <- ((total_traditional-total_shift)/total_traditional)*100

cat(sprintf("Cost Reduction with Shift-Left Approach: %.1f%%\n", reduction))

cat("----------------------------------\n")