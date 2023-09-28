---
desc: Tips received by a waiter over a several-month period at a restaurant
rows: 244
cols: 7
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/tips/tips.txt')"
---

### Description

The tip that a server at a restaurant receives may be influenced by several factors, such as size of the party, the time of day, and the day of the week. In one restaurant, a waiter recorded the following data on all customers they served during an interval of two and a half months in early 1990. The restaurant was a national chain restaurant located in a suburban shopping mall with a smoking and a non-smoking section.

### Variables

* `TotBill`: Cost of the meal, including tax, in US dollars
* `Tip`: Gratuity, in US dollars
* `Sex`: Sex of person paying for the meal (M=male, F=female)
* `Smoker`: Smoker in party? (No, Yes)
* `Day`: (Thu, Fri, Sat, Sun)
* `Time`: (Day, Night)
* `Size`: Size of the party

### Reference

The original data comes from:

> Bryant PG and Smith MA (1995). *Practical Data Analysis: Case Studies in Business Statistics.*

I obtained the data from:

> Cook D and Swayne DF (2007). *Interactive and Dynamic Graphics for Data Analysis: With R and GGobi*.

This version is slightly reformatted from the version in Cook and Swayne's book.
