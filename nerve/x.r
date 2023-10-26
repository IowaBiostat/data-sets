data('nerve', package='ACSWR')
DF <- data.frame(Time=nerve)
data.table::fwrite(DF, 'nerve.txt', sep='\t')
