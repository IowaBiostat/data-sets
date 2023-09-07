load(url('http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/support2.sav'))

Raw <- support2[support2$dzclass %in% c('ARF/MOSF'),]
Raw <- Raw[,c('age', 'death', 'd.time', 'num.co', 'edu', 'income', 'race', 'hday', 'meanbp', 'wblc', 'hrt', 'resp', 'temp',
              'pafi', 'alb', 'bili', 'crea', 'sod', 'ph', 'glucose', 'bun', 'urine')]
names(Raw) <- c('Age', 'Death', 'Time', 'NCom', 'Edu', 'Income', 'Race', 'HDay', 'MAP', 'WBC', 'Pulse', 'Resp', 'Temp', 'PAFI',
                'Alb', 'Bili', 'Crea', 'Sod', 'PH', 'Glucose', 'BUN', 'Urine')
Raw[,1:3] <- Raw[,c(2,3,1)]
names(Raw)[1:3] <- names(Raw)[c(2,3,1)]

# Random imputation
imp <- function(Data, x) {
  m <- is.na(Data[,x])
  n <- sum(m)
  Data[m,x] <- sample(Data[!m,x], n, replace=TRUE)
  Data
}
Imp <- Raw
for (j in names(Raw)) {
  Imp <- imp(Imp, j)
}

# Split into test and train
ind <- sample(1:nrow(Imp))
Train <- Imp[ind,][1:1227,]
Test <- Imp[ind,][1228:nrow(Imp),]
X <- Test[, -(1:2)]
y <- Test[, 1:2]

# Output
write.table(Train, file='support.txt', row.names=FALSE, quote=FALSE, sep='\t')
save(X, file='X.RData')
save(y, ind, file='y.RData')

# y stats
require(survival)
fit <- survfit(Surv(Time, Death) ~ 1, Test)
plot(fit)
sum(Test$Time >= 180)
sum(Test$Time < 180)
sum(Test$Time < 180 & Test$Death==0)
