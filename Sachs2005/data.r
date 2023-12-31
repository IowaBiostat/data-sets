library(data.table)
data('Sachs', package='gss')
DT <- as.data.table(Sachs)
DT[, grp := NULL]
setnames(DT, 'praf', 'Raf')
setnames(DT, 'pmek', 'Mek')
setnames(DT, 'plcg', 'Plcg')
setnames(DT, 'pip2', 'PIP2')
setnames(DT, 'pip3', 'PIP3')
setnames(DT, 'p44.42', 'Erk')
setnames(DT, 'pakts473', 'Akt')
setnames(DT, 'pka', 'PKA')
setnames(DT, 'pkc', 'PKC')
setnames(DT, 'p38', 'P38')
setnames(DT, 'pjnk', 'Jnk')
for (j in 1:length(DT)) DT[[j]] <- sprintf('%.3f', DT[[j]])
fwrite(DT, sep='\t', file='Sachs2005.txt')
