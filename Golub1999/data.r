require(golubEsets)
data("Golub_Merge")

# y
P <- pData(Golub_Merge)
y <- P$ALL.AML
names(y) <- P$Samples

# X
require(vsn)
X <- t(exprs(vsn2(Golub_Merge)))

# Annotation
require("hu6800.db")
Tab <- select(hu6800.db, colnames(X), 'SYMBOL')

mappedProbes <- mappedkeys(hu6800SYMBOL)
mappedSymbols <- unlist(as.list(hu6800SYMBOL[mappedProbes]))
newNames <- mappedSymbols[colnames(X)]
ind <- !is.na(newNames)
colnames(X)[ind] <- newNames[ind]

saveRDS(list(X=X, y=y), file='Golub1999.rds')
