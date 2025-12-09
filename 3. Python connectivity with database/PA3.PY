import psycopg2
import sys
import os


database = sys.argv[1]	#name of the database is obtained from the command line argument

user = os.environ.get('PGUSER') 

password = os.environ.get('PGPASSWORD') 

host = os.environ.get('PGHOST')

port = os.environ.get('PGPORT')

conn = None

player = open("player.txt" , "r")
player_name = player.read().strip()

try:
    conn = psycopg2.connect(database=database, user = user, password= password,host= host, port=port)
    cur = conn.cursor()
    cur.execute('''
        select jersey_no from players
        where name =%s''',(player_name,))
        
    result = cur.fetchall()
    if result:
        print(result[0])
    
    cur.close()

except(Exception , psycopg2.databaseError) as error:
    print(error)

finally:
    if conn is not None:
        conn.close()