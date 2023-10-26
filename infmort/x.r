library(stringr)
library(data.table)

# Download data
loc <- 'https://data.unicef.org/wp-content/uploads/2019/10/Table-2-Child-Mortality-EN.xlsx'
download.file(loc, 'sowc.xlsx')
DT <- as.data.table(readxl::read_excel('sowc.xlsx', range='B7:Q208', col_names=FALSE))[, c(1, 16)]
setnames(DT, '...1', 'Country')
setnames(DT, '...16', 'Rate')

# Preliminary formatting
suppressWarnings(DT[, Rate := as.double(Rate)])
DT <- DT[!is.na(Rate)]
DT[grep('Macedonia', Country), Country := 'Macedonia']
#DT[, Country := str_replace_all(Country, "–", "-")]

# Prepare regions
raw <- readLines('regions.txt')
M <- matrix(raw[raw != ''], byrow=TRUE, ncol=2)
regionList <- str_split(M[,2], '; ')
x <- unlist(regionList) %>% str_replace_all("’", "'")
regionDT <- data.table(Region = rep(M[,1], lapply(regionList, length)), Country = x)
regionDT[grep('Macedonia', Country), Country := 'Macedonia']
regionDT[grep('Swaziland', Country), Country := 'Eswatini']

# Merge and subset
DT <- merge(DT, regionDT, by='Country', all.x=TRUE)
if (any(is.na(DT$Region))) error("Failure to merge")

# Combine regions for purposes of this data set
DT[Region == 'Eastern Europe and Central Asia', Region := 'Europe']
DT[Region == 'Western Europe', Region := 'Europe']
DT[Region == 'West and Central Africa', Region := 'Africa']
DT[Region == 'Eastern and Southern Africa', Region := 'Africa']
DT[Region == 'South Asia', Region := 'Asia']
DT[Region == 'East Asia and Pacific', Region := 'Asia']
DT[Region == 'Middle East and North Africa', Region := 'Middle East']
DT[Region == 'Latin America and Caribbean', Region := 'Americas']
DT[Region == 'North America', Region := 'Americas']

# Manual override on 2 countries
DT[Country == 'Turkmenistan', Region := 'Asia']
DT[Country == 'Tajikistan', Region := 'Asia']

# Fix country names
DT[,Rate := as.numeric(Rate)]
DT[, Country := gsub(' \\(.*', '', Country)]
DT[Country=='Republic of Korea', Country := 'South Korea']
DT[Country=="Democratic People's Republic of Korea", Country := "North Korea"]
DT[Country=="Lao People's Democratic Republic", Country := "Laos"]
DT[Country=="United Republic of Tanzania", Country := "Tanzania"]

# Export
file.remove('sowc.xlsx')
fwrite(DT, file='infmort.txt', sep='\t')
stop()

# Exploratory stuff
DT[order(DT$Rate)]
boxplot(DT$Rate ~ DT$Region, horizontal=TRUE, las=1)
table(DT$Region)

DT[Region=='Europe'][order(Rate)]
DT[Region=='Middle East and North Africa'][order(Rate)]
DT[Region=='Americas'][order(Rate)]
