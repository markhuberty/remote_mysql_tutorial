## Import the DBI package
library(DBI)

## Set username variables for database access
username <- "markhuberty"
password <- "***"
db <- "patstatOct2011"


## Sample code for querying the patstat database when
## running in an R session on the server
## Establish the query
my.query <- "SELECT count(*) FROM tls206_person 
             WHERE person_ctry_code=="US""

## Establish the connection
conn <- dbConnect("MySQL",
                  username=username,
                  password=password,
                  dbname=db
                  )
## Pass the query to the db 
query <- dbSendQuery(conn, my.query)

## Note that -1 fetches all records. Set it to a 
## 0 < N < infinity to fetch N rows.
output <- fetch(query, -1)

dbDisconnect(conn)


## Sample code for querying the patstat database when
## running in an R session on your local machine, via an ssh tunnel
## Establish the query
my.query <- "SELECT count(*) FROM tls206_person 
             WHERE person_ctry_code=="US""

## Establish the connection
conn <- dbConnect("MySQL",
                  username=username,
                  password=password,
                  dbname=db,
                  host="127.0.0.1",
                  port=3306
                  )
## Pass the query to the db 
query <- dbSendQuery(conn, my.query)

## Note that -1 fetches all records. Set it to a 
## 0 < N < infinity to fetch N rows.
output <- fetch(query, -1)

dbDisconnect(conn)
