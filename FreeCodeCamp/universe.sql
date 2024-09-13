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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: distance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.distance (
    distance_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_sun integer,
    distance_to_earth integer,
    character_id integer NOT NULL
);


ALTER TABLE public.distance OWNER TO postgres;

--
-- Name: distance_distance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.distance_distance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distance_distance_id_seq OWNER TO postgres;

--
-- Name: distance_distance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.distance_distance_id_seq OWNED BY public.distance.distance_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_location character varying(50),
    galaxy_age_in_years integer,
    galaxy_reachable boolean,
    character_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_nearest_planet character varying(50),
    distance_from_earth_in_kms integer,
    moon_reachable boolean,
    character_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_location character varying(50),
    distance_from_sun_in_kms numeric,
    planet_description text,
    character_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_location character varying(50),
    star_age_discovered integer,
    star_description text,
    star_reached boolean,
    character_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: distance distance_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distance ALTER COLUMN distance_id SET DEFAULT nextval('public.distance_distance_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: distance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.distance (distance_id, name, distance_to_sun, distance_to_earth, character_id) FROM stdin;
1	Mercury Distance	57910	91700	1
2	Venus Distance	108200	41400	2
3	Earth Distance	149600	0	3
4	Mars Distance	227900	78300	4
5	Jupiter Distance	778500	628730	5
6	Saturn Distance	1433000	1200000	6
7	Uranus Distance	2871000	2580000	7
8	Neptune Distance	4495000	4300000	8
9	Proxima b Distance	40100000	40100000	9
10	Kepler-22b Distance	620000000	620000000	10
11	Gliese 581d Distance	20000000	20000000	11
12	Kepler-452b Distance	1400000000	1400000000	12
13	Trappist-1e Distance	39000000	39000000	13
14	HD 209458 b Distance	153000000	153000000	14
15	55 Cancri e Distance	41000000	41000000	15
16	WASP-12b Distance	87000000	87000000	16
17	Kepler-16b Distance	350000000	350000000	17
18	LHS 1140b Distance	40800000	40800000	18
19	GJ 1214 b Distance	42000000	42000000	19
20	Kepler-1649c Distance	420000000	420000000	20
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.galaxy (galaxy_id, name, galaxy_location, galaxy_age_in_years, galaxy_reachable, character_id) FROM stdin;
1	Milky Way	Local Group	13700000	t	1
2	Andromeda	Local Group	10000000	t	2
3	Triangulum	Local Group	8000000	f	3
4	Whirlpool	Canes Venatici	12000000	t	4
5	Sombrero	Virgo Cluster	9000000	t	5
6	Black Eye	Coma Berenices	10500000	f	6
7	Cartwheel	Sculptor Group	11000000	t	7
8	Pinwheel	Ursa Major	8000000	t	8
9	Sunflower	Virgo Cluster	7000000	f	9
10	Tadpole	Draco	8500000	t	10
11	Messier 81	Ursa Major	11500000	t	11
12	Messier 82	Ursa Major	13500000	f	12
13	Hoag’s Object	Serpens	13000000	t	13
14	Antennae	Corvus	9000000	t	14
15	Cigar	Ursa Major	7000000	t	15
16	Ring Galaxy	Lyra	9500000	f	16
17	Eye of Sauron	Fornax	10000000	t	17
18	NGC 1300	Eridanus	12000000	t	18
19	Messier 104	Virgo Cluster	11000000	t	19
20	ESO 325-G004	Centaurus	12500000	f	20
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moon (moon_id, name, moon_nearest_planet, distance_from_earth_in_kms, moon_reachable, character_id, planet_id) FROM stdin;
1	Luna	Earth	384	t	1	3
2	Phobos	Mars	9	f	2	4
3	Deimos	Mars	23	f	3	4
4	Europa	Jupiter	628730	f	4	5
5	Ganymede	Jupiter	628730	f	5	5
6	Callisto	Jupiter	628730	f	6	5
7	Titan	Saturn	1408600	f	7	6
8	Rhea	Saturn	1408600	f	8	6
9	Iapetus	Saturn	1408600	f	9	6
10	Oberon	Uranus	2871000	f	10	7
11	Triton	Neptune	4495000	f	11	8
12	Charon	Pluto	5900000	f	12	5
13	Io	Jupiter	628730	t	13	5
14	Mimas	Saturn	1408600	t	14	6
15	Enceladus	Saturn	1408600	t	15	6
16	Miranda	Uranus	2871000	t	16	7
17	Ariel	Uranus	2871000	t	17	7
18	Umbriel	Uranus	2871000	t	18	7
19	Nereid	Neptune	4495000	t	19	8
20	Proteus	Neptune	4495000	t	20	8
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planet (planet_id, name, planet_location, distance_from_sun_in_kms, planet_description, character_id, star_id) FROM stdin;
1	Mercury	Inner Solar System	57910	Smallest planet in the Solar System	1	1
2	Venus	Inner Solar System	108200	Hottest planet in the Solar System	2	2
3	Earth	Inner Solar System	149600	The only planet known to support life	3	1
4	Mars	Inner Solar System	227900	The Red Planet	4	3
5	Jupiter	Outer Solar System	778500	Largest planet in the Solar System	5	4
6	Saturn	Outer Solar System	1433000	Planet with rings	6	5
7	Uranus	Outer Solar System	2871000	Ice giant	7	6
8	Neptune	Outer Solar System	4495000	Farthest planet from the Sun	8	7
9	Proxima b	Proxima Centauri	40100000	Closest exoplanet	9	3
10	Kepler-22b	Kepler-22	620000000	Potentially habitable exoplanet	10	8
11	Gliese 581d	Gliese 581	20000000	Potentially habitable exoplanet	11	9
12	Kepler-452b	Kepler-452	1400000000	Earth-like exoplanet	12	10
13	Trappist-1e	Trappist-1	39000000	One of the seven Trappist planets	13	11
14	HD 209458 b	HD 209458	153000000	First exoplanet to have its atmosphere analyzed	14	12
15	55 Cancri e	55 Cancri	41000000	Diamond planet	15	13
16	WASP-12b	WASP-12	87000000	Extremely hot exoplanet	16	14
17	Kepler-16b	Kepler-16	350000000	Planet orbiting two suns	17	15
18	LHS 1140b	LHS 1140	40800000	Super-Earth in the habitable zone	18	16
19	GJ 1214 b	GJ 1214	42000000	Waterworld exoplanet	19	17
20	Kepler-1649c	Kepler-1649	420000000	Earth-like exoplanet	20	18
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.star (star_id, name, star_location, star_age_discovered, star_description, star_reached, character_id, galaxy_id) FROM stdin;
1	Sirius	Canis Major	10	Brightest star in the sky	t	1	1
2	Betelgeuse	Orion	5	Red supergiant	f	2	2
3	Alpha Centauri	Centaurus	10	Closest star system	t	3	1
4	Rigel	Orion	8	Blue supergiant	t	4	3
5	Polaris	Ursa Minor	2	North Star	t	5	4
6	Vega	Lyra	7	Second brightest star in Northern Hemisphere	f	6	5
7	Altair	Aquila	4	Bright white star	t	7	6
8	Procyon	Canis Minor	6	Bright yellow-white star	t	8	7
9	Deneb	Cygnus	5	White supergiant	t	9	8
10	Spica	Virgo	3	Blue giant	f	10	9
11	Arcturus	Bootes	7	Bright orange star	t	11	10
12	Aldebaran	Taurus	6	Orange giant	f	12	11
13	Antares	Scorpius	4	Red supergiant	t	13	12
14	Fomalhaut	Piscis Austrinus	2	Bright isolated star	t	14	13
15	Castor	Gemini	3	Six-star system	f	15	14
16	Achernar	Eridanus	5	Bright white star	t	16	15
17	Bellatrix	Orion	8	Blue giant star	f	17	16
18	Alnilam	Orion	9	Blue-white supergiant	t	18	17
19	Regulus	Leo	4	Bright blue star	t	19	18
20	Alphard	Hydra	6	Orange giant	f	20	19
\.


--
-- Name: distance_distance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.distance_distance_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: distance distance_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distance
    ADD CONSTRAINT distance_name_key UNIQUE (name);


--
-- Name: distance distance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.distance
    ADD CONSTRAINT distance_pkey PRIMARY KEY (distance_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

