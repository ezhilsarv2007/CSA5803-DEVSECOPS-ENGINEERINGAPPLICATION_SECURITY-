library(ggplot2)
library(dplyr)
# Set random seed
set.seed(42)
n <- 30
devops <- data.frame(
  deployment_frequency = rnorm(n, mean = 8, sd = 1.5),
  vulnerabilities = rpois(n, lambda = 6),
  recovery_time = rnorm(n, mean = 5, sd = 1)
)
devsecops <- data.frame(
  deployment_frequency = rnorm(n, mean = 7, sd = 1.2),
  vulnerabilities = rpois(n, lambda = 2),
  recovery_time = rnorm(n, mean = 2.5, sd = 0.7)
)

summary <- data.frame(
  Metric = c("Deployment Frequency",
             "Vulnerabilities",
             "Recovery Time"),
  DevOps = c(
    mean(devops$deployment_frequency),
    mean(devops$vulnerabilities),
    mean(devops$recovery_time)
  ),
  DevSecOps = c(
    mean(devsecops$deployment_frequency),
    mean(devsecops$vulnerabilities),
    mean(devsecops$recovery_time)
  )
)
print(summary)
plot_data <- data.frame(
  Metric = rep(summary$Metric,2),
  Value = c(summary$DevOps,summary$DevSecOps),
  Method = c(rep("DevOps",3),rep("DevSecOps",3))
)
ggplot(plot_data,
       aes(x=Metric,y=Value,fill=Method))+
  geom_bar(stat="identity",position="dodge")+
  labs(title="DevOps vs DevSecOps Comparison",
       x="Metrics",
       y="Mean Value")+
  theme_minimal()
cat("\nCharts generated successfully.\n")