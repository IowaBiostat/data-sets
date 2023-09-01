# Raw formatting
All <- read.table('raw.txt', stringsAsFactors=FALSE, skip=1, header=TRUE)
write.table(All, row.names=FALSE, sep='\t', quote=FALSE, file='mortality.txt')

# Looking around
All <- read.delim('mortality.txt')
y <- 1960





# Just 2010
Data <- subset(All, Year==2010 & Age != '110+')
Remainder <- subset(All, Year==2010 & Age == '110+')
Age <- as.numeric(Data$Age)
with(Data, plot(Age, Total/1000, las=1, lwd=3, col='slateblue', type='o', pch=19,
     ylab='Deaths (thousands)'))

AtRisk <- rev(cumsum(c(Remainder$Total, rev(Data$Total)))[-1])
Hazard <- Data$Total/AtRisk
plot(Age, Hazard, las=1, lwd=3, col='slateblue', type='o', pch=19)
plot(Age, log(Hazard), las=1, lwd=3, col='slateblue', type='o', pch=19)

# M/F
Data <- subset(All, Year==2010 & Age != '110+')
Remainder <- subset(All, Year==2010 & Age == '110+')
Data$Age <- as.numeric(Data$Age)
AtRisk <- rev(cumsum(c(Remainder$Male, rev(Data$Male)))[-1])
mHazard <- Data$Male/AtRisk
AtRisk <- rev(cumsum(c(Remainder$Female, rev(Data$Female)))[-1])
fHazard <- Data$Female/AtRisk
Hazard <- cbind(fHazard, mHazard)
matplot(Age, log(Hazard), type='l', las=1, lty=1, lwd=3, col=pal(2))


# Proper
y <- 1933
Age <- y:2010 - y
J <- length(Age)
n <- numeric(J)
for (i in 1:J) {
  n[i] <- All[All$Year==(y+i-1) & All$Age==(i-1), 'Total']
}
