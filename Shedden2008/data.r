suppressPackageStartupMessages(library(Biobase))
suppressPackageStartupMessages(library(GEOquery))
suppressPackageStartupMessages(library(hgu133a.db))
suppressPackageStartupMessages(library(AnnotationDbi))
library(survival)

# load series and platform data from GEO
gset <- getGEO("GSE68465", destdir = getwd(), GSEMatrix =TRUE)[[1]]

# S
sData <- pData(gset)
sTime <- as.character(sData$characteristics_ch1.11)
ind <- sTime != "" & sTime != "months_to_last_contact_or_death: na"
Time <- as.numeric(stringr::str_split_fixed(sTime[ind], ":", 2)[,2])
sStatus <- as.character(sData$characteristics_ch1.4)
Status <- stringr::str_split_fixed(sStatus[ind], ": ", 2)[,2] == "Dead"
S <- Surv(Time, Status)

# X
X <- t(exprs(gset))[ind,]

# Z
Zraw <- sData[ind,grep("characteristics_ch", names(sData))]
for (j in 1:ncol(Zraw)) {
  z.j <- as.character(Zraw[,j])
  colnames(Zraw)[j] <- stringr::str_split_fixed(z.j[1], ": ", 2)[,1]
  Zraw[,j] <- stringr::str_split_fixed(z.j, ": ", 2)[,2]
}
Z <- with(Zraw, data.frame(Sex=Sex,
                           Age=as.numeric(age),
                           Race=race,
                           AdjChemo=clinical_treatment_adjuvant_chemo,
                           SmHist=smoking_history,
                           Margin=surgical_margins,
                           Grade=histologic_grade,
                           stringsAsFactors = FALSE))

# Annotation
ID <- colnames(X)
A <- toTable(hgu133aSYMBOL)
a <- A[,2]
names(a) <- A[,1]
B <- toTable(hgu133aGENENAME)
b <- B[,2]
names(b) <- B[,1]
fData <- data.frame(Symbol=a[ID], Name=b[ID])
rownames(fData) <- ID

saveRDS(list(X=X, S=S, Z=Z, fData=fData), 'Shedden2008.rds')
