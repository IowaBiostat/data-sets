library(data.table)
data(anorexia, package='MASS')
anorexia <- as.data.table(anorexia)
anorexia[Treat == 'Cont', Treat := 'Control']
fwrite(anorexia, file='anorexia.txt', sep='\t')
