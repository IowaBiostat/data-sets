# scp hpc-data:/Shared/Fisher/archive/old-dat/mccarter/exp/expression-values.RData ./
# load('expression-values.RData')
# scp hpc-data:/Shared/Fisher/archive/old-dat/mccarter/meta/geneDescriptions.txt ./
# Raw <- read.delim('geneDescriptions.txt', stringsAsFactors=FALSE)
E <- expression.values@E
conditions <- c("TP","OP","TL","OL")
ind <- list(c(1,2),c(4,5),c(8,9),c(10,11))
n.genes <- dim(E)[1]
Design <- cbind(rep(1,8),
                c(rep(1,4),rep(0,4)),
                rep(c(1,1,0,0),2),
                c(rep(1,2),rep(0,6)))

# Y (expression measurements)
Y <- E[,unlist(ind)]
colnames(Y) <- paste0(rep(conditions, each=2), rep(1:2, 4))

# expCond
expCond <- data.frame(Environment=rep(c('plate', 'liquid'), each=4),
                Celltype=rep(rep(c('swarmer', 'swimmer'), each=2), 2))

# Annotation
geneInfo <- Raw[,2]
names(geneInfo) <- Raw[,1]
geneInfo <- geneInfo[rownames(Y)]

saveRDS(list(expCond=expCond, Y=Y, geneInfo=geneInfo), file='Gode2011.rds')
