import psycopg2

conn = None 

def delete_table(id):
    try:
        conn = psycopg2.connect(database="test2",user="postgrue",password="12345678",host="127.0.0.1",port=5421)
        print("datbase connected successfully")
        cur = conn.cursor()
        cur.execute('''
            delete from employee where id=%s
        '''(id))
        conn.commit()
        print("Record deleted successfully")
        cur.close()
    
    except(Exception , psycopg2.DatabaseError) as error:
        print("Error while connecting to PostgreSQL", error)

    finally:
        if conn is not None:
            conn.close()
            print("Database connection closed.")

delete_table(1)