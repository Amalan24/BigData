library(DBI)
library(RODBC)
library(odbc)
con <- dbConnect(odbc::odbc(),"Postgres")

#Read
dbGetQuery(con,"SELECT * FROM list")

#Insertion
dbExecute(con,"INSERT INTO list VALUES(6666,\'R&D\',35),(7777,\'Levi\',25)")

#Updation
dbExecute(con,"UPDATE list SET brand='EastTown' WHERE id=2222")

#Deletion
dbExecute(con,"DELETE FROM list WHERE id=6666")
