## From http://www.openbugs.net/Examples/Inhalersdata.html
## Original: Ezzet and Whitehead (1991)

## Raw
cums <- c( 59, 122,
   157, 170,
   173, 173,
   175, 175,
   186, 226,
   253, 268,
   270, 270,
   271, 271,
   271, 278,
   278, 280,
   280, 281,
   281, 281,
   282, 284,
   285, 285,
   285, 286,
   286, 286)

## To array
Y <- array(diff(c(0,cums)), dim=c(2, 4, 4), dimnames=list(paste0(LETTERS[1:2], LETTERS[2:1]), 1:4, 1:4))
DF1 <- as.data.frame.table(Y)
DF2 <- DF1[rep(row.names(DF1), DF1$Freq), 1:3]
DT <- as.data.table(DF2)
names(DT) <- c('Group', 'Period1', 'Period2')
data.table::fwrite(DT, '../dat/inhaler.txt', sep='\t')
