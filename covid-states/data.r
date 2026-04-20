library(data.table)
# Date of Pfizer approval: August 23, 2021

# Policy data
# Download from: https://github.com/OxCGRT/USA-covid-policy/blob/83cfd6be4c465062ea7bb2bb51f4ac5257f02103/data/OxCGRTUS_timeseries_all.xlsx
stringency <- readxl::read_excel("OxCGRTUS_timeseries_all.xlsx", sheet = "stringency_index")

# Outcome data
# Download from: https://github.com/nytimes/covid-19-data/blob/62ef34cfcb60214be873a38d73619da9ea57d50b/us-states.csv
mortality <- fread("us-states.csv")

