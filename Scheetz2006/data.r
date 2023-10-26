# https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE5680

# Import
f <- '../raw/Scheetz2006.txt'
Probes <- scan(f, nlines=1, what="character", quiet=TRUE)
X <- matrix(scan(f, skip=1, quiet=TRUE), byrow=TRUE, ncol=length(Probes))
colnames(X) <- Probes
ind <- grep("1389163_at", Probes)
y <- X[,ind]
X <- X[,-ind]

# Annotation
library(rat2302.db)
x <- rat2302SYMBOL
A <- toTable(rat2302SYMBOL)
a <- A[,2]; names(a) <- A[,1]
B <- toTable(rat2302GENENAME)
b <- B[,2]; names(b) <- B[,1]
C <- toTable(rat2302CHR)
c <- C[,2]; names(c) <- C[,1]
fData <- data.frame(Symbol=a[colnames(X)], Name=b[colnames(X)], Chr=c[colnames(X)], stringsAsFactors = FALSE)
rownames(fData) <- colnames(X)
get("1367458_at", rat2302SYMBOL)
get("1367458_at", rat2302GENENAME)
get("1389163_at", rat2302SYMBOL)
get("1389163_at", rat2302GENENAME)
get("1389163_at", rat2302CHR)

# Save
saveRDS(list(X=X, y=y, fData=fData), "Scheetz2006.rds")
