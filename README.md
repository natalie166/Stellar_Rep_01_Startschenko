# Replikationsstudie Stellar et al. (2018)

Dieses Repository enthält den Code und das Manuskript meiner Hausarbeit zur LMU-Replikationsstudie von [Stellar et al. (2018)](https://doi.org/10.1037/pspi0000109), die im Sommersemester 2026 im Rahmen des Forschungsorientierten Praktikums I als Teil des [CREP-Projekts](https://www.crep-psych.org) durchgeführt wurde.

Autorin: Natalie Startschenko  
Kontakt: n.startschenko@campus.lmu.de

Das Repository basiert auf dem von Felix Schönbrodt bereitgestellten Repository für die Replikationsstudie.

- [Lehrmaterial zur Veranstaltung](https://nicebread.github.io/Empra1_2026/)
- [Präregistrierung](https://osf.io/537aq)
- [OSF-Projekt](https://osf.io/cy287/overview) mit Materialien

## Reproduzierbarkeit

### Offene Daten

Alle für die Reproduktion der Ergebnisse erforderlichen Primärdaten befinden sich im Unterordner `/raw_data`:

- `Rep01_anonymized.csv`: Studiendaten (Itemratings und Rohtext der Schreibaufgabe)
- `Rep01_demographics_anonymized.csv`: Demografische Daten der finalen Stichprobe. ACHTUNG: Aus Datenschutzgründen innerhalb der Veranstaltung (da Studierende möglicherweise Kenntnis über die Teilnahme bestimmter Personen haben) wurde die Reihenfolge in diesem Datensatz randomisiert. Daher entsprechen die Zeilen nicht den Zeilen in `Rep01_anonymized.csv`. Die beiden Datensätze dürfen NICHT zusammengeführt werden.
- `Rep01_ratings.xlsx`

Das Codebuch befindet sich unter `doc/Data_Dictionary.ods`.

### Offener reproduzierbarer Code

- Das Arbeitsverzeichnis muss auf den Stammordner dieses Projekts gesetzt werden.
- Das Skript `0a-merge_ratings.R` muss nicht erneut ausgeführt werden. Dies ist nur erforderlich, wenn neue Daten mit neuen Schreibaufgaben hinzukommen.
- Um alle Ergebnisse zu reproduzieren, müssen die Skripte `0b-preprocessing.R` bis `4-exploratory_analyses.R` in numerischer Reihenfolge ausgeführt werden.

### Reproduzierbares Manuskript

`manuscript/manuscript.qmd` enthält das Manuskript im apaquarto-Format. Zunächst werden alle R-Dateien eingelesen, um die entsprechenden Objekte verfügbar zu machen. Anschließend werden die Kennwerte im Manuskript dynamisch erzeugt.

## Lizenz

Dieses Repository basiert auf einem von [Felix Schönbrodt](https://nicebread.de) erstellten Repository. Der gesamte Code in diesem Repository steht unter einer CC-BY-4.0-Lizenz.
