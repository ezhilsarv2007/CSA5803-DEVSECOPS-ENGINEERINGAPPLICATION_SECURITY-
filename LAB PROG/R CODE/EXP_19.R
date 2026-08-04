n <- 19
num <- n
repeat
{
  sum <- 0
  
  while(num > 0)
  {
    rem <- num %% 10
    sum <- sum + rem^2
    num <- num %/% 10
  }
  if(sum == 1 || sum == 4)
    break
  num <- sum
}
if(sum == 1)
{
  cat(n, "is a Happy Number")
}
if(sum == 4)
{
  cat(n, "is Not a Happy Number")
}