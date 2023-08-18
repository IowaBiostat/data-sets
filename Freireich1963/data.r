library(data.table)
data(drug6mp, package='KMsurv')
dat <- data.table(
  Pair = rep(drug6mp$pair, each=2),
  Time = as.numeric(t(drug6mp[,c("t1", "t2")])),
  Delta = as.numeric(t(cbind(1, drug6mp$relapse))),
  Group = rep(c("Placebo", "6MP"), nrow(drug6mp)),
  RemStat = rep(c("Partial", "Complete")[drug6mp$remstat], each=2)
)
fwrite(dat, 'Freireich1963.txt', sep="\t")
