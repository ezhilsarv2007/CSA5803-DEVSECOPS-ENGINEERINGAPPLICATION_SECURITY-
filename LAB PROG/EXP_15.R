n <- 121
num <- n
rev <- 0
while(num > 0)
{
  rem <- num %% 10
  rev <- rev * 10 + rem
  num <- num %/% 10
}
if(rev == n) cat(n, "is a Palindrome") else cat(n, "is Not a Palindrome")