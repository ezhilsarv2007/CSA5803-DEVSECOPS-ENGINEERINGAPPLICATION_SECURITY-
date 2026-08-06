library(igraph)

set.seed(123)

# Create random organizational network
g <- sample_gnm(n = 15, m = 22, directed = FALSE)

# Name the hosts
V(g)$name <- paste0("Host-", 1:15)

# Plot and save graph
png("threat_propagation.png", width = 800, height = 600)

plot(g,
     vertex.color = "skyblue",
     vertex.size = 30,
     vertex.label.cex = 0.8,
     edge.width = 2,
     main = "Threat Propagation Network")

dev.off()

# Attack Surface Analysis
deg <- degree(g)
host <- which.max(deg)

cat("Attack Surface Analysis\n")
cat("Total Hosts:", vcount(g), "\n")
cat("Total Connections:", ecount(g), "\n")
cat("Most Exposed Host:", V(g)$name[host],
    "(Degree Centrality:",
    round(max(deg)/(vcount(g)-1),2),")\n\n")

# Simulated propagation
infected <- c(host)
visited <- infected

for(i in 1:5){
  
  new <- c()
  
  for(v in infected){
    
    nbr <- neighbors(g,v)
    
    for(n in nbr){
      
      if(!(n %in% visited) && runif(1) < 0.6){
        
        new <- c(new,n)
        visited <- c(visited,n)
        
      }
      
    }
    
  }
  
  infected <- unique(new)
  
  cat("Round",i,": Infected Hosts =",length(unique(visited)),"\n")
}

cat("----------------------------------\n")
cat("Propagation graph saved as threat_propagation.png\n")