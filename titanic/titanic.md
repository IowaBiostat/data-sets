---
desc: Survival of passengers on board the Titanic
rows: 2201
cols: 4
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/titanic/titanic.txt')"
---

### Description

This data set provides information on the fate of passengers on the fatal maiden voyage of the ocean liner Titanic, summarized according to economic status, sex, age and survival.

### Variables

* `Class`: (1st, 2nd, 3rd, Crew); the first three categories refer to the class of ticket purchased by the passenger
* `Sex`: (Male, Female)
* `Age`: (Child, Adult)
* `Survived`: (No, Yes)

### Reference

This is a standard data set in `R`.  The data were originally compiled by the British Board of Trade:

> British Board of Trade (1990), *Report on the Loss of the 'Titanic' (S.S.)*.  British Board of Trade Inquiry Report. Gloucester, UK: Allan Sutton Publishing.

The R version follows the organization and compilation of the data presented in:

> Dawson RJM (1995). The 'Unusual Episode' Data Revisited. *Journal of Statistics Education*, 3:3.

Note that there is not complete agreement among various primary sources as to the exact numbers on board, rescued, or lost.
