Replikationsstudie Stellar et al. (2018)

Dieses Repository enthält meine Hausarbeit zur LMU-Replikationsstudie von Stellar et al. (2018). Die Replikationsstudie wurde im Sommersemester 2026 im Rahmen des Forschungsorientierten Praktikums I als Teil des CREP-Projekts durchgeführt.

Autorin: Natalie Startschenko
Kontakt: n.startschenko@campus.lmu.de

Das Repository basiert auf dem von Felix Schönbrodt bereitgestellten Template für die Replikationsstudie.

This is the shared course repository for analyzing the LMU replication study of Stellar et al. (2018), done in summer 2026 as part of the [CREP project](https://www.crep-psych.org).

- [Course teaching material](https://nicebread.github.io/Empra1_2026/)
- [Preregistration](https://osf.io/537aq)
- [OSF project](https://osf.io/cy287/overview) with materials


## Reproducibility

### Open Data

All primary data necessary for reproducing the results is in the `/raw_data` subfolder:

- `Rep01_anonymized.csv`: The study data (item ratings, raw text of writing assignment)
- `Rep01_demographics_anonymized.csv`: The demographic data of the final sample. ATTENTION: For privacy reasons within the course itself (where students might have participation knowledge of specific individuals), the order in this data set was randomized, so that the rows do not match the rows in `Rep01_anonymized.csv`. Do NOT try to merge these two data sets.
- `Rep01_ratings.xlsx`

The data dictionary is in `doc/Data_Dictionary.ods`.

### Open Reproducible Code

- Set the working directory to the root folder of this project.
- There is no need to re-run the script `0a-merge_ratings.R`. This only needs to be done when new data with new writing assignments comes in.
- To reproduce all results, run the scripts `0b-preprocessing.R` to `4-exploratory_analyses.R` in the numerical order.

### Reproducible Manuscript

`manuscript/manuscript.qmd` is the manuscript in apaquarto format. It first sources all R files to make the objects available and then dynamically creates the numbers in the manuscript.

## License

This repository was created by [Felix Schönbrodt](https://nicebread.de).
All code in this repository is under a CC-BY 4.0 license.
