# Q22 - Security Gate

security_gate <- function(critical, high, medium, low) {
  
  # Security requirements
  if (critical > 0) {
    return("FAIL")
  }
  
  if (high > 2) {
    return("FAIL")
  }
  
  return("PASS")
}

# Example
result <- security_gate(0, 1, 5, 10)

print(result)