source("../script/Data_Cleaning.R")
source("../script/Clustering.R")

# Side by side line plot
par(mfrow=c(1,2))

#plot Gold
plot(DFGC$Date,DFGC$Inflation, type="n", xlab="Year", ylab="Changes")
lines(DFGC$Date,DFGC$Change, col="blue")
lines(DFGC$Date,DFGC$Inflation, col="red")
lines(DFGC$Date,DFGC$Change, col="blue")
title("Gold")

#plot Silver
plot(DFSI$Date,DFSI$Inflation, type="n", xlab="Year", ylab="Changes")
lines(DFSI$Date,DFSI$Inflation, col="red")
lines(DFSI$Date,DFSI$Change, col="blue")
title("Silver")

#plot Wheat
plot(DFWC$Date,DFWC$Inflation, type="n", xlab="Year", ylab="Changes")
lines(DFWC$Date,DFWC$Change, col="blue")
lines(DFWC$Date,DFWC$Inflation, col="red")
title("Wheat")

#plotting silver clusters
plot(SI_cluster1$Date,SI_cluster1$Inflation, type="n", xlab="Year", ylab="Changes", ylim=c(-0.5,.8))
lines(SI_cluster1$Date,SI_cluster1$Inflation, col="red")
lines(SI_cluster1$Date,SI_cluster1$Change, col="blue")
title("Silver Cluster 1")

plot(SI_cluster2$Date,SI_cluster2$Inflation, type="n", xlab="Year", ylab="Changes", ylim=c(-0.5,.8))
lines(SI_cluster2$Date,SI_cluster2$Inflation, col="red")
lines(SI_cluster2$Date,SI_cluster2$Change, col="blue")
title("Silver Cluster 2")

#plotting gold clusters
plot(GC_cluster1$Date,GC_cluster1$Inflation, type="n", xlab="Year", ylab="Changes", ylim=c(-0.5,.8))
lines(GC_cluster1$Date,GC_cluster1$Inflation, col="red")
lines(GC_cluster1$Date,GC_cluster1$Change, col="blue")
title("Gold Cluster 1")

plot(GC_cluster2$Date,GC_cluster2$Inflation, type="n", xlab="Year", ylab="Changes", ylim=c(-0.5,.8))
lines(GC_cluster2$Date,GC_cluster2$Inflation, col="red")
lines(GC_cluster2$Date,GC_cluster2$Change, col="blue")
title("Gold Cluster 2")

#plotting wheat clusters
plot(wheat_cluster1$Date,wheat_cluster1$Inflation, type="n", xlab="Year", ylab="Changes", ylim=c(-1.5,1.5))
lines(wheat_cluster1$Date,wheat_cluster1$Inflation, col="red")
lines(wheat_cluster1$Date,wheat_cluster1$Change, col="blue")
title("Wheat Cluster 1")

plot(wheat_cluster2$Date,wheat_cluster2$Inflation, type="n", xlab="Year", ylab="Changes", ylim=c(-1.5,1.5))
lines(wheat_cluster2$Date,wheat_cluster2$Inflation, col="red")
lines(wheat_cluster2$Date,wheat_cluster2$Change, col="blue")
title("Wheat Cluster 2")
