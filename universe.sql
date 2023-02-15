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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    coordinates character varying(40) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    color character varying(40) NOT NULL,
    name character varying(40) NOT NULL,
    shape character varying(40) NOT NULL,
    coordinates character varying(40) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    coordinates character varying(40) NOT NULL,
    planet_id integer,
    has_artificialcrafts boolean NOT NULL,
    has_animals boolean NOT NULL,
    has_plants boolean NOT NULL,
    has_smartlife boolean NOT NULL,
    has_oxygen boolean NOT NULL,
    has_water boolean NOT NULL,
    population integer,
    gravity integer,
    average_temperature integer,
    number_of_craters integer,
    color character varying(40),
    history text,
    year_of_discovery integer NOT NULL,
    diameter_in_km integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    diameter numeric(10,5) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    coordinates character varying(40) NOT NULL,
    star_id integer,
    population integer,
    has_water boolean NOT NULL,
    has_oxygen boolean NOT NULL,
    has_smartlife boolean NOT NULL,
    has_plants boolean NOT NULL,
    has_animals boolean NOT NULL,
    has_artificialcrafts boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL,
    color character varying(40) NOT NULL,
    coordinates character varying(40) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'hoyo negro', '1');
INSERT INTO public.black_hole VALUES (2, 'hoyo negro2', '2');
INSERT INTO public.black_hole VALUES (3, 'hoyo negro3', '3');
INSERT INTO public.black_hole VALUES (4, 'hoyo negro4', '4');
INSERT INTO public.black_hole VALUES (5, 'hoyo negro5', '5');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 3, 3, 'blue', 'andromeda', 'squared', '3');
INSERT INTO public.galaxy VALUES (3, 3, 3, 'blue', 'andromeda1', 'squared', '4');
INSERT INTO public.galaxy VALUES (4, 3, 3, 'blue', 'andromeda2', 'squared', '5');
INSERT INTO public.galaxy VALUES (5, 3, 3, 'blue', 'andromeda3', 'squared', '6');
INSERT INTO public.galaxy VALUES (6, 3, 3, 'blue', 'andromeda4', 'squared', '7');
INSERT INTO public.galaxy VALUES (7, 3, 3, 'blue', 'andromeda5', 'squared', '8');
INSERT INTO public.galaxy VALUES (8, 3, 3, 'blue', 'andromeda6', 'squared', '9');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, '1', 2, 3, '1', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (3, '2', 2, 3, '2', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (4, '3', 2, 3, '3', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (5, '4', 2, 3, '4', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (6, '5', 2, 3, '5', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (7, '6', 2, 3, '6', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (8, '7', 2, 3, '7', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (9, '8', 2, 3, '8', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (10, '9', 2, 3, '9', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (11, '10', 2, 3, '10', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (12, '11', 2, 3, '11', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (13, '12', 2, 3, '12', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (14, '13', 2, 3, '13', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (15, '1', 2, 3, '14', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (16, '15', 2, 3, '15', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (17, '16', 2, 3, '16', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (18, '17', 2, 3, '17', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (19, '18', 2, 3, '18', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (20, '19', 2, 3, '19', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (21, '0', 2, 3, '0', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);
INSERT INTO public.moon VALUES (22, '14', 2, 3, '144', 2, true, true, true, true, true, true, 2, 2, 2, 2, 'dark blue', 'desde hace millones de anos', 3, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'mars', 4, 5, 6.00000, 'vecinos hace tiempo', true, '54', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (3, '1', 4, 5, 6.00000, 'vecinos hace tiempo', true, '2', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (4, '3', 4, 5, 6.00000, 'vecinos hace tiempo', true, '3', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (6, '4', 4, 5, 6.00000, 'vecinos hace tiempo', true, '4', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (7, '5', 4, 5, 6.00000, 'vecinos hace tiempo', true, '5', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (8, '6', 4, 5, 6.00000, 'vecinos hace tiempo', true, '6', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (9, '7', 4, 5, 6.00000, 'vecinos hace tiempo', true, '7', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (10, '8', 4, 5, 6.00000, 'vecinos hace tiempo', true, '8', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (11, '9', 4, 5, 6.00000, 'vecinos hace tiempo', true, '9', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (12, '0', 4, 5, 6.00000, 'vecinos hace tiempo', true, '0', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (13, '11', 4, 5, 6.00000, 'vecinos hace tiempo', true, '11', 1, 2, true, true, true, true, true, true);
INSERT INTO public.planet VALUES (15, '12', 4, 5, 6.00000, 'vecinos hace tiempo', true, '12', 1, 2, true, true, true, true, true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'max', 7, 7, true, 1, 'white', '4');
INSERT INTO public.star VALUES (2, 'max2', 7, 7, true, 1, 'white', '5');
INSERT INTO public.star VALUES (3, 'max3', 7, 7, true, 1, 'white', '6');
INSERT INTO public.star VALUES (4, 'max4', 7, 7, true, 1, 'white', '7');
INSERT INTO public.star VALUES (5, 'max1', 7, 7, true, 1, 'white', '1');
INSERT INTO public.star VALUES (6, 'max5', 7, 7, true, 1, 'white', '8');
INSERT INTO public.star VALUES (7, 'max6', 7, 7, true, 1, 'white', '9');
INSERT INTO public.star VALUES (8, 'max7', 7, 7, true, 1, 'white', '10');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: black_hole black_hole_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_coordinates_key UNIQUE (coordinates);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_coordinates_key UNIQUE (coordinates);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_coordinates_key UNIQUE (coordinates);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_coordinates_key UNIQUE (coordinates);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_coordinates_key UNIQUE (coordinates);


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

