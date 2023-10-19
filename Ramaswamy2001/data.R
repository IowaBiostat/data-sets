# Data
load(url("https://web.stanford.edu/~hastie/glmnet/glmnetData/Ramaswamy.RData"))
type <- c("Breast","Prostate","Lung","Colorectal","Lymphoma","Bladder","Melanoma","Uterus","Leukemia","Renal","Pancreas","Ovary","Mesothelioma","CNS")
X <- Ramaswamy$Train$x
y <- factor(Ramaswamy$Train$y, labels=type)
X.test <- Ramaswamy$Test$x
y.test <- factor(Ramaswamy$Test$y, labels=type)

# Annotation
Anno <- read.delim("../raw/Ramaswamy2001.txt", skip=3, header=FALSE, stringsAsFactors=FALSE, quote="")
ID <- Anno[,2]
library(hu6800.db)
library(hu35ksuba.db)
A1 <- toTable(hu6800SYMBOL)
A2 <- toTable(hu35ksubaSYMBOL)
a <- c(A1[,2], A2[,2])
names(a) <- c(A1[,1], A2[,1])
B1 <- toTable(hu6800GENENAME)
B2 <- toTable(hu35ksubaGENENAME)
b <- c(B1[,2], B2[,2])
names(b) <- c(B1[,1], B2[,1])
fData <- data.frame(Symbol=a[ID], Name=b[ID])
colnames(X) <- colnames(X.test) <- rownames(fData) <- ID

# Save
saveRDS(list(X=X, y=y, X.test=X.test, y.test=y.test, fData=fData), '../dat/Ramaswamy2001.rds')
