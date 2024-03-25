library(data.table)
library(magrittr)
data(darwin.maize, package='agridat')
dat <- as.data.table(darwin.maize) %>%
  dcast(pair + pot ~ type, value.var = 'height')
dat[, pair := NULL]
fwrite(dat, file='corn.txt', sep='\t')
