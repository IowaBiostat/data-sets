# I originally obtained this data from:
# http://www.broadinstitute.org/mpr/publications/projects/Prostate_Cancer/Prostate_TN_final0701_allmeanScale.res
# Unfortunately, that link no longer seem to be active.  The following code includes three sections:
#   1. The transfer code used to convert the old RData object to an RDS object
#   2. The original code used to construct the RData object
#   3. Some exploratory code.
#
# Other versions of this data set exist:
#   Efron2010: http://statweb.stanford.edu/~ckirby/brad/LSI/datasets-and-programs/data/prostatedata.RData
#   GitHub: ramhiser/microarray

# Read and process raw data
Data <- read.delim('http://pubs.broadinstitute.org/mpr/projects/Prostate_Cancer/Prostate_TN_final0701_allmeanScale.res', stringsAsFactors=FALSE, header=FALSE)
Data <- Data[,!is.na(Data[1,])]
pData <- Data[1:3,-(1:2)]
fData <- Data[-(1:3),1:2]
eData <- Data[-(1:3),-(1:2)]
IDy <- as.character(pData[1, pData[1,]!=''])
ID <- gsub('__.*', '', IDy)
y <- gsub('.*__', '', IDy)
names(y) <- ID

# GenBank IDs
gID <- gsub('.*/gb=', '', fData[,1])
gID <- gsub(' .*', '', gID)

# X
X <- eData[, pData[1,]!='']
X <- matrix(as.numeric(unlist(X)), nrow(X), ncol(X))
require(vsn)
X <- t(exprs(vsn2(X)))
colnames(X) <- gID
rownames(X) <- ID

saveRDS(list(X=X, y=y), 'Singh2002.rds')

# Additional exploration

summ <- summary(lm(X~y))
tstat <- sapply(summ, function(s) s$coef[2,3])
p <- sapply(summ, function(s) s$coef[2,4])
h <- length(p)
Hist(p, breaks=seq(0,1,.01))

ph <- function(tt) sapply(tt, function(t) sum(p>t)/(h*(1-t)))
tt <- seq(.01, .99, .01)
par(mar=c(5, 5, 0.5, 0.5))
plot(tt, ph(tt), pch=19, xlab='t', ylab=expression(hat(pi)(t)), bty='n', las=1, ylim=c(0.4, 1))
