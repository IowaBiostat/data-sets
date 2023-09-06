data('nerve', package='ACSWR')
DF <- data.frame(Time=nerve)
data.table::fwrite(DF, '../dat/nerve.txt', sep='\t')
