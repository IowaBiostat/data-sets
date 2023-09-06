load("/home/pbreheny/HDrive/LinuxHome/dat-old/seamon/Data.RData")

tDeath <- Data$DSS[,1]
sDeath <- rep("Censored", length(tDeath))
sDeath[Data$DSS[,2]==1] <- 'Disease'
sDeath[Data$OD[,2]==1] <- 'Other'

tRecur <- Data$TTP[,1]
sRecur <- Data$TTP[,2]

Data <- cbind(tDeath, sDeath, tRecur, sRecur)
write.table(Data, file='Podzielinski2012.txt', quote=FALSE, sep='\t', row.names=FALSE)
