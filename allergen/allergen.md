---
desc: Relationship between household endotoxin levels and sensitivity to allergens
rows: 61
cols: 2
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/allergen/allergen.txt')"
---

### Description

It has been hypothesized that allergies result from a lack of early childhood exposure to antigens. If this hypothesis were true, then we would expect allergies to be more common in very hygienic households with low levels of bacteria and other infectious agents. To test this theory, researchers at the University of Colorado compared concentrations of bacterial endotoxin in house dust between infants with and without allergen sensitivity.

Sixty-one infants 9-24 months old with at least three physician-documented episodes of wheezing were studied.  Allergen sensitivity was measured by skin-prick testing with a panel of common inhalant and food allergens.

### Variables

* `Endotoxin`: Concentration of bacterial endotoxin in house dust (endotoxin units per ml, EU/ml)
* `Allergic`: Result of skin-prick test (TRUE, FALSE, with TRUE indicating a positive allergic reaction)

### Reference

> Gereda JE, Leung DYM, Thatayatikom A, Streib JE, Price MR, Klinnert MD, and Liu AH. (2000). Relation between house-dust endotoxin exposure, type 1 T-cell development, and allergen sensitisation in infants at high risk of asthma.  *The Lancet*, **355**: 1680-1683.
