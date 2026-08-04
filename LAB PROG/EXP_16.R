n <- 9
square <- n * n
sum <- 0
while(square > 0)
{
  rem <- square %% 10
  sum <- sum + rem
  square <- square %/% 10
}
if(sum == n) cat(n, "is a Neon Number") else cat(n, "is Not a Neon Number")
