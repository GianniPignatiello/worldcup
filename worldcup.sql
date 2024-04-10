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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_name_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_name_seq OWNER TO freecodecamp;

--
-- Name: teams_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_name_seq OWNED BY public.teams.name;


--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Name: teams name; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN name SET DEFAULT nextval('public.teams_name_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (787, 2018, 'Final', 420, 421, 4, 2);
INSERT INTO public.games VALUES (788, 2018, 'Third Place', 422, 423, 2, 0);
INSERT INTO public.games VALUES (789, 2018, 'Semi-Final', 421, 423, 2, 1);
INSERT INTO public.games VALUES (790, 2018, 'Semi-Final', 420, 422, 1, 0);
INSERT INTO public.games VALUES (791, 2018, 'Quarter-Final', 421, 429, 3, 2);
INSERT INTO public.games VALUES (792, 2018, 'Quarter-Final', 423, 431, 2, 0);
INSERT INTO public.games VALUES (793, 2018, 'Quarter-Final', 422, 433, 2, 1);
INSERT INTO public.games VALUES (794, 2018, 'Quarter-Final', 420, 435, 2, 0);
INSERT INTO public.games VALUES (795, 2018, 'Eighth-Final', 423, 437, 2, 1);
INSERT INTO public.games VALUES (796, 2018, 'Eighth-Final', 431, 439, 1, 0);
INSERT INTO public.games VALUES (797, 2018, 'Eighth-Final', 422, 441, 3, 2);
INSERT INTO public.games VALUES (798, 2018, 'Eighth-Final', 433, 443, 2, 0);
INSERT INTO public.games VALUES (799, 2018, 'Eighth-Final', 421, 445, 2, 1);
INSERT INTO public.games VALUES (800, 2018, 'Eighth-Final', 429, 447, 2, 1);
INSERT INTO public.games VALUES (801, 2018, 'Eighth-Final', 435, 449, 2, 1);
INSERT INTO public.games VALUES (802, 2018, 'Eighth-Final', 420, 451, 4, 3);
INSERT INTO public.games VALUES (803, 2014, 'Final', 452, 451, 1, 0);
INSERT INTO public.games VALUES (804, 2014, 'Third Place', 454, 433, 3, 0);
INSERT INTO public.games VALUES (805, 2014, 'Semi-Final', 451, 454, 1, 0);
INSERT INTO public.games VALUES (806, 2014, 'Semi-Final', 452, 433, 7, 1);
INSERT INTO public.games VALUES (807, 2014, 'Quarter-Final', 454, 461, 1, 0);
INSERT INTO public.games VALUES (808, 2014, 'Quarter-Final', 451, 422, 1, 0);
INSERT INTO public.games VALUES (809, 2014, 'Quarter-Final', 433, 437, 2, 1);
INSERT INTO public.games VALUES (810, 2014, 'Quarter-Final', 452, 420, 1, 0);
INSERT INTO public.games VALUES (811, 2014, 'Eighth-Final', 433, 469, 2, 1);
INSERT INTO public.games VALUES (812, 2014, 'Eighth-Final', 437, 435, 2, 0);
INSERT INTO public.games VALUES (813, 2014, 'Eighth-Final', 420, 473, 2, 0);
INSERT INTO public.games VALUES (814, 2014, 'Eighth-Final', 452, 475, 2, 1);
INSERT INTO public.games VALUES (815, 2014, 'Eighth-Final', 454, 443, 2, 1);
INSERT INTO public.games VALUES (816, 2014, 'Eighth-Final', 461, 479, 2, 1);
INSERT INTO public.games VALUES (817, 2014, 'Eighth-Final', 451, 439, 1, 0);
INSERT INTO public.games VALUES (818, 2014, 'Eighth-Final', 422, 483, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (420, 'France');
INSERT INTO public.teams VALUES (421, 'Croatia');
INSERT INTO public.teams VALUES (422, 'Belgium');
INSERT INTO public.teams VALUES (423, 'England');
INSERT INTO public.teams VALUES (429, 'Russia');
INSERT INTO public.teams VALUES (431, 'Sweden');
INSERT INTO public.teams VALUES (433, 'Brazil');
INSERT INTO public.teams VALUES (435, 'Uruguay');
INSERT INTO public.teams VALUES (437, 'Colombia');
INSERT INTO public.teams VALUES (439, 'Switzerland');
INSERT INTO public.teams VALUES (441, 'Japan');
INSERT INTO public.teams VALUES (443, 'Mexico');
INSERT INTO public.teams VALUES (445, 'Denmark');
INSERT INTO public.teams VALUES (447, 'Spain');
INSERT INTO public.teams VALUES (449, 'Portugal');
INSERT INTO public.teams VALUES (451, 'Argentina');
INSERT INTO public.teams VALUES (452, 'Germany');
INSERT INTO public.teams VALUES (454, 'Netherlands');
INSERT INTO public.teams VALUES (461, 'Costa Rica');
INSERT INTO public.teams VALUES (469, 'Chile');
INSERT INTO public.teams VALUES (473, 'Nigeria');
INSERT INTO public.teams VALUES (475, 'Algeria');
INSERT INTO public.teams VALUES (479, 'Greece');
INSERT INTO public.teams VALUES (483, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 818, true);


--
-- Name: teams_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_name_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 483, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

