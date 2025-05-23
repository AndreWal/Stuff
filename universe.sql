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
-- Name: custom; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.custom (
    name character varying(30) NOT NULL,
    custom_id text NOT NULL,
    bla text
);


ALTER TABLE public.custom OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    descrip text,
    size integer,
    dist integer,
    earth boolean,
    dontknow numeric(4,1),
    name character varying(40),
    test integer NOT NULL
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
    name character varying(40),
    descrip text,
    size integer,
    dist integer,
    earth boolean,
    dontknow numeric(4,1),
    planet_id integer NOT NULL,
    test integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    descrip text,
    size integer,
    dist integer,
    earth boolean,
    dontknow numeric(4,1),
    star_id integer NOT NULL,
    test integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    descrip text,
    size integer,
    dist integer,
    earth boolean,
    dontknow numeric(4,1),
    galaxy_id integer NOT NULL,
    test integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: custom; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.custom VALUES ('Test', '1', '1');
INSERT INTO public.custom VALUES ('TEST', '2', '2');
INSERT INTO public.custom VALUES ('TESTTEST', '3', '3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, '2', 3, 4, false, 6.0, '7', 8);
INSERT INTO public.galaxy VALUES (2, '2', 3, 4, false, 6.0, '7', 9);
INSERT INTO public.galaxy VALUES (3, '2', 3, 4, false, 6.0, '7', 10);
INSERT INTO public.galaxy VALUES (4, '2', 3, 4, false, 6.0, '7', 11);
INSERT INTO public.galaxy VALUES (5, '2', 3, 4, false, 6.0, '7', 12);
INSERT INTO public.galaxy VALUES (6, '2', 3, 4, false, 6.0, '7', 13);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (10, '2', '3', 4, 5, false, 7.0, 3, 10);
INSERT INTO public.moon VALUES (11, '2', '3', 4, 5, false, 7.0, 2, 11);
INSERT INTO public.moon VALUES (12, '2', '3', 4, 5, false, 7.0, 1, 12);
INSERT INTO public.moon VALUES (1, '2', '3', 4, 5, false, 7.0, 3, 1);
INSERT INTO public.moon VALUES (2, '2', '3', 4, 5, false, 7.0, 2, 2);
INSERT INTO public.moon VALUES (3, '2', '3', 4, 5, false, 7.0, 1, 3);
INSERT INTO public.moon VALUES (4, '2', '3', 4, 5, false, 7.0, 3, 4);
INSERT INTO public.moon VALUES (5, '2', '3', 4, 5, false, 7.0, 2, 5);
INSERT INTO public.moon VALUES (6, '2', '3', 4, 5, false, 7.0, 1, 6);
INSERT INTO public.moon VALUES (7, '2', '3', 4, 5, false, 7.0, 3, 7);
INSERT INTO public.moon VALUES (8, '2', '3', 4, 5, false, 7.0, 2, 8);
INSERT INTO public.moon VALUES (9, '2', '3', 4, 5, false, 7.0, 1, 9);
INSERT INTO public.moon VALUES (13, '2', '3', 4, 5, false, 7.0, 3, 13);
INSERT INTO public.moon VALUES (14, '2', '3', 4, 5, false, 7.0, 2, 14);
INSERT INTO public.moon VALUES (15, '2', '3', 4, 5, false, 7.0, 1, 15);
INSERT INTO public.moon VALUES (16, '2', '3', 4, 5, false, 7.0, 3, 16);
INSERT INTO public.moon VALUES (17, '2', '3', 4, 5, false, 7.0, 2, 17);
INSERT INTO public.moon VALUES (18, '2', '3', 4, 5, false, 7.0, 1, 18);
INSERT INTO public.moon VALUES (19, '2', '3', 4, 5, false, 7.0, 3, 19);
INSERT INTO public.moon VALUES (20, '2', '3', 4, 5, false, 7.0, 2, 20);
INSERT INTO public.moon VALUES (21, '2', '3', 4, 5, false, 7.0, 1, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '2', '3', 4, 5, false, 7.0, 3, 1);
INSERT INTO public.planet VALUES (2, '2', '3', 4, 5, false, 7.0, 2, 2);
INSERT INTO public.planet VALUES (3, '2', '3', 4, 5, false, 7.0, 1, 3);
INSERT INTO public.planet VALUES (4, '2', '3', 4, 5, false, 7.0, 3, 4);
INSERT INTO public.planet VALUES (5, '2', '3', 4, 5, false, 7.0, 2, 5);
INSERT INTO public.planet VALUES (6, '2', '3', 4, 5, false, 7.0, 1, 6);
INSERT INTO public.planet VALUES (7, '2', '3', 4, 5, false, 7.0, 3, 7);
INSERT INTO public.planet VALUES (8, '2', '3', 4, 5, false, 7.0, 2, 8);
INSERT INTO public.planet VALUES (9, '2', '3', 4, 5, false, 7.0, 1, 9);
INSERT INTO public.planet VALUES (10, '2', '3', 4, 5, false, 7.0, 3, 10);
INSERT INTO public.planet VALUES (11, '2', '3', 4, 5, false, 7.0, 2, 11);
INSERT INTO public.planet VALUES (12, '2', '3', 4, 5, false, 7.0, 1, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '2', '3', 4, 5, false, 7.0, 1, 11);
INSERT INTO public.star VALUES (2, '2', '3', 4, 5, false, 7.0, 1, 12);
INSERT INTO public.star VALUES (3, '2', '3', 4, 5, false, 7.0, 2, 13);
INSERT INTO public.star VALUES (4, '2', '3', 4, 5, false, 7.0, 3, 14);
INSERT INTO public.star VALUES (5, '2', '3', 4, 5, false, 7.0, 2, 15);
INSERT INTO public.star VALUES (6, '2', '3', 4, 5, false, 7.0, 1, 16);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: custom bla_un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.custom
    ADD CONSTRAINT bla_un UNIQUE (bla);


--
-- Name: custom custom_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.custom
    ADD CONSTRAINT custom_pkey PRIMARY KEY (custom_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_test_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_test_key UNIQUE (test);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_test_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_test_key UNIQUE (test);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_test_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_test_key UNIQUE (test);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_test_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_test_key UNIQUE (test);


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

