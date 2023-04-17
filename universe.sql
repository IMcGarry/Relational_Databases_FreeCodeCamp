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
-- Name: artificial_objects; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.artificial_objects (
    artificial_objects_id integer NOT NULL,
    name character varying(30),
    description text,
    friend boolean NOT NULL
);


ALTER TABLE public.artificial_objects OWNER TO freecodecamp;

--
-- Name: artificial_objects_artificial_objects_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.artificial_objects_artificial_objects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artificial_objects_artificial_objects_id_seq OWNER TO freecodecamp;

--
-- Name: artificial_objects_artificial_objects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.artificial_objects_artificial_objects_id_seq OWNED BY public.artificial_objects.artificial_objects_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    dist_fr_earth_ly_millions numeric(3,1),
    type text NOT NULL,
    diameter_ly integer
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
    name character varying(30),
    is_no_moon boolean NOT NULL,
    planet_id integer,
    cheese boolean
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
    name character varying(30) NOT NULL,
    dist_fr_earth_ly integer,
    type character varying(40),
    has_life boolean NOT NULL,
    star_id integer
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
    name character varying(30) NOT NULL,
    dist_fr_earth_ly integer,
    type character varying(40),
    dead boolean NOT NULL,
    galaxy_id integer
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
-- Name: artificial_objects artificial_objects_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_objects ALTER COLUMN artificial_objects_id SET DEFAULT nextval('public.artificial_objects_artificial_objects_id_seq'::regclass);


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
-- Data for Name: artificial_objects; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.artificial_objects VALUES (1, 'Red Dwarf', 'Spaceship', true);
INSERT INTO public.artificial_objects VALUES (2, 'Starbug', 'Small spacship property of Red Dwarf', true);
INSERT INTO public.artificial_objects VALUES (3, 'Tie fighter', 'Imperial warship', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.0, 'Barred spiral', 105700);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2.5, 'Barred spiral', 152000);
INSERT INTO public.galaxy VALUES (3, 'Messier 82', 12.0, 'Starburst', 40800);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 31.1, 'Unclear', 49000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 21.0, 'Spiral', 170000);
INSERT INTO public.galaxy VALUES (6, 'Messier 81', 12.0, 'Grand design spiral', 96000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 1, true);
INSERT INTO public.moon VALUES (21, 'Death star', true, 1, true);
INSERT INTO public.moon VALUES (8, 'Titan', false, 7, false);
INSERT INTO public.moon VALUES (9, 'Encleadus', false, 7, false);
INSERT INTO public.moon VALUES (10, 'Mimas', false, 7, false);
INSERT INTO public.moon VALUES (11, 'Dione', false, 7, false);
INSERT INTO public.moon VALUES (12, 'Lapetus', false, 7, false);
INSERT INTO public.moon VALUES (13, 'Tethys', false, 7, false);
INSERT INTO public.moon VALUES (14, 'Titania', false, 8, true);
INSERT INTO public.moon VALUES (15, 'Miranda', false, 8, true);
INSERT INTO public.moon VALUES (16, 'Oberon', false, 8, true);
INSERT INTO public.moon VALUES (17, 'Umbriel', false, 8, true);
INSERT INTO public.moon VALUES (18, 'Ariel', false, 8, true);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 6, true);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 6, true);
INSERT INTO public.moon VALUES (4, 'Europa', false, 4, false);
INSERT INTO public.moon VALUES (5, 'Io', false, 4, false);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 4, false);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 4, false);
INSERT INTO public.moon VALUES (19, 'Triton', false, 3, true);
INSERT INTO public.moon VALUES (20, 'Naiad', false, 3, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (3, 'Neptune', 0, 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 0, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 0, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (6, 'Mars', 0, 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 0, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 0, 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (9, '51 Pegasi b', 50, 'Hot Jupiter', false, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 580, 'Unsure', false, 3);
INSERT INTO public.planet VALUES (11, '55 Cancri e', 40, 'Carbon', false, 4);
INSERT INTO public.planet VALUES (12, 'PSRB1620-26b', 12400, 'Unsure', false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 'Yellow Dwarf', false, 1);
INSERT INTO public.star VALUES (2, 'Helvetios', 51, 'Solar type', false, 1);
INSERT INTO public.star VALUES (3, 'Kepler 186', 582, 'M1 dwarf', false, 1);
INSERT INTO public.star VALUES (4, '55 Cancri A', 41, 'Binary Star System', false, 1);
INSERT INTO public.star VALUES (5, 'PSR B1620-26 AB', 12400, 'Binary Star System', false, 1);
INSERT INTO public.star VALUES (6, 'Sirius', 9, 'Binary Star System', false, 1);


--
-- Name: artificial_objects_artificial_objects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.artificial_objects_artificial_objects_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: artificial_objects artificial_objects_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_objects
    ADD CONSTRAINT artificial_objects_name_key UNIQUE (name);


--
-- Name: artificial_objects artificial_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_objects
    ADD CONSTRAINT artificial_objects_pkey PRIMARY KEY (artificial_objects_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_orbit_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_orbit_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_nearest_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nearest_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

