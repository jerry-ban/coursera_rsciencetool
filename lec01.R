

ucscDb <- dbConnect(MySQL(), user = "genome", host="genome-mysql.cse.ucsc.edu")
result <- dbGetQuery(ucscDb, "show databases;")
dbDisconnect(ucscDb)
result

mergedData2 <- merge(reviews, solutions, by.x="solution_id", by.y="id", all = TRUE)
head(mergeData2[,1:6],3)
reviews[1, 1:6]
