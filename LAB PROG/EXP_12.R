for(n in 2:100)
{
  count <- 0
  for(i in 1:n)
  {
    if(n %% i == 0)
      count <- count + 1
  }
  if(count == 2)
    cat(n, " ")
}