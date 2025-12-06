import psycopg2

conn = None 
def select_something(marks):
    try:
        conn = psycopg2.connect(database="database",user="prince" , password="34542313",host="127.0.0.1" , port=5421)
        cur = conn.cursor()
        cur.execute('''
            select * from student
            where marks > %s
                    ''',(marks))
        
        
        result = cur.fetchall()

        for row in result:
            f_name = row[0]
            l_name = row[1]
            marks = row[2]
            if marks > 70:
                print(f_name , l_name , marks)

        cur.close()


    except(Exception , psycopg2.DatabaseError) as error:
        print(error)

    finally:
        if conn is not None:
            conn.close()
            print("connection close successfully")


select_something(70)