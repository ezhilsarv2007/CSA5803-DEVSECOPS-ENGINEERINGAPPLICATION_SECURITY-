n <- 18
num <- n
sum <- 0
while(num > 0)
{
  rem <- num %% 10
  sum <- sum + rem
  num <- num %/% 10
}

if(n %% sum == 0)
{
  cat(n, "is a Harshad Number")
}
if(n %% sum != 0)
{
  cat(n, "is Not a Harshad Number")
}