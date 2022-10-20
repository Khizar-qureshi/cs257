'''
    convert.py
    Khizar Qureshi, 9 Oct 2022
    
    Converts Kaggle Olympics data into new csv files 
    Assumes you have a copy of athelte_events.csv file
    
    This olympics database utilizes 5 tables which were contructed in psql.
    The design is the following
       
    When this code is ran, we willl end up with 5 new files: 
    athletes.csv,
    event_categories.csv,
    events.csv
    games.csv
    noc_info.csv
    event_results.csv


'''

import csv




athletes = {}
with open('athlete_events.csv') as original_data_file,\
        open('athletes.csv', 'w') as athletes_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(athletes_file)
    heading_row = next(reader)
    for row in reader:
        athlete_id = row[0]
        athlete_name = row[1]
        if athlete_id not in athletes:
            athletes[athlete_id] = athlete_name
            writer.writerow([athlete_id, athlete_name])

event_categories = {}
with open('athlete_events.csv') as original_data_file,\
        open('event_categories.csv', 'w') as event_categories_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(event_categories_file)
    heading_row = next(reader)
    for row in reader:
        sport = row[12]
        if sport not in event_categories:
             event_category_id = len(event_categories) + 1
             event_categories[sport] = event_category_id
             writer.writerow([event_category_id,sport])


events = {}
with open('athlete_events.csv') as original_data_file,\
        open('events.csv', 'w') as events_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(events_file)
    heading_row = next(reader)
    for row in reader:
        event_name = row[13]
        event_category_id = event_categories[sport]
        if event_name not in events:
            events_id = len(events) + 1
            events[event_name] = events_id
            sport = row[12]
            event_category_id = event_categories[sport]
            writer.writerow([events_id, event_name,event_category_id])

games = {}
with open('athlete_events.csv') as original_data_file,\
        open('games.csv', 'w') as games_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(games_file)
    heading_row = next(reader)
    for row in reader:
        game_name = row[8]
        year = row[9]
        season = row[10]
        city = row[11]
        if game_name not in games:
            game_id = len(games) + 1
            games[game_name] = game_id
            writer.writerow([game_id, game_name, year, season, city])

nocs = {}
with open('athlete_events.csv') as original_data_file,\
        open('noc_info.csv', 'w') as nocs_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(nocs_file)
    heading_row = next(reader)
    for row in reader:
        noc_id = len(nocs) + 1
        noc_abbreviation = row[7]
        country = row[6]
        if noc_abbreviation not in nocs:
            nocs[noc_abbreviation] = noc_id
            writer.writerow([noc_id, noc_abbreviation, country])
            
            
with open('athlete_events.csv') as original_data_file,\
        open('event_results.csv', 'w') as results_file:
    reader = csv.reader(original_data_file)
    writer = csv.writer(results_file)
    heading_row = next(reader)
    for row in reader:
        athlete_id = row[0]
        event_name = row[13]
        event_id = events[event_name]
        game_name = row[8]
        game_id = games[game_name]
        noc_abbreviation = row[7]
        noc_id = nocs[noc_abbreviation]
        medal = row[14]    
        writer.writerow([athlete_id, event_id, game_id, noc_id, medal])
        

        
        

    
            
            


            
            
            
            
            

            
            
        