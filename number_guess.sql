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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 18, 2);
INSERT INTO public.games VALUES (2, 122, 3);
INSERT INTO public.games VALUES (3, 780, 3);
INSERT INTO public.games VALUES (4, 796, 4);
INSERT INTO public.games VALUES (5, 587, 4);
INSERT INTO public.games VALUES (6, 906, 3);
INSERT INTO public.games VALUES (7, 171, 3);
INSERT INTO public.games VALUES (8, 447, 3);
INSERT INTO public.games VALUES (9, 670, 5);
INSERT INTO public.games VALUES (10, 569, 5);
INSERT INTO public.games VALUES (11, 219, 6);
INSERT INTO public.games VALUES (12, 633, 6);
INSERT INTO public.games VALUES (13, 792, 5);
INSERT INTO public.games VALUES (14, 559, 5);
INSERT INTO public.games VALUES (15, 426, 5);
INSERT INTO public.games VALUES (16, 644, 7);
INSERT INTO public.games VALUES (17, 172, 7);
INSERT INTO public.games VALUES (18, 91, 8);
INSERT INTO public.games VALUES (19, 809, 8);
INSERT INTO public.games VALUES (20, 34, 7);
INSERT INTO public.games VALUES (21, 953, 7);
INSERT INTO public.games VALUES (22, 921, 7);
INSERT INTO public.games VALUES (23, 32, 9);
INSERT INTO public.games VALUES (24, 845, 9);
INSERT INTO public.games VALUES (25, 483, 10);
INSERT INTO public.games VALUES (26, 500, 10);
INSERT INTO public.games VALUES (27, 81, 9);
INSERT INTO public.games VALUES (28, 523, 9);
INSERT INTO public.games VALUES (29, 107, 9);
INSERT INTO public.games VALUES (30, 256, 11);
INSERT INTO public.games VALUES (31, 351, 11);
INSERT INTO public.games VALUES (32, 214, 12);
INSERT INTO public.games VALUES (33, 631, 12);
INSERT INTO public.games VALUES (34, 490, 11);
INSERT INTO public.games VALUES (35, 765, 11);
INSERT INTO public.games VALUES (36, 550, 11);
INSERT INTO public.games VALUES (37, 275, 13);
INSERT INTO public.games VALUES (38, 335, 13);
INSERT INTO public.games VALUES (39, 506, 14);
INSERT INTO public.games VALUES (40, 302, 14);
INSERT INTO public.games VALUES (41, 78, 13);
INSERT INTO public.games VALUES (42, 134, 13);
INSERT INTO public.games VALUES (43, 461, 13);
INSERT INTO public.games VALUES (44, 185, 15);
INSERT INTO public.games VALUES (45, 510, 15);
INSERT INTO public.games VALUES (46, 846, 16);
INSERT INTO public.games VALUES (47, 674, 16);
INSERT INTO public.games VALUES (48, 19, 15);
INSERT INTO public.games VALUES (49, 150, 15);
INSERT INTO public.games VALUES (50, 197, 15);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 's^[[A');
INSERT INTO public.users VALUES (2, 'maxi');
INSERT INTO public.users VALUES (3, 'user_1733011555532');
INSERT INTO public.users VALUES (4, 'user_1733011555531');
INSERT INTO public.users VALUES (5, 'user_1733011728644');
INSERT INTO public.users VALUES (6, 'user_1733011728643');
INSERT INTO public.users VALUES (7, 'user_1733011996337');
INSERT INTO public.users VALUES (8, 'user_1733011996336');
INSERT INTO public.users VALUES (9, 'user_1733012356890');
INSERT INTO public.users VALUES (10, 'user_1733012356889');
INSERT INTO public.users VALUES (11, 'user_1733012393162');
INSERT INTO public.users VALUES (12, 'user_1733012393161');
INSERT INTO public.users VALUES (13, 'user_1733012443805');
INSERT INTO public.users VALUES (14, 'user_1733012443804');
INSERT INTO public.users VALUES (15, 'user_1733012510715');
INSERT INTO public.users VALUES (16, 'user_1733012510714');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 50, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

