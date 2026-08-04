n <- 13
count <- 0
for(i in 1:n)
{
  if(n %% i == 0)
    count <- count + 1
}
if(count == 2) cat(n, "is a Prime Number") else cat(n, "is Not a Prime Number")

