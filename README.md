# Compliance Reports

You need my .Renviron file to get the paths  

**db.R**: you must run this with R-4.1.3
1. you may have to edit the database name
2. open powershell
3. cd to where your R-4.1.3 install is (for me it's "C:\Program Files\R\R-4.1.3\bin")
4. run this line: .\Rscript.exe (full path to) db.R  

**spp.Rmd**: Used to fill out...  
* the Recreational Fishery data for the compliance report
* the Delaware Bay trawl: the “index” data frame at the end is the YOY geometric mean. The 2025 data was a one-off to accommodate data received in Excel files rather than pull from the database, because these data weren't in the database yet by the time I needed them to complete the report in 2026. As of today the database is still being groomed/error fixing
