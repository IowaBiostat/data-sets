library(data.table)
library(stringr)
load('~/lss/Fisher/archive/res/grpreg/data/raw.rdata')
load('~/lss/Fisher/archive/res/grpreg/data/mullins.rdata')
subj <- fread(
  '~/lss/Fisher/archive/res/grpreg/data/raw/subj_description.final',
  header = FALSE,
  fill = Inf
)

# Fix subject table (inconsistent capitalization)
subj[, V1 := toupper(V1)]
setkey(subj, V1)

# Remove duplicated SNPs
raw <- raw[!grepl('\\.1', rownames(raw)), ]
snp_dt <- as.data.table(mullins) |>
  _[!duplicated(SNP)]
setkey(snp_dt, SNP)

# Determine id, snp order
rid <- sort(colnames(raw))
cid <- sort(rownames(raw))

# y
y <- subj[rid]$V2
names(y) <- subj[rid]$V1

# x
x <- t(raw)[rid, cid]

# gene
group <- snp_dt[cid]$Cluster
names(group) <- snp_dt[cid]$SNP

# check
identical(names(y), rownames(x))
identical(names(group), colnames(x))

# save
list(x = x, y = y, group = group) |> saveRDS('glcamd.rds')
