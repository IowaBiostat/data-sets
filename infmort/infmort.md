---
desc: Global infant mortality rates by country
rows: 195
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/infmort/infmort.txt')"
---

### Description

This data set records infant mortality rates for 195 nations across the globe.  The infant mortality rate for a country is the number of deaths among children under one year of age in a given year, divided by the total number of live births in that year.  The data in this file are from 2019.

### Variables

* `Country`: Name of the country
* `Rate`: Infant mortality rate, in deaths per 1,000 live births
* `Region`: Geographical region of the country (Africa/Americas/Asia/Europe/Middle East)

### Reference

The original data comes from:

> United Nations Children's Fund (2019), *[The State of the World's Children](https://data.unicef.org/resources/dataset/sowc-2019-statistical-tables)*.

I slightly modified some of the country names; for example, replacing "Democratic People's Republic of Korea" with "North Korea".
