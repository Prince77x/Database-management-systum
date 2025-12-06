import psycopg2

conn = None 

def insert(name, salary, department, position, hireDate):
    try:
        conn = psycopg2.connect(database="test2",user="postgrue",password="12345678",host="127.0.0.1",port=5421)
        print("database connected successfully")
        cur = conn.cursor()
        cur.execute('''
            insert into employee (name, salary, department, position, hireDate)
            values (%s, %s, %s, %s, %s)
        ''',(name, salary, department, position, hireDate))

        conn.commit()
        print("Record inserted successfully")
        cur.close()

    except(Exception,psycopg2.DatabaseError) as error:
        print("Error while connecting to PostgreSQL", error)
    

    finally:
        if conn is not None:
            conn.close()
            print("Database connection closed.")

insert('John Doe', 60000, 'IT', 'Developer', '2023-01-15')