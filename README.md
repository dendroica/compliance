# Compliance Reports

You need my .Renviron file to get the paths  

## Rec Fishery
**spp-rec.Rmd**: Used to fill out the Recreational Fishery data for the compliance report

## Fishery Independent
**db.R**: you must run this with R-4.1.3
1. open powershell
2. cd to where your R-4.1.3 install is (for me it's "C:\Program Files\R\R-4.1.3\bin")
3. run this line: .\Rscript.exe (full path to) db.R  

**weakfish-dbtrawl.R**: the “index” data frame at the end is the YOY geometric mean. The 2025 data was a one-off to accommodate data received in Excel files rather than pull from the database, because these data weren't in the database yet by the time I needed them to complete the report in 2026
