library(data.table)
# Date of Pfizer approval: August 23, 2021

# Policy data
# Download from: https://github.com/OxCGRT/USA-covid-policy/raw/master/data/OxCGRTUS_timeseries_all.xlsx
stringency_ts <- readxl::read_excel("OxCGRTUS_timeseries_all.xlsx", sheet = "stringency_index") |>
  as.data.table() |>
  tidyfast::dt_pivot_longer(
    cols = `01Jan2020`:`31Dec2020`,
    names_to = "date",
    values_to = "stringency"
  ) |>
  _[, .(region_name, date, stringency)]
stringency <- stringency_ts[, .(stringency = mean(stringency)), region_name]
stringency[region_name == "Washington DC", region_name := "District of Columbia"]

# Outcome data
# Population data from: https://data.census.gov/table?q=PEPPOP2021.NST_EST2021_POP
mortality_raw <- fread("https://github.com/nytimes/covid-19-data/raw/master/us-states.csv") |>
  _[date == "2020-12-31", .(state, deaths)] |>
  setnames("state", "region_name")
pop <- fread("census.csv") |>
  _[, 1:2] |>
  setnames(c("region_name", "population")) |>
  _[, population := stringr::str_replace_all(population, ",", '') |> as.integer()]
mortality <- merge(mortality_raw, pop, by = "region_name")
mortality[, mortality := deaths / population * 100000]

# Merge
covid <- merge(
  stringency,
  mortality[, .(region_name, mortality)],
  by = "region_name"
)
setnames(covid, "region_name", "state")
fwrite(covid, 'covid-states.txt', sep = "\t")
