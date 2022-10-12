--Khizar Qureshi
--09 Oct 2022
--Postgres SQL database dump

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
SET default_tablespace = '';
SET default_table_access_method = heap;

--
-- Name: athlete; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE athletes (
    id INTEGER,
    name TEXT,
    noc TEXT,
    country TEXT,
);

--
-- Name: events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE events (
    id INTEGER,
    name TEXT,
    city TEXT,
);

--
-- Name: event_results; Type: TABLE; Schema: public; Owner: -
--
    
CREATE TABLE event_results(
    athlete_id INTEGER,
    event_id INTEGER,
    medal TEXT,
);

--
-- Name: games; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE games(
    id INTEGER,
    year INTEGER,
    season TEXT
);

--
-- Name: noc_info; Type: TABLE; Schema: public; Owner: -
--
    
CREATE TABLE noc_info(
    id INTEGER,
    noc_abbreviation text,
    country text,
    notes text
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
FROM athletes
WHERE athletes.country = 'Jamaica';
