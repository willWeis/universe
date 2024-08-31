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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    coordinate_x integer NOT NULL,
    coordinate_y integer NOT NULL,
    name character varying(255),
    balckhole_id integer,
    blackhole_id integer NOT NULL,
    effect_description text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    coordinate_x integer NOT NULL,
    coordinate_y integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(255),
    gravitational_field numeric(10,4),
    description text,
    life_detected boolean,
    blackhole_count text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    coordinate_x integer NOT NULL,
    coordinate_y integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(255),
    gravitational_field numeric(10,4),
    description text,
    life_detected boolean,
    planet_id integer,
    name_origin text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    coordinate_x integer NOT NULL,
    coordinate_y integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(255),
    gravitational_field numeric(10,4),
    description text,
    life_detected boolean,
    star_id integer,
    culture text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    coordinate_x integer NOT NULL,
    coordinate_y integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(255),
    gravitational_field numeric(10,4),
    description text,
    life_detected boolean,
    galaxy_id integer,
    creation text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (21, 56, 'Center of the milky way', NULL, 1, NULL);
INSERT INTO public.blackhole VALUES (45, 78, 'Sagittarius A*', NULL, 2, NULL);
INSERT INTO public.blackhole VALUES (12, 34, 'Cygnus X-1', NULL, 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (0, 0, 1, 'Milky Way', 9.8000, 'A barred spiral galaxy containing our Solar System, with an estimated 100-400 billion stars.', true, NULL);
INSERT INTO public.galaxy VALUES (100, 200, 2, 'Andromeda Galaxy', 9.8000, 'The closest large galaxy to the Milky Way, located in the constellation Andromeda.', false, NULL);
INSERT INTO public.galaxy VALUES (150, 250, 3, 'Triangulum Galaxy', 9.8000, 'Also known as M33, it is a member of the Local Group and the third-largest galaxy in that group.', false, NULL);
INSERT INTO public.galaxy VALUES (200, 300, 4, 'Sombrero Galaxy', 9.8000, 'Known for its bright nucleus and large central bulge, resembling a sombrero hat.', false, NULL);
INSERT INTO public.galaxy VALUES (250, 350, 5, 'Whirlpool Galaxy', 9.8000, 'Famous for its well-defined spiral structure, located in the constellation Canes Venatici.', false, NULL);
INSERT INTO public.galaxy VALUES (300, 400, 6, 'Cartwheel Galaxy', 9.8000, 'Its visual appearance is similar to that of a spoked cartwheel.', false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (0, 0, 1, 'Moon', 1.6200, 'The only natural satellite of Earth.', true, 1, NULL);
INSERT INTO public.moon VALUES (1, 1, 2, 'Phobos', 0.0057, 'One of the two moons of Mars.', false, 4, NULL);
INSERT INTO public.moon VALUES (2, 2, 3, 'Deimos', 0.0030, 'The smaller and outermost moon of Mars.', false, 4, NULL);
INSERT INTO public.moon VALUES (3, 3, 4, 'Io', 1.7960, 'The most volcanically active body in the Solar System.', false, 5, NULL);
INSERT INTO public.moon VALUES (4, 4, 5, 'Europa', 1.3140, 'A moon of Jupiter with a possible subsurface ocean.', false, 5, NULL);
INSERT INTO public.moon VALUES (5, 5, 6, 'Ganymede', 1.4280, 'The largest moon in the Solar System.', false, 5, NULL);
INSERT INTO public.moon VALUES (6, 6, 7, 'Callisto', 1.2350, 'A heavily cratered moon of Jupiter.', false, 5, NULL);
INSERT INTO public.moon VALUES (7, 7, 8, 'Titan', 1.3520, 'The largest moon of Saturn, with a thick atmosphere.', false, 6, NULL);
INSERT INTO public.moon VALUES (8, 8, 9, 'Rhea', 0.2640, 'The second-largest moon of Saturn.', false, 6, NULL);
INSERT INTO public.moon VALUES (9, 9, 10, 'Iapetus', 0.2230, 'A moon of Saturn known for its two-tone coloration.', false, 6, NULL);
INSERT INTO public.moon VALUES (10, 10, 11, 'Dione', 0.2320, 'A moon of Saturn with bright ice cliffs.', false, 6, NULL);
INSERT INTO public.moon VALUES (11, 11, 12, 'Triton', 0.7790, 'The largest moon of Neptune, with geysers of nitrogen.', false, 8, NULL);
INSERT INTO public.moon VALUES (12, 12, 13, 'Charon', 0.2880, 'The largest moon of Pluto.', false, 9, NULL);
INSERT INTO public.moon VALUES (13, 13, 14, 'Oberon', 0.3540, 'The second-largest moon of Uranus.', false, 7, NULL);
INSERT INTO public.moon VALUES (14, 14, 15, 'Titania', 0.3790, 'The largest moon of Uranus.', false, 7, NULL);
INSERT INTO public.moon VALUES (15, 15, 16, 'Umbriel', 0.2000, 'A dark moon of Uranus.', false, 7, NULL);
INSERT INTO public.moon VALUES (16, 16, 17, 'Ariel', 0.2690, 'A moon of Uranus with bright surface features.', false, 7, NULL);
INSERT INTO public.moon VALUES (17, 17, 18, 'Miranda', 0.0790, 'A moon of Uranus with extreme geological features.', false, 7, NULL);
INSERT INTO public.moon VALUES (18, 18, 19, 'Mimas', 0.0640, 'A moon of Saturn with a large crater.', false, 6, NULL);
INSERT INTO public.moon VALUES (19, 19, 20, 'Enceladus', 0.1130, 'A moon of Saturn with geysers of water ice.', false, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (0, 0, 1, 'Earth', 9.8000, 'The origin of life as we know it, our earth', true, 8, NULL);
INSERT INTO public.planet VALUES (0, 0, 3, 'Mercury', 3.7000, 'The smallest planet in our Solar System and closest to the Sun.', false, 8, NULL);
INSERT INTO public.planet VALUES (1, 1, 2, 'Venus', 8.8700, 'The hottest planet in our Solar System with a thick, toxic atmosphere.', false, 8, NULL);
INSERT INTO public.planet VALUES (3, 3, 4, 'Mars', 3.7100, 'Known as the Red Planet, it has the largest volcano and canyon in the Solar System.', false, 8, NULL);
INSERT INTO public.planet VALUES (4, 4, 5, 'Jupiter', 24.7900, 'The largest planet in our Solar System with a Great Red Spot.', false, 8, NULL);
INSERT INTO public.planet VALUES (5, 5, 6, 'Saturn', 10.4400, 'Famous for its stunning ring system.', false, 8, NULL);
INSERT INTO public.planet VALUES (6, 6, 7, 'Uranus', 8.6900, 'An ice giant with a unique sideways rotation.', false, 8, NULL);
INSERT INTO public.planet VALUES (7, 7, 8, 'Neptune', 11.1500, 'Known for its deep blue color and strong winds.', false, 8, NULL);
INSERT INTO public.planet VALUES (8, 8, 9, 'Pluto', 0.6200, 'A dwarf planet with a heart-shaped glacier.', false, 8, NULL);
INSERT INTO public.planet VALUES (9, 9, 10, 'Ceres', 0.2700, 'The largest object in the asteroid belt between Mars and Jupiter.', false, 8, NULL);
INSERT INTO public.planet VALUES (10, 10, 11, 'Haumea', 0.4400, 'A dwarf planet known for its elongated shape.', false, 8, NULL);
INSERT INTO public.planet VALUES (11, 11, 12, 'Makemake', 0.5000, 'A dwarf planet in the Kuiper belt, known for its bright surface.', false, 8, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (500, 600, 2, 'Proxima Andromedae', 0.1234, 'A star in the Andromeda Galaxy.', false, 2, NULL);
INSERT INTO public.star VALUES (900, 1000, 3, 'Rigel', 2.3456, 'A blue supergiant star in the Milky Way.', false, 1, NULL);
INSERT INTO public.star VALUES (1100, 1200, 4, 'Alpha Trianguli', 0.5678, 'A star in the Triangulum Galaxy.', false, 3, NULL);
INSERT INTO public.star VALUES (1300, 1400, 5, 'Delta Trianguli', 0.6789, 'Another star in the Triangulum Galaxy.', false, 3, NULL);
INSERT INTO public.star VALUES (1500, 1600, 6, 'Eta Carinae', 3.4567, 'A star in the Sombrero Galaxy.', false, 4, NULL);
INSERT INTO public.star VALUES (1700, 1800, 7, 'Zeta Cancri', 4.5678, 'A star in the Whirlpool Galaxy.', false, 5, NULL);
INSERT INTO public.star VALUES (0, 0, 8, 'Sun', 274.0000, 'The star at the center of our Solar System, primarily composed of hydrogen and helium.', true, 1, NULL);


--
-- Name: blackhole blackhole_effect_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_effect_description_key UNIQUE (effect_description);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_blackhole_count_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_blackhole_count_key UNIQUE (blackhole_count);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_origin_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_origin_key UNIQUE (name_origin);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_culture_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_culture_key UNIQUE (culture);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_creation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_creation_key UNIQUE (creation);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

