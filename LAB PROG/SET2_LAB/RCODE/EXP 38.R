# Q38 - Predictive Security Risk

data <- data.frame(
  Vulnerabilities = c(3, 8, 15, 2, 12, 20, 5, 18),
  Code_Changes = c(10, 20, 50, 5, 40, 60, 15, 55),
  Failed_Tests = c(0, 2, 5, 0, 4, 7, 1, 6),
  Incidents = c(0, 1, 2, 0, 2, 4, 1, 3),
  Risk = c("Safe", "Warning", "High", "Safe",
           "Warning", "High", "Safe", "High")
)

library(rpart)

model <- rpart(
  Risk ~ Vulnerabilities + Code_Changes +
    Failed_Tests + Incidents,
  data = data,
  method = "class"
)

prediction <- predict(model, data, type = "class")

print(prediction)

accuracy <- mean(prediction == data$Risk) * 100

print(paste("Accuracy:", accuracy, "%"))