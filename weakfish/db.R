library(RODBC)
#update filepath below with the current filename
detrawl <- file.path(Sys.getenv("VIN"), "Delaware Bay Finfish Trawl Survey/DBTrawl1991-2025_10-01-2026.accdb")
weakfish_trawl <- function(path_to_db, outfile) {
  dummy_db <- odbcConnectAccess2007(access.file = path_to_db)
  boats <- sqlQuery(dummy_db, 'SELECT * FROM Weakfish') #BLUE CRAB: SPP = 99
  tows <- sqlQuery(dummy_db, paste0('SELECT * FROM "HEAD+CATCH"'))
  length <- sqlQuery(dummy_db, "SELECT * FROM LENGTHS WHERE COMMON_NAME = 'Weakfish'")
  odbcClose(dummy_db)
  save(boats,tows,length,file=outfile) #tows,
}
weak <- weakfish_trawl(detrawl, file.path(Sys.getenv("FILEPATH"), "weakfish.RData"))
odbcCloseAll()