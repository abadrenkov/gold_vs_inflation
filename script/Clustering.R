source("Data_Cleaning.R")
source("R_Wheat.R")

# segment data into two parts: 1257-1900 and 1901-2011
first_inflation_GC_cluster = DFGC[DFGC$Date < 1901, 2] #2 is Inflation, #3 is change in price
second_inflation_GC_cluster = DFGC[DFGC$Date > 1900, 2]
first_price_GC_cluster = DFGC[DFGC$Date < 1901, 3]
second_price_GC_cluster = DFGC[DFGC$Date > 1900, 3]

first_inflation_SI_cluster = DFSI[DFSI$Date < 1901, 2]
second_inflation_SI_cluster = DFSI[DFSI$Date > 1900, 2]
first_price_SI_cluster = DFSI[DFSI$Date < 1901, 3]
second_price_SI_cluster = DFSI[DFSI$Date > 1900, 3]

GC_cluster1 = cbind(DFGC$Date[DFGC$Date < 1901], first_inflation_GC_cluster, first_price_GC_cluster)
GC_cluster1 = as.data.table(GC_cluster1)
GC_cluster1 = as.data.frame(GC_cluster1)
names(GC_cluster1) = c("Date", "Inflation", "Change")

GC_cluster2 = cbind(DFGC$Date[DFGC$Date > 1900], second_inflation_GC_cluster, second_price_GC_cluster)
GC_cluster2 = as.data.table(GC_cluster2)
GC_cluster2 = as.data.frame(GC_cluster2)
names(GC_cluster2) = c("Date", "Inflation", "Change")

SI_cluster1 = cbind(DFSI$Date[DFSI$Date < 1901], first_inflation_SI_cluster, first_price_SI_cluster)
SI_cluster1 = as.data.table(SI_cluster1)
SI_cluster1 = as.data.frame(SI_cluster1)
names(SI_cluster1) = c("Date", "Inflation", "Change")

SI_cluster2 = cbind(DFSI$Date[DFSI$Date > 1900], second_inflation_SI_cluster, second_price_SI_cluster)
SI_cluster2 = as.data.table(SI_cluster2)
SI_cluster2 = as.data.frame(SI_cluster2)
names(SI_cluster2) = c("Date", "Inflation", "Change")

first_inflation_wheat_cluster = DFWC[DFWC$Date < 1901, 2] #2 is Inflation, #3 is change in price
second_inflation_wheat_cluster = DFWC[DFWC$Date > 1900, 2]
first_price_wheat_cluster = DFWC[DFWC$Date < 1901, 3]
second_price_wheat_cluster = DFWC[DFWC$Date > 1900, 3]

wheat_cluster1 = cbind(DFWC$Date[DFWC$Date < 1901], first_inflation_wheat_cluster, first_price_wheat_cluster)
wheat_cluster1 = as.data.frame(wheat_cluster1)
names(wheat_cluster1) = c("Date", "Inflation", "Change")

wheat_cluster2 = cbind(DFWC$Date[DFWC$Date > 1900], second_inflation_wheat_cluster, second_price_wheat_cluster)
wheat_cluster2 = as.data.frame(wheat_cluster2)
names(wheat_cluster2) = c("Date", "Inflation", "Change")

gold = read.csv("../data/cleaned/DFG_positive_inflation.csv")
gold_positive_inflation_cluster1 = cbind(gold$Date[gold$Date < 1901], gold$Inflation[gold$Date <1901], gold$Change[gold$Date <1901])
gold_positive_inflation_cluster1 = as.data.frame(gold_positive_inflation_cluster1)
names(gold_positive_inflation_cluster1) = c("Date", "Inflation", "Change")

gold_positive_inflation_cluster2 = cbind(gold$Date[gold$Date > 1900], gold$Inflation[gold$Date > 1900], gold$Change[gold$Date > 1900])
gold_positive_inflation_cluster2 = as.data.frame(gold_positive_inflation_cluster2)
names(gold_positive_inflation_cluster2) = c("Date", "Inflation", "Change")

silver = read.csv("../data/cleaned/DFS_positive_inflation.csv")
silver_positive_inflation_cluster1 = cbind(silver$Date[silver$Date < 1901], silver$Inflation[silver$Date <1901], silver$Change[silver$Date <1901])
silver_positive_inflation_cluster1 = as.data.frame(silver_positive_inflation_cluster1)
names(silver_positive_inflation_cluster1) = c("Date", "Inflation", "Change")

silver_positive_inflation_cluster2 = cbind(silver$Date[silver$Date > 1900], silver$Inflation[silver$Date > 1900], silver$Change[silver$Date > 1900])
silver_positive_inflation_cluster2 = as.data.frame(silver_positive_inflation_cluster2)
names(silver_positive_inflation_cluster2) = c("Date", "Inflation", "Change")
