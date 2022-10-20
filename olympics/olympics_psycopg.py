'''
olympics-psycopg.py
Khizar Qureshi 17, Oct, 2022
CS 257 Software Design Class, Fall 2022
Using psycopg2 to connect to and query the PostgreSQL olympics database.
'''

import sys
import psycopg2

'''
Note, config.py is a file that contains your username, password, and database name. 
Please create a config.py file that looks like the following : 
database= 'olympics'
user = 'YOUR_POSTGRES_USER_NAME'
password = 'YOUR_POSTGRES_PASSWORD_IF_ANY'
Finally, pleae add config.py to a .gitignore file so your username & password doesn't 
end up on GitHub
'''

import config

def get_connection():
    ''' Returns a database connection object for which we can create cursors and 
        issue SQL queries '''
    try: 
        return psycopg2.connect(database = config.database, 
                                user = config.user,
                                password = config.password)
    except Exception as e:
        print(e, file=sys.stderr)
        exit()

def get_athletes_by_noc(noc_name):
    '''Returns a list of athletes who where part of the NOC that the user inputs'''
    athletes = []
    try: 
        connection = get_connection()
        cursor = connection.cursor()
        query = '''SELECT name
                   FROM athletes, noc_info, event_results
                   WHERE noc_info.noc_abbreviation = %s
                   AND noc_info.id = event_results.noc_id
                   AND athletes.id = event_results.athlete_id'''
        cursor.execute(query, (noc_name,))
        for row in cursor:
            name = row[0]
            if name not in athletes:
                athletes.append(f'{name}')
        return athletes
    except Exception as e:
        print(e, file = sys.stderr)
        
def get_event_by_year(year):
    '''Returns a list of events that occured during the year'''
    events = []
    try: 
        connection = get_connection()
        cursor = connection.cursor()
        query = '''SELECT game_name, name
                   FROM games, events, event_results
                   WHERE games.year = %s
                   AND games.id = event_results.games_id
                   AND events.id = event_results.event_id'''
        cursor.execute(query, (year,))
        for row in cursor: 
            game_name = row[0]
            event_name = row[1]
            events.append(f'{game_name} {event_name}')
        return events
    except Exception as e:
        print(e, file = sys.stderr)

def get_nocs():
    '''Returns a list of all nocs and number of gold medals they have won'''
    nocs = []
    try: 
        connection = get_connection()
        cursor = connection.cursor()
        query = '''SELECT noc_info.noc_abbreviation, COUNT(case when medal = 'Gold' then 1 else null end)
                   FROM noc_info, event_results
                   WHERE noc_info.id = event_results.noc_id
                   GROUP BY noc_info.noc_abbreviation
                   ORDER BY COUNT(case when medal = 'Gold' then 1 else null end) DESC'''
        cursor.execute(query)
        for row in cursor:
            noc = row[0]
            number_of_medals = row[1]
            nocs.append(f'{noc} {number_of_medals}')
        return nocs
    
    except Exception as e:
        print(e, file = sys.stderr)
    


