--Khizar Qureshi
--09 Oct 2022
--Postgres SQL database dump


--
-- Name: athlete; Type: TABLE; Schema: public; Owner: -
--
CREATE TABLE athletes (
    id INTEGER,
    name TEXT
);

-- Name: event_category;
CREATE TABLE event_category(
    id INTEGER,
    name TEXT --i.e "Alpine Skating"
)

--
-- Name: events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE events (
    id INTEGER,
    category_id INTEGER,
    name TEXT-- Men's soccer
);




--
-- Name: games; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE games(
    id INTEGER,
    game_name TEXT,
    year INTEGER,
    season TEXT,
    city TEXT
);

--
-- Name: noc_info; Type: TABLE; Schema: public; Owner: -
--
    
CREATE TABLE noc_info(
    id INTEGER,
    noc_abbreviation text,
);

--
-- Name: event_results; Type: TABLE; Schema: public; Owner: -
--
    
CREATE TABLE event_results(
    athlete_id INTEGER,
    event_id INTEGER,
    games_id INTEGER,
    noc_id INTEGER,
    medal TEXT,
);

    
--
--List all the NOCs (National Olympic Committees), in alphabetical order by abbreviation. 
--

SELECT noc_info.noc_abbreviation
FROM noc_info
ORDER BY noc_abbreviation;

--
-- List all the athletes from Jamaica
--
SELECT athletes.name
FROM athletes, noc_info, event_results
WHERE noc_info.country = 'Jamaica'
AND athletes.id = event_results.athlete_id
AND noc_info.id = event_results.noc_id
;

--
-- List all the medals won from Greg Louganis
--

SELECT event_results.medal
FROM athletes, event_results
WHERE athletes.name = 'A Dijiang'
AND athletes.id = event_results.athlete_id;



--
-- List all the NOCS and the number of gold medals they won
--
SELECT noc_info.noc_abbreviation, event_results.medal
FROM event_results, noc_info
WHERE event_results.medal = 'Gold';
