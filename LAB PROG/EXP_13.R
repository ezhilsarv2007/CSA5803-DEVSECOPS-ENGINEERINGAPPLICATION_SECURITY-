n <- 153
num <- n
sum <- 0
while(num > 0)
{
  rem <- num %% 10
  sum <- sum + rem^3
  num <- num %/% 10
}
if(sum == n) cat(n, "is an Armstrong Number") else cat(n, "is Not an Armstrong Number")