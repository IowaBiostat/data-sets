---
desc: Association between drug use and tailgating behavior in young people
rows: 119
cols: 3
ext: txt
code: "read.delim('https://raw.githubusercontent.com/IowaBiostat/data-sets/main/tailgating/tailgating.txt')"
---

### Description

Drug use by young people is a concern for several reasons, among them the possibility of its association with risky behavior in other areas such as driving behavior.  This study used driving simulation to evaluate the potential link between recreational drug use and risky driving behavior, as measured by average following distance during a car-following task.  In the task, drivers were instructed to follow a lead vehicle that was programmed to randomly vary its speed.  As it does so, more cautious drivers respond by following a safer distance, while riskier drivers respond by tailgating.

All participants completed a simulated drive in SIREN (Simulator for Research in Ergonomics and Neuroscience), an interactive
driving simulator that creates an immersive, real-time virtual environment for assessing at-risk drivers in a medical setting.  SIREN comprises a 1994 GM Saturn with the running gear removed, embedded electronic sensors, and miniature cameras for recording driver performance, a sound system and surrounding screens, four LCD projectors with image generators, and computers for scenario design, control, and data collection.

### Variables

* `Group`: Drug use group (ALC, MDMA, NODRUG, THC).  Subjects were classified according to the "hardest" drug they routinely used.  So for example, if a subject used ecstasy (MDMA) and marijuana (THC), they were grouped as MDMA.  If they used any drugs harder than MDMA (e.g., cocaine), they were excluded.
* `Distance`: Average following distance (meters)
* `Drug`: Simplification of `Group` (1, 0).  A 1 denotes subjects who used illegal drugs (THC or MDMA), a 0 denotes subjects who did not (ALC or NODRUG).

### Reference

> Dastrup E, Lees MN, Bechara A, Dawson JD, and Rizzo M. (2010).  Risky car following in abstinent users of MDMA.  *Accident Analysis & Prevention*, **42**: 867-873.
