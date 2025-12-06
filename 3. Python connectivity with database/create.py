import psycopg2
 

conn = None
def create_table():
    try:
    # connect to database 
        conn = psycopg2.connect(database="test2",user="postgrue",password="12345678",host="127.0.0.1",port="5432")
        cur = conn.cursor()
        print("Database connected successfully")
        print(conn)

    # create table
        cur.execute('''create table employee
                (id SERIAL PRIMARY KEY,
           name TEXT NOT NULL,
           salary REAL,
           department TEXT,
           position TEXT,
           hireDate DATE);''')
        print("Table created successfully")
        conn.commit() 
    # close cursor
        cur.close()

    except (Exception, psycopg2.DatabaseError) as error:
        print("Error while connecting to PostgreSQL", error)


    finally:
        if conn is not None:
            conn.close()
            print("Database connection closed.")