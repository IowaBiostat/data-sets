Data <- read.csv('http://www.stat.unipg.it/luca/misc/bmtcrr.csv') %>% as.data.table
setnames(Data, 'D', 'Disease')
setnames(Data, 'ftime', 'Time')
fwrite(Data, file='../dat/Scrucca2010.txt', sep='\t')
