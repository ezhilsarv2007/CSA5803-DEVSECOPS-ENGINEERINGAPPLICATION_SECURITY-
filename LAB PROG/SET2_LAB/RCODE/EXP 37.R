# Q37 - DevSecOps Risk Prediction

data <- data.frame(
  Vulnerabilities = c(5, 10, 20, 3, 15, 25, 7, 18),
  Severity = c(2, 4, 8, 1, 7, 9, 3, 8),
  Failed_Tests = c(1, 3, 6, 0, 5, 8, 2, 7),
  Incidents = c(0, 1, 3, 0, 2, 4, 1, 3),
  Risk = c("Low", "Medium", "High", "Low",
           "Medium", "High", "Low", "High")
)

print(data)

# Install package if required:
# install.packages("rpart")

library(rpart)

model <- rpart(
  Risk ~ Vulnerabilities + Severity + Failed_Tests + Incidents,
  data = data,
  method = "class"
)

# Predict
prediction <- predict(model, data, type = "class")

print(prediction)

# Accuracy
accuracy <- mean(prediction == data$Risk) * 100

print(paste("Accuracy:", accuracy, "%"))