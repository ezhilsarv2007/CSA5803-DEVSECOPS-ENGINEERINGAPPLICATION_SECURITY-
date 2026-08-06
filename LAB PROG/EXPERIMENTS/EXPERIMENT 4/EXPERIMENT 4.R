library(ggplot2)
library(reshape2)
risk <- c("SQL Injection",
          "Weak Password Policy",
          "Unpatched Server OS",
          "Misconfigured S3 Bucket",
          "Phishing Attack",
          "Insecure API Endpoint")
likelihood <- c(4,5,3,2,4,3)
impact <- c(5,3,5,4,4,3)
risk_score <- likelihood * impact
category <- ifelse(risk_score >= 20, "Critical",
                   ifelse(risk_score >= 12, "High",
                          ifelse(risk_score >= 6, "Medium","Low")))
risk_data <- data.frame(
  Risk = risk,
  Likelihood = likelihood,
  Impact = impact,
  RiskScore = risk_score,
  Category = category
)
print(risk_data)
matrix <- matrix(0, nrow = 5, ncol = 5)
for(i in 1:length(risk)){
  matrix[impact[i], likelihood[i]] <-
    matrix[impact[i], likelihood[i]] + 1
}
heatmap_data <- melt(matrix)
colnames(heatmap_data) <- c("Impact","Likelihood","Count")
ggplot(heatmap_data,
       aes(Likelihood, Impact, fill = Count)) +
  geom_tile(color="white") +
  geom_text(aes(label=Count), size=5) +
  scale_fill_gradient(low="white", high="red") +
  labs(title="Risk Matrix Heatmap",
       x="Likelihood",
       y="Impact") +
  theme_minimal()
cat("\nRisk Matrix Generated Successfully\n")