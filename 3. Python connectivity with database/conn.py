# template to connect to postgresql database
import psycopg2

conn = None

try:
    # connect to database 
    conn = psycopg2.connect(database="test2",user="postgrue",password="12345678",host="127.0.0.1",port="5432")
    print("Database connected successfully")
    print(conn)




except (Exception, psycopg2.DatabaseError) as error:
    print("Error while connecting to PostgreSQL", error)



finally:
    if conn is not None:
        conn.close()
        print("Database connection closed.")