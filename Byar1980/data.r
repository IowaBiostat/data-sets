library(data.table)
library(chron)
load(url('https://biostat.app.vumc.org/wiki/pub/Main/DataSets/prostate.sav'))

# Simple imputation for missing values
for (j in 1:ncol(prostate)) {
  if (any(is.na(prostate[,j]))) {
    if (class(prostate[,j])=='factor') {
      prostate[is.na(prostate[,j]),j] <- levels(prostate[,j])[which.max(table(prostate[,j]))]
    } else {
      prostate[is.na(prostate[,j]),j] <- median(prostate[,j], na.rm=TRUE)
    }
  }
}

# Format + export
dat <- as.data.table(prostate)
dat[, patno := NULL]
dat[, sdate := as.Date(sdate)]
setnames(dat, 'rx', 'Trt')
setnames(dat, 'dtime', 'Time')
setnames(dat, 'status', 'Status')
setnames(dat, 'age', 'Age')
setnames(dat, 'stage', 'Stage')
setnames(dat, 'sdate', 'Date')
fwrite(dat, file='Byar1980.txt', sep='\t')
