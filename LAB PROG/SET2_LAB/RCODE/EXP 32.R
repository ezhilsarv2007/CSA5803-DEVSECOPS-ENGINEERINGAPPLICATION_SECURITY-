# Q32 - Fuzz Testing

test_id <- c("T1", "T2", "T3", "T4", "T5")

input_type <- c("Normal", "Random", "Special", "Random", "Malformed")

execution <- c("Success", "Crash", "Success", "Crash", "Success")

crashes <- c(0, 1, 0, 1, 0)

response_time <- c(10, 50, 12, 60, 15)

severity <- c("Low", "High", "Low", "Critical", "Medium")

data <- data.frame(
  Test_ID = test_id,
  Input_Type = input_type,
  Execution = execution,
  Crashes = crashes,
  Response_Time = response_time,
  Severity = severity
)

print(data)

# Crash rate
crash_rate <- mean(data$Crashes) * 100

print(paste("Crash Rate:", crash_rate, "%"))

# Abnormal inputs
abnormal <- data[data$Crashes == 1, ]

print("Inputs causing abnormal behavior:")
print(abnormal)