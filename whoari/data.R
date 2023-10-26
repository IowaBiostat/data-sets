Data <- fread('../raw/ari/ari.csv')[country=='Ethiopia']
y <- as.numeric(factor(Data$cprot, levels=c("None", "Cold,cough", "Pneumonia", "Severe pneumonia", "Very severe disease")))
Data[, illd := NULL]     # More of an outcome than a predictor
Data[, bcpc := NULL]     # "Blood culture rank"?
Data[, lp.pos := NULL]   # Positive lumbar puncture...seems like kind of an extreme test for pneumonia?
Data[, adt := NULL]      # Treatment indicated: More of an outcome
Data[, ova := NULL]      # Illness severity: More of an outcome
Data[is.na(wght), wght := median(Data$wght, na.rm=TRUE)]   # Impute weight
number <- sapply(Data, class) %in% c('integer', 'numeric')
nomiss <- sapply(Data, function(x) !any(is.na(x)))
X <- as.matrix(Data[, which(nomiss & number), with=FALSE])
saveRDS(list(X=X, y=y), file='../dat/whoari.rds')


# quick analysis
require(MASS)
fit.ols <- lm(y~X)
lam <- 10^(seq(-3, 3, length=49))
ll <- log10(lam)
n <- length(y)
fit <- lm.ridge(y~X, lambda=lam*n)
matplot(ll, coef(fit)[,-1], lty=1, col=pal(15), type="l", lwd=3, xaxt="n",
        xlab=expression(lambda), ylab="", las=1, xlim=c(3,-3), bty="n")

XX <- cbind(1, X)
Y <- tcrossprod(XX, coef(fit))
d <- svd(X)$d
dx <- length(d)
div <- d^2 + rep(n*lam, rep(dx, length(lam)))
n <- nrow(X)
RSS <- colSums((y - Y)^2)
df <- colSums(matrix(d^2/div, dx))
GCV <- RSS/(1-df/n)^2

ind <- which.min(GCV)
l <- lam[ind]
W <- solve(crossprod(X)/n+l*diag(ncol(X)))
b <- coef(fit)[ind,-1]
s2 <- RSS[ind]/(n-df[ind])
V <- s2/n*W
z <- b/sqrt(diag(V))
ord <- order(z, decreasing=TRUE)
fit.ols <- lm(y-mean(y)~0+., data=as.data.frame(X))
z.ols <- summary(fit.ols)$coef[,3]
Tab <- cbind(z, z.ols)[ord,]
rownames(Tab) <- colnames(X)[ord]

bTab <- cbind(b, coef(fit.ols))
rownames(bTab) <- colnames(X)
bTab[order(b-coef(fit.ols)),]

seTab <- cbind(sqrt(diag(V)), sqrt(diag(vcov(fit.ols))))
seTab[order(seTab[,1]-seTab[,2]),]

ind <- which.min(GCV)
b <- coef(fit.rg)[ind,]
v <- c('absu', 'afe')
summary(fit.lm)$coef[v,]
