# Social Network Analysis using R
#          -Visualisation of clusters for "Father"
library(igraph)
#Download the Language dataset and chose it.
data <- read.csv(file.choose(), header=T)
#Data frame of cluster number and combined attributes language and word
y <- data.frame(data$Cluster, paste(data$Word, data$Language))
#Data frame of attributes language and word
#y <- data.frame(data$Language, data$Word)
#Data frame of cluster number and word
#y <- data.frame(data$Cluster, data$Word)

#creation of network
net <- graph.data.frame(y, directed=F)

#Community Detection
net <- graph.data.frame(y, directed = F)
cnet <- cluster_edge_betweenness(net)
#plotting the community structure
plot(cnet,
     net,
     vertex.size = 25,
     vertex.label.cex = 1)
