import MySQLdb



my_query = "SELECT count(*) FROM tls206_person
            WHERE person_ctry_code=='US'"

## Code for issuing a database query from a python session
## running on the server itself
## Establish the db connection
conn = MySQLdb.connect(host="127.0.0.1",
                       user="markhuberty" ,
                       passwd="***",
                       db="patstatOct2011"
                       )

conn_cursor = conn.cursor()

## Execute the query
conn_cursor.execute(my_query)

## Collect the output
output = conn_cursor.fetchall()
## Shut down the 
conn_cursor.close()
conn.close()



## Code for issuing a database query from a python session
## running on the server itself
## Establish the db connection
conn = MySQLdb.connect(host="127.0.0.1",
                       user="markhuberty" ,
                       passwd="***",
                       db="patstatOct2011"
                       )

conn_cursor = conn.cursor()

## Execute the query
conn_cursor.execute(my_query)

## Collect the output
output = conn_cursor.fetchall()
## Shut down the 
conn_cursor.close()
conn.close()  
