--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    age_in_millions_of_years numeric NOT NULL,
    description text NOT NULL,
    has_life boolean,
    distance_from_earth integer
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
    name character varying(60),
    age_in_millions_of_years numeric NOT NULL,
    description text NOT NULL,
    has_life boolean,
    distance_from_earth integer,
    planet_id integer
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
    name character varying(60),
    age_in_millions_of_years numeric NOT NULL,
    description text NOT NULL,
    has_life boolean,
    distance_from_earth integer,
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
-- Name: researchers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.researchers (
    name character varying(50) NOT NULL,
    planet_assigned integer,
    researchers_id integer NOT NULL
);


ALTER TABLE public.researchers OWNER TO freecodecamp;

--
-- Name: researchers_researchers_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.researchers_researchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.researchers_researchers_id_seq OWNER TO freecodecamp;

--
-- Name: researchers_researchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.researchers_researchers_id_seq OWNED BY public.researchers.researchers_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    age_in_millions_of_years numeric NOT NULL,
    description text NOT NULL,
    has_life boolean,
    distance_from_earth integer,
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
-- Name: researchers researchers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.researchers ALTER COLUMN researchers_id SET DEFAULT nextval('public.researchers_researchers_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 87500, 'life exist here', true, 1200);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 1247900, 'life does not exist here', true, 19800);
INSERT INTO public.galaxy VALUES (3, 'nymphadora', 976747500, 'life does not exist here', false, 0);
INSERT INTO public.galaxy VALUES (4, 'narsisus', 7500, 'life does not exist here', false, 140800);
INSERT INTO public.galaxy VALUES (5, 'sirius', 500, 'life does not exist here', true, 200);
INSERT INTO public.galaxy VALUES (6, 'X431', 76686758, 'life exist here', true, 89600);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (48, 'Luna', 4500, 'Earth natural satellite', false, 123, 15);
INSERT INTO public.moon VALUES (49, 'Phobos', 4600, 'Larger of Mars two moons', false, 1, 14);
INSERT INTO public.moon VALUES (50, 'Deimos', 4600, 'Smaller of Mars two moons', false, 2, 14);
INSERT INTO public.moon VALUES (51, 'Europa', 4500, 'Icy moon of Jupiter', false, 3, 16);
INSERT INTO public.moon VALUES (52, 'Io', 4500, 'Volcanically active moon', false, 4, 17);
INSERT INTO public.moon VALUES (53, 'Titan', 4200, 'Saturn largest moon', false, 5, 18);
INSERT INTO public.moon VALUES (54, 'Ganymede', 4500, 'Largest moon in the solar system', false, 6, 19);
INSERT INTO public.moon VALUES (55, 'Callisto', 4500, 'Jupiter heavily cratered moon', false, 7, 14);
INSERT INTO public.moon VALUES (56, 'Triton', 4000, 'Neptune largest moon', false, 8, 14);
INSERT INTO public.moon VALUES (57, 'Enceladus', 4000, 'Icy moon with geysers', false, 9, 14);
INSERT INTO public.moon VALUES (58, 'Mimas', 4500, 'Moon with a giant crater', false, 10, 18);
INSERT INTO public.moon VALUES (59, 'Hyperion', 4400, 'Irregularly shaped moon', false, 11, 15);
INSERT INTO public.moon VALUES (60, 'Miranda', 4500, 'Moon of Uranus', false, 12, 24);
INSERT INTO public.moon VALUES (61, 'Oberon', 4500, 'Uranus second largest moon', false, 13, 23);
INSERT INTO public.moon VALUES (62, 'Rhea', 4400, 'Saturn second largest moon', false, 14, 23);
INSERT INTO public.moon VALUES (63, 'Dione', 4400, 'Saturn icy moon', false, 15, 23);
INSERT INTO public.moon VALUES (64, 'Charon', 4500, 'Largest moon of Pluto', false, 16, 18);
INSERT INTO public.moon VALUES (65, 'Styx', 4500, 'Small moon of Pluto', false, 17, 16);
INSERT INTO public.moon VALUES (66, 'Hydra', 4500, 'Pluto outermost moon', false, 18, 21);
INSERT INTO public.moon VALUES (67, 'Nix', 4500, 'Moon of Pluto', false, 19, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (14, 'Mercury', 4500, 'Small rocky planet, closest to the Sun', false, 10, 1);
INSERT INTO public.planet VALUES (15, 'Venus', 4500, 'Hot, dense atmosphere', false, 20, 1);
INSERT INTO public.planet VALUES (16, 'Earth', 4543, 'Planet with abundant life', true, 0, 1);
INSERT INTO public.planet VALUES (17, 'Mars', 4600, 'Known as the Red Planet', false, 30, 1);
INSERT INTO public.planet VALUES (18, 'Proxima b', 4850, 'Exoplanet in the habitable zone', false, 4, 2);
INSERT INTO public.planet VALUES (19, 'Vega b', 400, 'Large gas giant', false, 25, 3);
INSERT INTO public.planet VALUES (20, 'Vega c', 500, 'Rocky planet, no atmosphere', false, 285, 3);
INSERT INTO public.planet VALUES (21, 'Aldebaran b', 5000, 'Gas giant in the Taurus constellation', false, 65, 4);
INSERT INTO public.planet VALUES (22, 'Kepler-452b', 6000, 'Potentially habitable exoplanet', false, 1400, 5);
INSERT INTO public.planet VALUES (23, 'Sirius A b', 300, 'Small, rocky exoplanet near Sirius A', false, 8, 6);
INSERT INTO public.planet VALUES (24, 'Sirius A c', 500, 'Gas giant with rings', false, 9, 6);
INSERT INTO public.planet VALUES (25, 'Sirius B b', 242, 'Hot terrestrial planet', false, 78, 6);


--
-- Data for Name: researchers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.researchers VALUES ('Neil', 14, 1);
INSERT INTO public.researchers VALUES ('Rakesh', 21, 2);
INSERT INTO public.researchers VALUES ('Sunita', 16, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 242, 'Brightest star in the night sky', false, 9, 3);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 10, 'Red supergiant nearing supernova', false, 642, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 4853, 'Closest star to Earth outside the Sun', true, 4, 4);
INSERT INTO public.star VALUES (4, 'Vega', 455, 'Part of the Lyra constellation', false, 25, 6);
INSERT INTO public.star VALUES (5, 'Aldebaran', 6400, 'Orange giant in the Taurus constellation', false, 65, 2);
INSERT INTO public.star VALUES (6, 'Kepler-452b', 6000, 'Star with an Earth-like exoplanet', false, 1400, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 67, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: researchers_researchers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.researchers_researchers_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: researchers researchers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.researchers
    ADD CONSTRAINT researchers_pkey PRIMARY KEY (researchers_id);


--
-- Name: researchers researchers_planet_assigned_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.researchers
    ADD CONSTRAINT researchers_planet_assigned_key UNIQUE (planet_assigned);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_star FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

