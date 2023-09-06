# Case data
RawData <- read.delim("~/HDrive/LinuxHome/dat-old/payami/NGRC_AAO_TopSNPData.txt", stringsAsFactors=FALSE)
Data <- data.frame(Onset=RawData$age_onset,
                   SNP_A=round(RawData$SNP_A),
                   SNP_B=round(RawData$SNP_B),
                   SNP_C=round(RawData$SNP_C))

# Combine
write.table(Data, file='parkinsons.txt', quote=FALSE, row.names=FALSE, sep='\t')

# Check
require(survival)
fit <- survreg(Surv(Time, Status)~., Data)
summary(fit)



# Make up Control Data
n <- nrow(RawCases)
set.seed(7)
Controls <- data.frame(Time=RawData$age_blood_draw,
                       Status=0,
                       SNP_A=rbinom(n, 1, mean(Cases$SNP_A)/2),
                       SNP_B=rbinom(n, 1, mean(Cases$SNP_B)/2),
                       SNP_C=rbinom(n, 1, mean(Cases$SNP_C)/2))

