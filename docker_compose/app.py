import os
import psycopg2


def fetch_data():
    conn = psycopg2.connect(host="postgres", port=5432, user="postgres", password="password", database="Petrov")
    cursor = conn.cursor()
    
    query = """
    SELECT MAX(age), MIN(age)
    FROM test_table
    WHERE LENGTH(name) < 6;
    """
    
    cursor.execute(query)
    result = cursor.fetchone()
    
    max_age, min_age = result
    print(f'The maximum age is: {max_age}')
    print(f'The minimum age is: {min_age}')
    
    cursor.close()
    conn.close()

if __name__ == "__main__":
    fetch_data()


