---
desc: Crossover study of inhaler device instructions
rows: 286
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/inhaler/inhaler.txt')"
---

### Description

A crossover study was carried out to compare two inhalation devices (A and B) in patients who are currently using a  standard inhaler device delivering salbutamol. Group 1 used device A for one week followed by device B for another week. Group 2 used the devices in the reverse order. No wash-out period was felt necessary. In addition to various outcome measures mostly related to the use of devices, patients were to give their assessment on clarity of leaflet instructions accompanying the devices, recorded on an ordinal scale of four categories defined as: easy, only clear after rereading, not very clear, and confusing.

### Variables

* `Group`: Order in which the devices were used (AB, BA)
* `Period1`, `Period2`: Clarity of instructions (1=easy, 2=only clear after rereading, 3=not very clear, 4=confusing)

### Reference

> Ezzet F and Whitehead J (1991). A random effects model for ordinal responses from a crossover trial. *Statistics in Medicine*, **10**: 901-907. <https://doi.org/10.1002/sim.4780100611>
