n <- 27
if(n %% 7 == 0 || n %% 10 == 7)
{
  cat(n, "is a Buzz Number")
}
if(n %% 7 != 0 && n %% 10 != 7)
{
  cat(n, "is Not a Buzz Number")
}