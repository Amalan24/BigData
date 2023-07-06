library(DBI)
library(odbc)
library(RODBC)

con <-  odbcConnect("oracle",uid="system",pwd="password")

#Find or Read
sqlQuery(con,"select * from shirt")

#Insert
sqlQuery(con,"Insert into shirt values (6666,'Arrow',29,'US')")

#Deletion
sqlQuery(con,"Delete from shirt Where id=6666")

#Updation
sqlQuery(con,"Update shirt set brand='Polo' where id=3333")
