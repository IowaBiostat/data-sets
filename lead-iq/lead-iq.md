---
desc: IQ levels for children who lived near or far (within 1 mile) from a lead smelter
rows: 124
cols: 2
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/lead-iq/lead-iq.txt')"
---

### Description

Lead is highly poisonous if ingested directly, and affects almost every organ in the body.  In low, indirect doses, the primary biological effect of lead exposure is damage to the nervous system.  The maximum safe level of lead exposure, however, is somewhat controversial.

To investigate the relationship between low-level lead absorption and neurological function, a team of researchers led by the CDC investigated children between the ages of 3 and 15 in El Paso that lived various distances from a large, lead-emitting ore smelter.  This data set contains a small portion of the data collected by the researchers.  In particular, it should be noted that the primary comparison conducted by the researchers was between children with high lead levels and low lead levels, not between children who lived near and far from the smelter.

### Variables

* `Smelter`: Did the subject live within 1 mile of the lead smelter? (Near, Far)
* `IQ`: The subject's IQ score, as measured by the Wechsler Intelligence Scale for Children (WISC)

### Reference

The original study was published in

> Landrigan PJ, Baloh RW, Barthel WF, Whitworth RH, Staehling NW, and Rosenblum BF. (1975).  Neuropsychological dysfunction in children with chronic low-level lead absorption.  *The Lancet*, **305**: 708-712.

I obtained the data from

> Rosner B.  (2006).  *Fundamentals of Biostatistics (6th edition)*.  Duxbury.

