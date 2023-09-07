# Simulate data
set.seed(1)
n <- 1000
Delivery <- runif(n, 34, 42)
tVac <- runif(n, 30, 40)
EverVac <- rbinom(n, 1, 0.5)
Vac <- EverVac & (tVac < Delivery)
tVac[!EverVac] <- NA
tVac[tVac > Delivery] <- NA
tdap <- round(as.data.frame(cbind(Delivery, Vac, tVac)), 1)
write.table(tdap, file='tdap.txt', sep='\t', row.names=FALSE, quote=FALSE)
