library(DBI)
library(odbc)
library(RODBC)

con <-  odbcConnect("mysql",uid="root",pwd="2000")

#Insertion
insertion <- "INSERT INTO shirt VALUES (9, 'Arrow',29,'US')"
sqlQuery(con,insertion)

#Read or Find
sqlQuery(con,"SELECT * FROM shirt")

#Update
updation <- "UPDATE shirt SET country = 'US' WHERE brand='Polo'"
sqlQuery(con,updation)

#Deletion
deletion <- "DELETE FROM shirt WHERE brand = 'Arrow'"
sqlQuery(con,deletion)