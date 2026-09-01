# Q20: Secrets Management Risk Analysis

secrets <- data.frame(
  Application = c(
    "Payment App",
    "Login App",
    "Shopping App",
    "Admin Portal",
    "Mobile API",
    "Banking App",
    "Cloud Service",
    "Employee Portal"
  ),
  Secret_Type = c(
    "API Key",
    "Database Password",
    "Access Token",
    "API Key",
    "Encryption Key",
    "Database Password",
    "Access Token",
    "API Key"
  ),
  Storage_Location = c(
    "Secret Manager",
    "Source Code",
    "Environment Variable",
    "Secret Manager",
    "Source Code",
    "Secret Manager",
    "Environment Variable",
    "Source Code"
  ),
  Encryption_Status = c(
    "Encrypted",
    "Not Encrypted",
    "Encrypted",
    "Encrypted",
    "Not Encrypted",
    "Encrypted",
    "Encrypted",
    "Not Encrypted"
  ),
  Expiration_Date = as.Date(c(
    "2027-01-10",
    "2026-08-01",
    "2026-12-20",
    "2027-05-15",
    "2026-07-01",
    "2027-02-10",
    "2026-11-30",
    "2026-06-15"
  )),
  Exposure_Status = c(
    "Safe",
    "Exposed",
    "Safe",
    "Safe",
    "Exposed",
    "Safe",
    "Safe",
    "Exposed"
  )
)

print(secrets)

# Current date
current_date <- as.Date("2026-09-01")

# Identify expired secrets
expired <- secrets[
  secrets$Expiration_Date < current_date,
]

# Identify exposed secrets
exposed <- secrets[
  secrets$Exposure_Status == "Exposed",
]

# Identify unencrypted secrets
unencrypted <- secrets[
  secrets$Encryption_Status == "Not Encrypted",
]

cat("\nExpired Secrets:\n")
print(expired)

cat("\nExposed Secrets:\n")
print(exposed)

cat("\nUnencrypted Secrets:\n")
print(unencrypted)

# Generate security summary
cat("\n========== SECURITY SUMMARY ==========\n")

cat("Total Secrets:",
    nrow(secrets), "\n")

cat("Expired Secrets:",
    nrow(expired), "\n")

cat("Exposed Secrets:",
    nrow(exposed), "\n")

cat("Unencrypted Secrets:",
    nrow(unencrypted), "\n")

cat("======================================\n")