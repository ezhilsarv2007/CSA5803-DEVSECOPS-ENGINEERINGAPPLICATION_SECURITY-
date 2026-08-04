A <- matrix(c(1, 2, 3, 4), nrow = 2)

B <- matrix(c(5, 6, 7, 8), nrow = 2)

C <- A %*% B

cat("Matrix A\n")
print(A)

cat("Matrix B\n")
print(B)

cat("Product of Matrices\n")
print(C)