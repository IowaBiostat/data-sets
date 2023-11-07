# BiocManager::install("stjudem")
library(stjudem)
library(zeallot)
suppressPackageStartupMessages(library(org.Hs.eg.db))
suppressPackageStartupMessages(library(hgu95av2.db))
suppressPackageStartupMessages(library(AnnotationDbi))
data(stjude)

# y
ind <- stjude$labels %in% c("BCR", "E2A", "Hyperdip", "MLL", "T", "TEL")
y <- as.factor(stjude$labels[ind])

# X
X <- t(stjude$expr[,ind])

# Annotation
fData <- merge(toTable(hgu95av2SYMBOL) %>% as.data.table,
               toTable(hgu95av2GENENAME) %>% as.data.table,
               by="probe_id", all.x=TRUE) %>%
  merge(toTable(hgu95av2CHR) %>% as.data.table,
        by="probe_id", all.x=TRUE)
setkey(fData, probe_id)
fData <- fData[!duplicated(probe_id)][colnames(X)]
stopifnot(all.equal(fData$probe_id, colnames(X)))

# Analyze
library(glmnet)
cvfit <- cv.glmnet(X, y, family='multinomial')
fit <- cvfit$glmnet.fit
B <- do.call(cbind, coef(fit, s=cvfit$lambda.min))
colnames(B) <- fit$classnames
table(apply(B!=0, 1, sum))

# Generate prediction set
# set.seed(1)  SHOULD HAVE DONE THIS!
m <- apply(X, 2, mean)
c(d, u, v) %<-% svd(sweep(X, 2, m))
Z <- matrix(rnorm(248*100), 248, 100)
XX <- sweep(tcrossprod(crossprod(Z, diag(d/sqrt(nrow(X)))), v), 2, m, "+")

# Generate fake outcomes
P <- predict(fit, newx=XX, type='response', s=cvfit$lambda.min)[,,1]
yy <- character(100)
for (i in 1:100) yy[i] <- fit$classnames[which(rmultinom(1, 1, P[i,]) == 1)]
yy <- factor(yy, levels=levels(y))

# Export
saveRDS(list(X=X, y=y, Xnew=XX, fData=fData), '../dat/Yeoh2002.rds')
saveRDS(yy, '../dat/Yeoh2002-y.rds')
