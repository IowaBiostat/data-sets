DT <- fread('https://web.stanford.edu/~hastie/StatLearnSparsity_files/DATA/cgh.txt')
saveRDS(DT$V1, 'glioma.rds')
