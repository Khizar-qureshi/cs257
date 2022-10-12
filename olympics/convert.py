'''
    convert.py
    Khizar Qureshi, 9 Oct 2022
    
    Converts Kaggle Olympics data into new csv files 
    Assumes you have a copy of athelte_events.csv file
    
    This olympics database utilizes 5 tables which were contructed in psql.
    The design is the following
    
    # Athletes table
    CREATE TABLE athletes (
        id INTEGER,
        name TEXT,
        noc TEXT,
        country TEXT,
    );


    CREATE TABLE events (
        id INTEGER,
        name TEXT,
        city TEXT,
    );
    
    CREATE TABLE event_results(
        athlete_id INTEGER,
        event_id INTEGER,
        medal TEXT,
    );
    
    CREATE TABLE games(
        id INTEGER,
        year INTEGER,
        season TEXT
    );
    
    CREATE TABLE noc_info(
        id INTEGER,
        noc_abbreviation text,
        country text,
        notes text
    );
    
    When this code is ran, we willl end up with 5 new files: 
    athletes.csv,
    event_categories.csv,
    events.csv
    games.csv
    noc_info.csv


'''

import csv

'''
Creates the athletes.csv
'''
# create a dictionary that maps athlete_id -> athlete_name, athletes_noc, and athlete_olympic
athletes = {}
with open('athlete_events.csv') as original_data_file,\
        open('athletes.csv', 'w') as athletes_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(athletes_file)
    heading_row = next(reader)
    for row in reader:
        athlete_id = row[0]
        athlete_name = row[1]
        athlete_noc = row[7]
        athlete_country = row[6]
        if athlete_id not in athletes:
            athletes[athlete_id] = athlete_name
            athletes[athlete_id] = athlete_noc
            athletes[athlete_id] = athlete_country
            writer.writerow([athlete_id, athlete_name, athlete_noc, athlete_country])
            

events = {}
with open('athlete_events.csv') as original_data_file,\
        open('events.csv', 'w') as events_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(events_file)
    heading_row = next(reader)
    for row in reader:
        event_name = row[13]
        event_sport = row[12]
        city = row[11]
        if event_name not in events:
            events_id = len(events) + 1
            events[event_name] = events_id
            writer.writerow([events_id, event_name, city, event_sport])
            
games = {}
with open('athlete_events.csv') as original_data_file,\
        open('games.csv', 'w') as games_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(games_file)
    heading_row = next(reader)
    for row in reader:
        game = row[8]
        year = row[9]
        season = row[10]
        if game not in games:
            game_id = len(games) + 1
            games[game_id] = game
            games[game_id] = year
            games[game_id] = season
            writer.writerow([game_id, game, year, season])
            
nocs = {}
with open('noc_regions.csv') as original_data_file,\
        open('noc_info.csv', 'w') as nocs_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(nocs_file)
    heading_row = next(reader)
    for row in reader:
        noc_id = len(nocs) + 1
        noc_abbreviation = row[0]
        country = row[1]
        notes = row[2]
        if noc_id not in nocs:
            nocs[noc_id] = noc_abbreviation
            nocs[noc_id] = country
            nocs[noc_id] = notes
            writer.writerow([noc_id, noc_abbreviation, country, notes])
            
            
with open('athlete_events.csv') as original_data_file,\
        open('event_results.csv', 'w') as results_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(results_file)
    heading_row = next(reader)
    for row in reader:
        athlete_id = row[0]
        event_name = row[13]
        event_id = events[event_name]
        medal = row[14]
        writer.writerow([athlete_id, event_id, medal])
        
with open('athlete_events.csv') as original_data_file,\
        open('linked_table.csv', 'w') as linked_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(linked_file)
    heading_row = next(reader)
    for row in reader:
        athlete_id = row[0]
        event_name = row[13]
        event_id = events[event_name]
        #game = row[9]
        #game_id = games[game]
        medal = row[14]
        writer.writerow([athlete_id, event_id, medal])
                
        

    
            
            


            
            
            
            
            

            
            
        