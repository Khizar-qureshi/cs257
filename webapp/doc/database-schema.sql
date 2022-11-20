CREATE TABLE languages (
    id INTEGER,
    language TEXT
);

CREATE TABLE world_regions (
    id INTEGER,
    world_region TEXT
);

CREATE TABLE countries (
    id INTEGER,
    country TEXT
);

CREATE TABLE language_families (
    id INTEGER,
    language_family TEXT
);

CREATE TABLE locations (
    id INTEGER,
    location TEXT
);

CREATE TABLE communities (
    language_id INTEGER,
    world_region_id INTEGER,
    country_id INTEGER,
    language_family_id INTEGER,
    location_id INTEGER,
    community_size TEXT
);