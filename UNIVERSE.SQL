--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    is_spherical boolean,
    has_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    name character varying(40) NOT NULL,
    num_of_star numeric,
    distance_from_earth integer,
    star_id integer,
    description text
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_years numeric,
    is_spherical boolean,
    has_life boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_years numeric,
    is_spherical boolean,
    has_life boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_years numeric,
    is_spherical boolean,
    has_life boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_earth numeric,
    is_spherical boolean,
    has_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'aa', 1, 1, true, true, 'aa', 1);
INSERT INTO public.comet VALUES (2, 'ab', 1, 2, true, true, 'ab', 2);
INSERT INTO public.comet VALUES (3, 'ac', 1, 3, true, true, 'ac', 3);


--
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (1, 'aba', 1, 1, 1, 'aba');
INSERT INTO public.constellations VALUES (2, 'abb', 1, 2, 1, 'abb');
INSERT INTO public.constellations VALUES (3, 'abc', 1, 3, 1, 'abc');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 1, 1, 1, true, true, 'a');
INSERT INTO public.galaxy VALUES (2, 'b', 1, 2, 1, true, true, 'b');
INSERT INTO public.galaxy VALUES (3, 'c', 1, 3, 1, true, true, 'c');
INSERT INTO public.galaxy VALUES (4, 'd', 1, 4, 1, true, true, 'd');
INSERT INTO public.galaxy VALUES (5, 'e', 1, 5, 1, true, true, 'e');
INSERT INTO public.galaxy VALUES (6, 'f', 1, 6, 1, true, true, 'f');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 1, 1, 1, true, true, 'a', 1);
INSERT INTO public.moon VALUES (2, 'b', 1, 2, 1, true, true, 'b', 2);
INSERT INTO public.moon VALUES (3, 'c', 1, 3, 1, true, true, 'c', 3);
INSERT INTO public.moon VALUES (4, 'd', 1, 4, 1, true, true, 'd', 4);
INSERT INTO public.moon VALUES (5, 'aa', 1, 5, 1, true, true, 'aa', 4);
INSERT INTO public.moon VALUES (6, 'ab', 1, 6, 1, true, true, 'ab', 5);
INSERT INTO public.moon VALUES (7, 'ac', 1, 7, 1, true, true, 'ac', 6);
INSERT INTO public.moon VALUES (8, 'ad', 1, 8, 1, true, true, 'ad', 6);
INSERT INTO public.moon VALUES (9, 'ae', 1, 9, 1, true, true, 'ae', 7);
INSERT INTO public.moon VALUES (10, 'aaa', 1, 10, 1, true, true, 'aaa', 7);
INSERT INTO public.moon VALUES (11, 'aab', 1, 11, 1, true, true, 'aab', 8);
INSERT INTO public.moon VALUES (12, 'aac', 1, 12, 1, true, true, 'aac', 9);
INSERT INTO public.moon VALUES (13, 'aad', 1, 13, 1, true, true, 'aad', 9);
INSERT INTO public.moon VALUES (14, 'aad', 1, 14, 1, true, true, 'aad', 10);
INSERT INTO public.moon VALUES (15, 'aae', 1, 15, 1, true, true, 'aae', 11);
INSERT INTO public.moon VALUES (16, 'aaf', 1, 16, 1, true, true, 'aaf', 11);
INSERT INTO public.moon VALUES (17, 'aaaa', 1, 17, 1, true, true, 'aaaa', 12);
INSERT INTO public.moon VALUES (18, 'aaab', 1, 18, 1, true, true, 'aaab', 12);
INSERT INTO public.moon VALUES (19, 'aaac', 1, 19, 1, true, true, 'aaac', 12);
INSERT INTO public.moon VALUES (20, 'aaad', 1, 20, 1, true, true, 'aaad', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'aaa', 1, 1, 1, true, true, 'aaa', 1);
INSERT INTO public.planet VALUES (2, 'baa', 1, 2, 1, true, true, 'baa', 1);
INSERT INTO public.planet VALUES (3, 'caa', 1, 3, 1, true, true, 'caa', 1);
INSERT INTO public.planet VALUES (4, 'daa', 1, 4, 1, true, true, 'daa', 2);
INSERT INTO public.planet VALUES (5, 'eaa', 1, 5, 1, true, true, 'eaa', 2);
INSERT INTO public.planet VALUES (6, 'faa', 1, 6, 1, true, true, 'faa', 2);
INSERT INTO public.planet VALUES (7, 'gaa', 1, 7, 1, true, true, 'gaa', 3);
INSERT INTO public.planet VALUES (8, 'haa', 1, 8, 1, true, true, 'haa', 3);
INSERT INTO public.planet VALUES (9, 'iaa', 1, 9, 1, true, true, 'iaa', 3);
INSERT INTO public.planet VALUES (10, 'jaa', 1, 10, 1, true, true, 'jaa', 1);
INSERT INTO public.planet VALUES (11, 'kaa', 1, 11, 1, true, true, 'kaa', 1);
INSERT INTO public.planet VALUES (12, 'laa', 1, 12, 1, true, true, 'kaa', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'ab', 1, 1, 1, true, true, 'abc', 1);
INSERT INTO public.star VALUES (2, 'ac', 1, 2, 1, true, true, 'abb', 2);
INSERT INTO public.star VALUES (3, 'ad', 1, 3, 1, true, true, 'abd', 3);
INSERT INTO public.star VALUES (4, 'ae', 1, 4, 1, true, true, 'abe', 1);
INSERT INTO public.star VALUES (5, 'af', 1, 5, 1, true, true, 'abf', 2);
INSERT INTO public.star VALUES (6, 'ag', 1, 6, 1, true, true, 'abg', 3);


--
-- Name: comet comet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: constellations constellations_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: constellations constellations_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
