# From limma user's guide
library(limma)
library(affy)
library(hgu95av2cdf)
library(annotate)
library(hgu95av2.db)

datadir <- file.path(find.package("estrogen"),"extdata")
targets <- readTargets("phenoData.txt",path=datadir,sep="",row.names="filename")
ab <- ReadAffy(filenames=targets$filename, celfile.path=datadir)
eset <- rma(ab)

ID <- featureNames(eset)
#Symbol <- getSYMBOL(ID,"hgu95av2.db")
DF <- select(hgu95av2.db, ID, 'SYMBOL', multiVals='first')
Symbol <- DF[match(ID, DF[,1]),2]
fData(eset) <- data.frame(Symbol=Symbol)

treatments <- factor(c(1,1,2,2,3,3,4,4),labels=c("e10","E10","e48","E48"))
contrasts(treatments) <- cbind(Time=c(0,0,1,1),E10=c(0,1,0,0),E48=c(0,0,0,1))
design <- model.matrix(~treatments)
colnames(design) <- c("Intercept","Time","E10","E48")

# Y
Y <- exprs(eset)
row.names(Y) <- Symbol
row.names(Y)[is.na(Symbol)] <- ID[is.na(Symbol)]
ID <- gsub('.cel', '', targets$filename, fixed=TRUE)
colnames(Y) <- ID

# expCond
expCond <- targets[,2:3]
rownames(expCond) <- ID
colnames(expCond) <- c("Estrogen", "Time")

saveRDS(list(expCond=expCond, Y=Y), 'Scholtens2004.rds')
