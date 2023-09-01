E <- read.delim("nejm_brca_release.txt", skip=3, header=FALSE)[,-(1:3)]
Gene.ID <- read.delim("nejm_brca_release.txt", skip=3, stringsAsFactors=FALSE, header=FALSE)[,2]
rownames(E) <- make.unique(as.character(Gene.ID))
Group <- as.character(read.delim("nejm_brca_release.txt", skip=1, nrow=1, stringsAsFactors=FALSE, header=FALSE)[1,-(1:3)])
colnames(E) <- make.unique(Group)

j <- which(Group=="Sporadic/Meth.BRCA1")
E <- E[,-j]
Group <- Group[-j]

Group[Group=="BRCA1"] <- paste("BRCA1", 1:sum(Group=="BRCA1"), sep=".")
Group[Group=="BRCA2"] <- paste("BRCA2", 1:sum(Group=="BRCA2"), sep=".")
Group[Group=="Sporadic"] <- paste("Sporadic", 1:sum(Group=="Sporadic"), sep=".")

DT <- data.table(Group=Group, t(E))
fwrite(DT, file='dat/hedenfalk.txt', sep='\t')
