require(Sleuth3)
y <- ex1217$Mortality
X <- as.matrix(ex1217[,-(1:2)])
rownames(X) <- ex1217[,1]
colnames(X) <- names(ex1217)[-(1:2)]
saveRDS(list(X=X, y=y), file='../dat/pollution.rds')
