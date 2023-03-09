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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_name character varying(30),
    blackhole_id integer NOT NULL,
    mass integer,
    name character varying(30),
    code integer,
    col character varying(20) DEFAULT 'Default'::character varying NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_name character varying(30),
    galaxy_id integer NOT NULL,
    color text,
    size integer,
    mass integer,
    name character varying(30),
    code integer,
    col character varying(20) DEFAULT 'Default'::character varying NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_name character varying(30),
    moon_id integer NOT NULL,
    planet_id integer,
    size integer,
    gravity numeric,
    name character varying(30),
    code integer,
    col character varying(20) DEFAULT 'Default'::character varying NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_name character varying(30),
    planet_id integer NOT NULL,
    bigger_than_earth boolean,
    gravity numeric,
    has_water boolean,
    star_id integer,
    name character varying(30),
    code integer,
    col character varying(20) DEFAULT 'Default'::character varying NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_name character varying(30),
    star_id integer NOT NULL,
    brightness text,
    size integer,
    mass integer,
    galaxy_id integer,
    name character varying(30),
    code integer,
    col character varying(20) DEFAULT 'Default'::character varying NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES ('blackhole1', 1, 25486000, NULL, NULL, 'Default');
INSERT INTO public.blackhole VALUES ('blackhole2', 2, 8546000, NULL, NULL, 'Default');
INSERT INTO public.blackhole VALUES ('blackhole3', 3, 1546000, NULL, NULL, 'Default');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 1, 'white', 240, 56300, NULL, NULL, 'Default');
INSERT INTO public.galaxy VALUES ('galaxy2', 2, 'red', 9840, 866300, NULL, NULL, 'Default');
INSERT INTO public.galaxy VALUES ('galaxy3', 4, 'orange', 5780, 45900, NULL, NULL, 'Default');
INSERT INTO public.galaxy VALUES ('galaxy4', 5, 'red', 95800, 698000, NULL, NULL, 'Default');
INSERT INTO public.galaxy VALUES ('galaxy5', 6, 'white', 4800, 587000, NULL, NULL, 'Default');
INSERT INTO public.galaxy VALUES ('galaxy6', 7, 'blue', 84700, 3587000, NULL, NULL, 'Default');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon2', 2, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon3', 3, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon4', 4, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon5', 5, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon6', 6, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon7', 7, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon8', 8, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon9', 9, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon10', 10, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon11', 11, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moo12', 12, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon13', 13, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon14', 14, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon15', 15, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon16', 16, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon17', 17, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon18', 18, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon19', 19, NULL, NULL, NULL, NULL, NULL, 'Default');
INSERT INTO public.moon VALUES ('moon20', 20, NULL, NULL, NULL, NULL, NULL, 'Default');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 1, false, 9.8, true, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet2', 2, true, 24.8, false, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet3', 3, true, 17.6, false, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet4', 4, false, 3.4, true, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet5', 5, true, 10.2, false, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet6', 6, false, 11.2, false, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet7', 7, false, 12.0, false, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet8', 8, false, 18.6, false, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet9', 9, false, 14.5, false, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet10', 10, false, 16.5, false, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet11', 11, true, 8.5, false, NULL, NULL, NULL, 'Default');
INSERT INTO public.planet VALUES ('planet12', 12, false, 21.8, false, NULL, NULL, NULL, 'Default');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1, '-27', 54400, 398500, NULL, NULL, NULL, 'Default');
INSERT INTO public.star VALUES ('star2', 2, '-5', 98540, 548700, NULL, NULL, NULL, 'Default');
INSERT INTO public.star VALUES ('star3', 3, '16', 24100, 125800, NULL, NULL, NULL, 'Default');
INSERT INTO public.star VALUES ('star4', 4, '-1', 36100, 845800, NULL, NULL, NULL, 'Default');
INSERT INTO public.star VALUES ('star5', 5, '-12', 48700, 251600, NULL, NULL, NULL, 'Default');
INSERT INTO public.star VALUES ('star6', 6, '4', 35200, 854700, NULL, NULL, NULL, 'Default');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: blackhole blackhole_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_code_key UNIQUE (code);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_key UNIQUE (code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_key UNIQUE (code);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_key UNIQUE (code);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_key UNIQUE (code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

