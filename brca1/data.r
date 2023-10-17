# Data
Data <- fread('~/big/brca1/breast-cancer-gene-expr.txt', na.strings = 'null')
Data <- Data[complete.cases(Data)]
y <- as.numeric(Data[Gene_ID=='BRCA1', -(1:2)])
X <- t(as.matrix(Data[Gene_ID!='BRCA1', -(1:2)]))
colnames(X) <- Data[Gene_ID!='BRCA1']$Gene_ID
rownames(X) <- NULL

# Annotation
library("org.Hs.eg.db")
A <- toTable(org.Hs.egSYMBOL)
B <- toTable(org.Hs.egCHR)
C <- toTable(org.Hs.egGENENAME)
fData <- merge(merge(A, B, by="gene_id"), C, by="gene_id")
fData <- subset(fData, !duplicated(symbol))
row.names(fData) <- fData$symbol
fData <- fData[colnames(X),-(1:2)]
row.names(fData) <- colnames(X)

# Export
saveRDS(list(X=X, y=y, fData=fData), 'brca1.rds')
