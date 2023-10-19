library(GEOquery)
gset <- getGEO("GSE49577", GSEMatrix =TRUE)[[1]]

# X
XX <- t(exprs(gset))
IDx <- gsub("Sample name: ", "", as.character(pData(gset)$description))
rownames(XX) <- IDx
Gene <- as.character(fData(gset)$ILMN_Gene)
X <- t(apply(XX, 1, function(x) {tapply(x, Gene, mean)}))

# fData
fData <- fData(gset)[match(colnames(X), Gene),]

# sData
raw <- read.delim('phenodata_matrix.txt', row.names=1, stringsAsFactors=FALSE)
IDy <- raw$ID
sData <- raw[match(IDx, IDy), -1]
rownames(sData) <- IDx

# A little exploration
with(raw, table(Day, Treatment, CellLine))
xyplot(RTV ~ Day | CellLine, raw, group = Treatment, pch=19, auto.key=TRUE)

#save(X, fData, sData, file='data.RData')

# Format for web
y <- log2(sData$RTV)
sData <- sData[,c("Treatment", "Day")]

saveRDS(list(X=X, y=y, fData=fData, sData=sData), file="../dat/Koussounadis2014.rds")
