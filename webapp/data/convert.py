'''
Khizar Qureshi and Kendra Winhall
convert.py
For final project due 21 November 2022
Download source data from https://languagemap.nyc/Data
'''

import csv

languages = {}
world_regions = {}
countries = {}
language_families = {}
locations = {}

with open('nyc-language-data.csv') as original_data_file,\
        open('languages.csv', 'w') as languages_file,\
        open('world_regions.csv', 'w') as world_regions_file,\
        open('countries.csv', 'w') as countries_file,\
        open('language_families.csv', 'w') as language_families_file,\
        open('locations.csv', 'w') as locations_file,\
        open('communities.csv', 'w') as communities_file:

    reader = csv.reader(original_data_file)
    languages_writer = csv.writer(languages_file)
    world_regions_writer = csv.writer(world_regions_file)
    countries_writer = csv.writer(countries_file)
    language_families_writer = csv.writer(language_families_file)
    locations_writer = csv.writer(locations_file)
    communities_writer = csv.writer(communities_file)

    heading_row = next(reader) #ignores heading row of original data file
    for row in reader:
        language = row[0]
        world_region = row[2]
        country = row[3]
        language_family = row[5]
        location = row[6]
        community_size = row[7]

        if language not in languages:
            language_id = len(languages) +1
            languages[language] = language_id
            languages_writer.writerow([language_id, language])
        else:
            language_id = languages[language]

        if world_region not in world_regions:
            world_region_id = len(world_regions) +1
            world_regions[world_region] = world_region_id
            world_regions_writer.writerow([world_region_id, world_region])
        else:
            world_region_id = world_regions[world_region]

        if country not in countries:
            country_id = len(countries) +1
            countries[country] = country_id
            countries_writer.writerow([country_id, country])
        else:
            country_id = countries[country]

        if language_family not in language_families:
            language_family_id = len(language_families) +1
            language_families[language_family] = language_family_id
            language_families_writer.writerow([language_family_id, language_family])
        else:
            language_family_id = language_families[language_family]

        if location not in locations:
            location_id = len(locations) +1
            locations[location] = location_id
            locations_writer.writerow([location_id, location])
        else:
            location_id = locations[location]
        
        communities_writer.writerow([language_id, world_region_id, country_id, language_family_id, location_id, community_size])



