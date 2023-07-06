library(mongolite)

newdb <- mongo(collection="Details",db="students")
newdb

#find method
newdb$find()
newdb$find('{"Name":"Fameen"}')

#insertion
a <- c('{"Name":"Kailash","Age":21,"native":"Chidhambaram"}','{"Name":"Arun","Age":20,"native":"Pudukottai"}')
newdb$insert(a)

#update
newdb$update('{"Name":"Ashwins"}','{"$set":{"Name":"Ashwin"}}')

#delete
newdb$remove('{"Name":"Arun"}',just_one=TRUE)

#aggregate
newdb$count('{"native":"Trichy"}')
newdb$count()

newdb$distinct({"native"})

