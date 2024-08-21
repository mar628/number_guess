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
    username character varying(22),
    guesses integer
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
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2, 'user_1724239885264', 523);
INSERT INTO public.games VALUES (4, 'user_1724239885263', 726);
INSERT INTO public.games VALUES (5, 'user_1724239885264', 179);
INSERT INTO public.games VALUES (6, 'user_1724239885264', 477);
INSERT INTO public.games VALUES (7, 'user_1724239885264', 878);
INSERT INTO public.games VALUES (10, 'user_1724239973130', 368);
INSERT INTO public.games VALUES (12, 'user_1724239973129', 540);
INSERT INTO public.games VALUES (13, 'user_1724239973130', 594);
INSERT INTO public.games VALUES (14, 'user_1724239973130', 588);
INSERT INTO public.games VALUES (15, 'user_1724239973130', 680);
INSERT INTO public.games VALUES (16, 'user_1724240051200', 55);
INSERT INTO public.games VALUES (17, 'user_1724240051200', 300);
INSERT INTO public.games VALUES (18, 'user_1724240051199', 368);
INSERT INTO public.games VALUES (19, 'user_1724240051199', 124);
INSERT INTO public.games VALUES (20, 'user_1724240051200', 208);
INSERT INTO public.games VALUES (21, 'user_1724240051200', 773);
INSERT INTO public.games VALUES (22, 'user_1724240051200', 218);
INSERT INTO public.games VALUES (23, 'user_1724240059204', 267);
INSERT INTO public.games VALUES (24, 'user_1724240059204', 931);
INSERT INTO public.games VALUES (25, 'user_1724240059203', 113);
INSERT INTO public.games VALUES (26, 'user_1724240059203', 781);
INSERT INTO public.games VALUES (27, 'user_1724240059204', 604);
INSERT INTO public.games VALUES (28, 'user_1724240059204', 781);
INSERT INTO public.games VALUES (29, 'user_1724240059204', 142);
INSERT INTO public.games VALUES (30, 'user_1724240075942', 434);
INSERT INTO public.games VALUES (31, 'user_1724240075942', 696);
INSERT INTO public.games VALUES (32, 'user_1724240075941', 592);
INSERT INTO public.games VALUES (33, 'user_1724240075941', 583);
INSERT INTO public.games VALUES (34, 'user_1724240075942', 278);
INSERT INTO public.games VALUES (35, 'user_1724240075942', 882);
INSERT INTO public.games VALUES (36, 'user_1724240075942', 786);
INSERT INTO public.games VALUES (37, 'user_1724240137086', 300);
INSERT INTO public.games VALUES (38, 'user_1724240137086', 364);
INSERT INTO public.games VALUES (39, 'user_1724240137085', 733);
INSERT INTO public.games VALUES (40, 'user_1724240137085', 246);
INSERT INTO public.games VALUES (41, 'user_1724240137086', 835);
INSERT INTO public.games VALUES (42, 'user_1724240137086', 456);
INSERT INTO public.games VALUES (43, 'user_1724240137086', 677);
INSERT INTO public.games VALUES (44, 'AAAAAAAAAAAAAAAAAAAAAA', 15);
INSERT INTO public.games VALUES (45, 'user_1724240222319', 528);
INSERT INTO public.games VALUES (46, 'user_1724240222319', 699);
INSERT INTO public.games VALUES (47, 'user_1724240222318', 402);
INSERT INTO public.games VALUES (48, 'user_1724240222318', 618);
INSERT INTO public.games VALUES (49, 'user_1724240222319', 863);
INSERT INTO public.games VALUES (50, 'user_1724240222319', 104);
INSERT INTO public.games VALUES (51, 'user_1724240222319', 732);
INSERT INTO public.games VALUES (52, 'user_1724240226390', 714);
INSERT INTO public.games VALUES (53, 'user_1724240226390', 25);
INSERT INTO public.games VALUES (54, 'user_1724240226389', 83);
INSERT INTO public.games VALUES (55, 'user_1724240226389', 542);
INSERT INTO public.games VALUES (56, 'user_1724240226390', 241);
INSERT INTO public.games VALUES (57, 'user_1724240226390', 212);
INSERT INTO public.games VALUES (58, 'user_1724240226390', 130);
INSERT INTO public.games VALUES (59, 'user_1724240239649', 393);
INSERT INTO public.games VALUES (60, 'user_1724240239649', 103);
INSERT INTO public.games VALUES (61, 'user_1724240239648', 492);
INSERT INTO public.games VALUES (62, 'user_1724240239648', 269);
INSERT INTO public.games VALUES (63, 'user_1724240239649', 275);
INSERT INTO public.games VALUES (64, 'user_1724240239649', 608);
INSERT INTO public.games VALUES (65, 'user_1724240239649', 177);
INSERT INTO public.games VALUES (66, 'user_1724240392803', 558);
INSERT INTO public.games VALUES (67, 'user_1724240392803', 468);
INSERT INTO public.games VALUES (68, 'user_1724240392802', 713);
INSERT INTO public.games VALUES (69, 'user_1724240392802', 163);
INSERT INTO public.games VALUES (70, 'user_1724240392803', 262);
INSERT INTO public.games VALUES (71, 'user_1724240392803', 981);
INSERT INTO public.games VALUES (72, 'user_1724240392803', 594);
INSERT INTO public.games VALUES (73, 'user_1724240543729', 962);
INSERT INTO public.games VALUES (74, 'user_1724240543729', 382);
INSERT INTO public.games VALUES (75, 'user_1724240543728', 24);
INSERT INTO public.games VALUES (76, 'user_1724240543728', 233);
INSERT INTO public.games VALUES (77, 'user_1724240543729', 900);
INSERT INTO public.games VALUES (78, 'user_1724240543729', 47);
INSERT INTO public.games VALUES (79, 'user_1724240543729', 307);
INSERT INTO public.games VALUES (80, 'user_1724240745075', 344);
INSERT INTO public.games VALUES (81, 'user_1724240745075', 657);
INSERT INTO public.games VALUES (82, 'user_1724240745074', 711);
INSERT INTO public.games VALUES (83, 'user_1724240745074', 205);
INSERT INTO public.games VALUES (84, 'user_1724240745075', 199);
INSERT INTO public.games VALUES (85, 'user_1724240745075', 916);
INSERT INTO public.games VALUES (86, 'user_1724240745075', 919);
INSERT INTO public.games VALUES (87, 'user_1724240794535', 161);
INSERT INTO public.games VALUES (88, 'user_1724240794535', 415);
INSERT INTO public.games VALUES (89, 'user_1724240794534', 247);
INSERT INTO public.games VALUES (90, 'user_1724240794534', 194);
INSERT INTO public.games VALUES (91, 'user_1724240794535', 710);
INSERT INTO public.games VALUES (92, 'user_1724240794535', 714);
INSERT INTO public.games VALUES (93, 'user_1724240794535', 12);
INSERT INTO public.games VALUES (94, 'user_1724240911115', 303);
INSERT INTO public.games VALUES (95, 'user_1724240911115', 632);
INSERT INTO public.games VALUES (96, 'user_1724240911114', 670);
INSERT INTO public.games VALUES (97, 'user_1724240911114', 311);
INSERT INTO public.games VALUES (98, 'user_1724240911115', 105);
INSERT INTO public.games VALUES (99, 'user_1724240911115', 343);
INSERT INTO public.games VALUES (100, 'user_1724240911115', 399);
INSERT INTO public.games VALUES (101, 'user_1724240945875', 523);
INSERT INTO public.games VALUES (102, 'user_1724240945875', 312);
INSERT INTO public.games VALUES (103, 'user_1724240945874', 463);
INSERT INTO public.games VALUES (104, 'user_1724240945874', 217);
INSERT INTO public.games VALUES (105, 'user_1724240945875', 878);
INSERT INTO public.games VALUES (106, 'user_1724240945875', 551);
INSERT INTO public.games VALUES (107, 'user_1724240945875', 230);
INSERT INTO public.games VALUES (108, 'user_1724240974816', 923);
INSERT INTO public.games VALUES (109, 'user_1724240974816', 464);
INSERT INTO public.games VALUES (110, 'user_1724240974815', 167);
INSERT INTO public.games VALUES (111, 'user_1724240974815', 603);
INSERT INTO public.games VALUES (112, 'user_1724240974816', 989);
INSERT INTO public.games VALUES (113, 'user_1724240974816', 453);
INSERT INTO public.games VALUES (114, 'user_1724240974816', 696);
INSERT INTO public.games VALUES (115, 'user_1724241016549', 303);
INSERT INTO public.games VALUES (116, 'user_1724241016549', 59);
INSERT INTO public.games VALUES (117, 'user_1724241016548', 730);
INSERT INTO public.games VALUES (118, 'user_1724241016548', 302);
INSERT INTO public.games VALUES (119, 'user_1724241016549', 264);
INSERT INTO public.games VALUES (120, 'user_1724241016549', 332);
INSERT INTO public.games VALUES (121, 'user_1724241016549', 880);
INSERT INTO public.games VALUES (122, 'user_1724241124711', 915);
INSERT INTO public.games VALUES (123, 'user_1724241124711', 172);
INSERT INTO public.games VALUES (124, 'user_1724241124710', 814);
INSERT INTO public.games VALUES (125, 'user_1724241124710', 978);
INSERT INTO public.games VALUES (126, 'user_1724241124711', 222);
INSERT INTO public.games VALUES (127, 'user_1724241124711', 432);
INSERT INTO public.games VALUES (128, 'user_1724241124711', 285);
INSERT INTO public.games VALUES (129, 'user_1724241128403', 993);
INSERT INTO public.games VALUES (130, 'user_1724241128403', 280);
INSERT INTO public.games VALUES (131, 'user_1724241128402', 67);
INSERT INTO public.games VALUES (132, 'user_1724241128402', 898);
INSERT INTO public.games VALUES (133, 'user_1724241128403', 712);
INSERT INTO public.games VALUES (134, 'user_1724241128403', 955);
INSERT INTO public.games VALUES (135, 'user_1724241128403', 802);
INSERT INTO public.games VALUES (136, 'user_1724241164598', 100);
INSERT INTO public.games VALUES (137, 'user_1724241164598', 496);
INSERT INTO public.games VALUES (138, 'user_1724241164597', 281);
INSERT INTO public.games VALUES (139, 'user_1724241164597', 769);
INSERT INTO public.games VALUES (140, 'user_1724241164598', 785);
INSERT INTO public.games VALUES (141, 'user_1724241164598', 428);
INSERT INTO public.games VALUES (142, 'user_1724241164598', 551);
INSERT INTO public.games VALUES (143, 'user_1724241174470', 948);
INSERT INTO public.games VALUES (144, 'user_1724241174470', 499);
INSERT INTO public.games VALUES (145, 'user_1724241174469', 859);
INSERT INTO public.games VALUES (146, 'user_1724241174469', 307);
INSERT INTO public.games VALUES (147, 'user_1724241174470', 704);
INSERT INTO public.games VALUES (148, 'user_1724241174470', 225);
INSERT INTO public.games VALUES (149, 'user_1724241174470', 38);
INSERT INTO public.games VALUES (150, 'user_1724241210323', 578);
INSERT INTO public.games VALUES (151, 'user_1724241210323', 583);
INSERT INTO public.games VALUES (152, 'user_1724241210322', 403);
INSERT INTO public.games VALUES (153, 'user_1724241210322', 939);
INSERT INTO public.games VALUES (154, 'user_1724241210323', 907);
INSERT INTO public.games VALUES (155, 'user_1724241210323', 705);
INSERT INTO public.games VALUES (156, 'user_1724241210323', 717);
INSERT INTO public.games VALUES (157, 'user_1724241282617', 945);
INSERT INTO public.games VALUES (158, 'user_1724241282617', 26);
INSERT INTO public.games VALUES (159, 'user_1724241282616', 265);
INSERT INTO public.games VALUES (160, 'user_1724241282616', 94);
INSERT INTO public.games VALUES (161, 'user_1724241282617', 193);
INSERT INTO public.games VALUES (162, 'user_1724241282617', 842);
INSERT INTO public.games VALUES (163, 'user_1724241282617', 342);
INSERT INTO public.games VALUES (164, 'user_1724241355388', 861);
INSERT INTO public.games VALUES (165, 'user_1724241355388', 806);
INSERT INTO public.games VALUES (166, 'user_1724241355387', 430);
INSERT INTO public.games VALUES (167, 'user_1724241355387', 201);
INSERT INTO public.games VALUES (168, 'user_1724241355388', 59);
INSERT INTO public.games VALUES (169, 'user_1724241355388', 895);
INSERT INTO public.games VALUES (170, 'user_1724241355388', 402);
INSERT INTO public.games VALUES (171, 'user_1724241483537', 431);
INSERT INTO public.games VALUES (172, 'user_1724241483537', 984);
INSERT INTO public.games VALUES (173, 'user_1724241483536', 787);
INSERT INTO public.games VALUES (174, 'user_1724241483536', 756);
INSERT INTO public.games VALUES (175, 'user_1724241483537', 338);
INSERT INTO public.games VALUES (176, 'user_1724241483537', 62);
INSERT INTO public.games VALUES (177, 'user_1724241483537', 226);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1724239885263', 2, 49);
INSERT INTO public.users VALUES ('user_1724239885264', 5, 70);
INSERT INTO public.users VALUES ('A', 1, 12);
INSERT INTO public.users VALUES ('user_1724239973129', 2, 540);
INSERT INTO public.users VALUES ('user_1724239973130', 5, 57);
INSERT INTO public.users VALUES ('user_1724240222318', 2, 402);
INSERT INTO public.users VALUES ('user_1724240222319', 5, 104);
INSERT INTO public.users VALUES ('user_1724240051199', 2, 124);
INSERT INTO public.users VALUES ('user_1724240794534', 2, 194);
INSERT INTO public.users VALUES ('user_1724240051200', 5, 55);
INSERT INTO public.users VALUES ('user_1724241124710', 2, 814);
INSERT INTO public.users VALUES ('user_1724240794535', 5, 12);
INSERT INTO public.users VALUES ('user_1724240059203', 2, 113);
INSERT INTO public.users VALUES ('user_1724240226389', 2, 83);
INSERT INTO public.users VALUES ('user_1724240059204', 5, 142);
INSERT INTO public.users VALUES ('user_1724240226390', 5, 25);
INSERT INTO public.users VALUES ('user_1724241124711', 5, 172);
INSERT INTO public.users VALUES ('user_1724240075941', 2, 583);
INSERT INTO public.users VALUES ('user_1724241355387', 2, 201);
INSERT INTO public.users VALUES ('user_1724240075942', 5, 278);
INSERT INTO public.users VALUES ('user_1724240911114', 2, 311);
INSERT INTO public.users VALUES ('user_1724240239648', 2, 269);
INSERT INTO public.users VALUES ('user_1724240239649', 5, 103);
INSERT INTO public.users VALUES ('user_1724240137085', 2, 246);
INSERT INTO public.users VALUES ('user_1724240911115', 5, 105);
INSERT INTO public.users VALUES ('user_1724240137086', 5, 300);
INSERT INTO public.users VALUES ('AAAAAAAAAAAAAAAAAAAAAA', 1, 15);
INSERT INTO public.users VALUES ('user_1724241355388', 5, 59);
INSERT INTO public.users VALUES ('user_1724241128402', 2, 67);
INSERT INTO public.users VALUES ('user_1724240392802', 2, 163);
INSERT INTO public.users VALUES ('user_1724241128403', 5, 280);
INSERT INTO public.users VALUES ('user_1724240392803', 5, 262);
INSERT INTO public.users VALUES ('user_1724240945874', 2, 217);
INSERT INTO public.users VALUES ('user_1724240945875', 5, 230);
INSERT INTO public.users VALUES ('user_1724240543728', 2, 24);
INSERT INTO public.users VALUES ('user_1724240543729', 5, 47);
INSERT INTO public.users VALUES ('user_1724241164597', 2, 281);
INSERT INTO public.users VALUES ('user_1724241483536', 2, 756);
INSERT INTO public.users VALUES ('user_1724240974815', 2, 167);
INSERT INTO public.users VALUES ('user_1724241164598', 5, 100);
INSERT INTO public.users VALUES ('user_1724240745074', 2, 205);
INSERT INTO public.users VALUES ('user_1724240974816', 5, 453);
INSERT INTO public.users VALUES ('user_1724240745075', 5, 199);
INSERT INTO public.users VALUES ('user_1724241483537', 5, 62);
INSERT INTO public.users VALUES ('user_1724241016548', 2, 302);
INSERT INTO public.users VALUES ('user_1724241174469', 2, 307);
INSERT INTO public.users VALUES ('user_1724241016549', 5, 59);
INSERT INTO public.users VALUES ('user_1724241174470', 5, 38);
INSERT INTO public.users VALUES ('user_1724241210322', 2, 403);
INSERT INTO public.users VALUES ('user_1724241210323', 5, 578);
INSERT INTO public.users VALUES ('user_1724241282616', 2, 94);
INSERT INTO public.users VALUES ('user_1724241282617', 5, 26);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 177, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: games games_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- PostgreSQL database dump complete
--

