--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: itineraries; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.itineraries (
    id integer NOT NULL,
    type text,
    location_origin text,
    destination text,
    fromtime timestamp without time zone,
    totime timestamp without time zone,
    company text,
    booking_reference text,
    trip_id integer
);


ALTER TABLE public.itineraries OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.itineraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itineraries_id_seq OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.itineraries_id_seq OWNED BY public.itineraries.id;


--
-- Name: trips; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.trips (
    id integer NOT NULL,
    title text,
    description text,
    image_url text,
    user_id integer
);


ALTER TABLE public.trips OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.trips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_id_seq OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password_digest text
);


ALTER TABLE public.users OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: itineraries id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries ALTER COLUMN id SET DEFAULT nextval('public.itineraries_id_seq'::regclass);


--
-- Name: trips id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: itineraries; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.itineraries (id, type, location_origin, destination, fromtime, totime, company, booking_reference, trip_id) FROM stdin;
1	Flight	Sydney	Milan	2023-07-18 07:34:00	2023-07-19 17:40:00	Singapore Airline	SDF34	1
2	Stay	Milan	\N	2023-07-19 18:00:00	2023-07-23 12:00:00	Castello Guest House Milano	237753	1
\.


--
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.trips (id, title, description, image_url, user_id) FROM stdin;
1	Europe	Italy and Switzerland	https://static.saltinourhair.com/wp-content/uploads/2019/09/23131634/best-europe-city-trip.jpg	\N
2	Japan	Tokyo and Osaka	https://s3-cdn.designerjourneys.com/blog/wp-content/uploads/2020/08/24104726/sorasak-_UIN-pFfJ7c-unsplash-1-2048x1367.jpg	\N
3	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
4	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
5	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
6	New York 11	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.users (id, email, password_digest) FROM stdin;
\.


--
-- Name: itineraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.itineraries_id_seq', 2, true);


--
-- Name: trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.trips_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: itineraries itineraries_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries
    ADD CONSTRAINT itineraries_pkey PRIMARY KEY (id);


--
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: itineraries; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.itineraries (
    id integer NOT NULL,
    type text,
    location_origin text,
    destination text,
    fromtime timestamp without time zone,
    totime timestamp without time zone,
    company text,
    booking_reference text,
    trip_id integer
);


ALTER TABLE public.itineraries OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.itineraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itineraries_id_seq OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.itineraries_id_seq OWNED BY public.itineraries.id;


--
-- Name: trips; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.trips (
    id integer NOT NULL,
    title text,
    description text,
    image_url text,
    user_id integer
);


ALTER TABLE public.trips OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.trips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_id_seq OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password_digest text
);


ALTER TABLE public.users OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: itineraries id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries ALTER COLUMN id SET DEFAULT nextval('public.itineraries_id_seq'::regclass);


--
-- Name: trips id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: itineraries; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.itineraries (id, type, location_origin, destination, fromtime, totime, company, booking_reference, trip_id) FROM stdin;
1	Flight	Sydney	Milan	2023-07-18 07:34:00	2023-07-19 17:40:00	Singapore Airline	SDF34	1
2	Stay	Milan	\N	2023-07-19 18:00:00	2023-07-23 12:00:00	Castello Guest House Milano	237753	1
\.


--
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.trips (id, title, description, image_url, user_id) FROM stdin;
1	Europe	Italy and Switzerland	https://static.saltinourhair.com/wp-content/uploads/2019/09/23131634/best-europe-city-trip.jpg	\N
2	Japan	Tokyo and Osaka	https://s3-cdn.designerjourneys.com/blog/wp-content/uploads/2020/08/24104726/sorasak-_UIN-pFfJ7c-unsplash-1-2048x1367.jpg	\N
3	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
4	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
5	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
6	New York 11	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.users (id, email, password_digest) FROM stdin;
\.


--
-- Name: itineraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.itineraries_id_seq', 2, true);


--
-- Name: trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.trips_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: itineraries itineraries_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries
    ADD CONSTRAINT itineraries_pkey PRIMARY KEY (id);


--
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: itineraries; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.itineraries (
    id integer NOT NULL,
    type text,
    location_origin text,
    destination text,
    fromtime timestamp without time zone,
    totime timestamp without time zone,
    company text,
    booking_reference text,
    trip_id integer
);


ALTER TABLE public.itineraries OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.itineraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itineraries_id_seq OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.itineraries_id_seq OWNED BY public.itineraries.id;


--
-- Name: trips; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.trips (
    id integer NOT NULL,
    title text,
    description text,
    image_url text,
    user_id integer
);


ALTER TABLE public.trips OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.trips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_id_seq OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password_digest text
);


ALTER TABLE public.users OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: itineraries id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries ALTER COLUMN id SET DEFAULT nextval('public.itineraries_id_seq'::regclass);


--
-- Name: trips id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: itineraries; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.itineraries (id, type, location_origin, destination, fromtime, totime, company, booking_reference, trip_id) FROM stdin;
1	Flight	Sydney	Milan	2023-07-18 07:34:00	2023-07-19 17:40:00	Singapore Airline	SDF34	1
2	Stay	Milan	\N	2023-07-19 18:00:00	2023-07-23 12:00:00	Castello Guest House Milano	237753	1
\.


--
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.trips (id, title, description, image_url, user_id) FROM stdin;
1	Europe	Italy and Switzerland	https://static.saltinourhair.com/wp-content/uploads/2019/09/23131634/best-europe-city-trip.jpg	\N
2	Japan	Tokyo and Osaka	https://s3-cdn.designerjourneys.com/blog/wp-content/uploads/2020/08/24104726/sorasak-_UIN-pFfJ7c-unsplash-1-2048x1367.jpg	\N
3	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
4	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
5	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
6	New York 11	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.users (id, email, password_digest) FROM stdin;
\.


--
-- Name: itineraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.itineraries_id_seq', 2, true);


--
-- Name: trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.trips_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: itineraries itineraries_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries
    ADD CONSTRAINT itineraries_pkey PRIMARY KEY (id);


--
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: itineraries; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.itineraries (
    id integer NOT NULL,
    type text,
    location_origin text,
    destination text,
    fromtime timestamp without time zone,
    totime timestamp without time zone,
    company text,
    booking_reference text,
    trip_id integer
);


ALTER TABLE public.itineraries OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.itineraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itineraries_id_seq OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.itineraries_id_seq OWNED BY public.itineraries.id;


--
-- Name: trips; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.trips (
    id integer NOT NULL,
    title text,
    description text,
    image_url text,
    user_id integer
);


ALTER TABLE public.trips OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.trips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_id_seq OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password_digest text
);


ALTER TABLE public.users OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: itineraries id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries ALTER COLUMN id SET DEFAULT nextval('public.itineraries_id_seq'::regclass);


--
-- Name: trips id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: itineraries; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.itineraries (id, type, location_origin, destination, fromtime, totime, company, booking_reference, trip_id) FROM stdin;
1	Flight	Sydney	Milan	2023-07-18 07:34:00	2023-07-19 17:40:00	Singapore Airline	SDF34	1
2	Stay	Milan	\N	2023-07-19 18:00:00	2023-07-23 12:00:00	Castello Guest House Milano	237753	1
3	flight	Sydney	Tokyo	2023-06-28 15:27:00	2023-06-29 07:30:00	ANA	GR56RV	2
8	Flight	Sydney	NewYork	2023-08-03 19:40:00	2023-08-05 19:41:00	American airlines	4R5R4	3
\.


--
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.trips (id, title, description, image_url, user_id) FROM stdin;
1	Europe	Italy and Switzerland	https://static.saltinourhair.com/wp-content/uploads/2019/09/23131634/best-europe-city-trip.jpg	\N
2	Japan	Tokyo and Osaka	https://s3-cdn.designerjourneys.com/blog/wp-content/uploads/2020/08/24104726/sorasak-_UIN-pFfJ7c-unsplash-1-2048x1367.jpg	\N
3	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
4	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
5	NewYork	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.users (id, email, password_digest) FROM stdin;
1	chatkamon@ga.co	$2b$10$lBfjQdQm33O8y7ckjxSlKOmMMKAijFjdhiaUjMryzIfwvmdz/VHx2
\.


--
-- Name: itineraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.itineraries_id_seq', 8, true);


--
-- Name: trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.trips_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: itineraries itineraries_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries
    ADD CONSTRAINT itineraries_pkey PRIMARY KEY (id);


--
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: itineraries; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.itineraries (
    id integer NOT NULL,
    type text,
    location_origin text,
    destination text,
    fromtime timestamp without time zone,
    totime timestamp without time zone,
    company text,
    booking_reference text,
    trip_id integer
);


ALTER TABLE public.itineraries OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.itineraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itineraries_id_seq OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.itineraries_id_seq OWNED BY public.itineraries.id;


--
-- Name: trips; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.trips (
    id integer NOT NULL,
    title text,
    description text,
    image_url text,
    user_id integer
);


ALTER TABLE public.trips OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.trips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_id_seq OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password_digest text
);


ALTER TABLE public.users OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: itineraries id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries ALTER COLUMN id SET DEFAULT nextval('public.itineraries_id_seq'::regclass);


--
-- Name: trips id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: itineraries; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.itineraries (id, type, location_origin, destination, fromtime, totime, company, booking_reference, trip_id) FROM stdin;
1	Flight	Sydney	Milan	2023-07-18 07:34:00	2023-07-19 17:40:00	Singapore Airline	SDF34	1
2	Stay	Milan	\N	2023-07-19 18:00:00	2023-07-23 12:00:00	Castello Guest House Milano	237753	1
3	flight	Sydney	Tokyo	2023-06-28 15:27:00	2023-06-29 07:30:00	ANA	GR56RV	2
8	Flight	Sydney	NewYork	2023-08-03 19:40:00	2023-08-05 19:41:00	American airlines	4R5R4	3
\.


--
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.trips (id, title, description, image_url, user_id) FROM stdin;
1	Europe	Italy and Switzerland	https://static.saltinourhair.com/wp-content/uploads/2019/09/23131634/best-europe-city-trip.jpg	\N
2	Japan	Tokyo and Osaka	https://s3-cdn.designerjourneys.com/blog/wp-content/uploads/2020/08/24104726/sorasak-_UIN-pFfJ7c-unsplash-1-2048x1367.jpg	\N
3	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
4	New York	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
5	NewYork	New york city	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.users (id, email, password_digest) FROM stdin;
1	chatkamon@ga.co	$2b$10$lBfjQdQm33O8y7ckjxSlKOmMMKAijFjdhiaUjMryzIfwvmdz/VHx2
\.


--
-- Name: itineraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.itineraries_id_seq', 8, true);


--
-- Name: trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.trips_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: itineraries itineraries_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries
    ADD CONSTRAINT itineraries_pkey PRIMARY KEY (id);


--
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: itineraries; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.itineraries (
    id integer NOT NULL,
    type text,
    location_origin text,
    destination text,
    fromtime timestamp without time zone,
    totime timestamp without time zone,
    company text,
    booking_reference text,
    trip_id integer
);


ALTER TABLE public.itineraries OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.itineraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itineraries_id_seq OWNER TO "chatkamonc.";

--
-- Name: itineraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.itineraries_id_seq OWNED BY public.itineraries.id;


--
-- Name: trips; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.trips (
    id integer NOT NULL,
    title text,
    description text,
    image_url text,
    user_id integer
);


ALTER TABLE public.trips OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.trips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trips_id_seq OWNER TO "chatkamonc.";

--
-- Name: trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.trips_id_seq OWNED BY public.trips.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: chatkamonc.
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password_digest text
);


ALTER TABLE public.users OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: chatkamonc.
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "chatkamonc.";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: chatkamonc.
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: itineraries id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries ALTER COLUMN id SET DEFAULT nextval('public.itineraries_id_seq'::regclass);


--
-- Name: trips id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips ALTER COLUMN id SET DEFAULT nextval('public.trips_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: itineraries; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.itineraries (id, type, location_origin, destination, fromtime, totime, company, booking_reference, trip_id) FROM stdin;
1	Flight	Sydney	Milan	2023-07-18 07:34:00	2023-07-19 17:40:00	Singapore Airline	SDF34	1
2	Stay	Milan	\N	2023-07-19 18:00:00	2023-07-23 12:00:00	Castello Guest House Milano	237753	1
3	flight	Sydney	Tokyo	2023-06-28 15:27:00	2023-06-29 07:30:00	ANA	GR56RV	2
8	Flight	Sydney	NewYork	2023-08-03 19:40:00	2023-08-05 19:41:00	American airlines	4R5R4	3
10	Flight	Tokyo	Thailand	2023-09-15 22:23:00	2023-09-16 22:23:00	Thai airway	GF567H	10
11	Flight	Italy	Switzerland	2023-07-27 22:48:00	2023-07-28 22:48:00	Jetstar	GR56RV	1
12	Stay	Switzerland		2023-07-28 22:50:00	2023-08-04 22:50:00	Swissnight by foss	324434352	1
13	Stay	Interlaken		2023-08-02 10:52:00	2023-08-02 16:52:00			1
\.


--
-- Data for Name: trips; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.trips (id, title, description, image_url, user_id) FROM stdin;
1	Europe	Italy and Switzerland. Positano one of Italy's iconic picturesque villages. Puglia — or the Florence of the South. Capri for breathtaking views. Venice — Italy's "Floating City" The legendary villages of Cinque Terre. The romantic city of Verona. Sorrento for panoramic views.	https://static.saltinourhair.com/wp-content/uploads/2019/09/23131634/best-europe-city-trip.jpg	1
10	Thailand	Thailand is a Southeast Asian country. It's known for tropical beaches, opulent royal palaces, ancient ruins and ornate temples displaying figures of Buddha. In Bangkok, the capital, an ultramodern cityscape rises next to quiet canalside communities and the iconic temples of Wat Arun, Wat Pho and the Emerald Buddha Temple (Wat Phra Kaew). Nearby beach resorts include bustling Pattaya and fashionable Hua Hin.	https://as1.ftcdn.net/v2/jpg/02/98/24/82/1000_F_298248228_PHOmpQHRoPblMaGBbway9PVsaM3SCRJS.jpg	1
3	New York	New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square.	https://as1.ftcdn.net/v2/jpg/02/09/70/56/1000_F_209705645_b78HGJI1i1mxqLwMYA7z1m3VvCxgxJFO.jpg	1
4	Canada	Canada is a country in North America. Its ten provinces and three territories extend from the Atlantic Ocean to the Pacific Ocean and northward into the Arctic Ocean, making it the world's second-largest country by total area, with the world's longest coastline.	https://as1.ftcdn.net/v2/jpg/01/25/14/20/1000_F_125142058_w7fOhtt9tvXLH0tHJRqD0LTqkTTZgqAS.jpg	1
5	Vietnam	Vietnam is a Southeast Asian country known for its beaches, rivers, Buddhist pagodas and bustling cities. Hanoi, the capital, pays homage to the nation’s iconic Communist-era leader, Ho Chi Minh, via a huge marble mausoleum. Ho Chi Minh City (formerly Saigon) has French colonial landmarks, plus Vietnamese War history museums and the Củ Chi tunnels, used by Viet Cong soldiers.	https://as1.ftcdn.net/v2/jpg/01/28/78/98/1000_F_128789847_DplsTlayUMVgzz3at1afhS3JuGAHvigy.jpg	1
9	Los Angeles	Los Angeles is a sprawling Southern California city and the center of the nation’s film and television industry. Near its iconic Hollywood sign, studios such as Paramount Pictures, Universal and Warner Brothers offer behind-the-scenes tours. On Hollywood Boulevard, TCL Chinese Theatre displays celebrities’ hand- and footprints, the Walk of Fame honors thousands of luminaries and vendors sell maps to stars’ homes.	https://as2.ftcdn.net/v2/jpg/02/54/25/77/1000_F_254257700_mok8oRwkkG0u5FNth5EPtlqwqcJfwypZ.jpg	1
2	Japan	\r\nAs a first-timer in Japan, you should definitely visit the main tourist spots like Tokyo, Kyoto, and/or Osaka. In addition, you can also visit some isolated areas such as some beautiful islands like Hokkaido and Okinawa!	https://s3-cdn.designerjourneys.com/blog/wp-content/uploads/2020/08/24104726/sorasak-_UIN-pFfJ7c-unsplash-1-2048x1367.jpg	1
11	Australia	Australia, officially the Commonwealth of Australia, is a sovereign country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands. Australia is the largest country by area in Oceania and the world's sixth-largest country.	https://as2.ftcdn.net/v2/jpg/02/43/44/69/1000_F_243446992_dlh2txwxYqNIF9jtZeUN5muF3eA7ngnH.jpg	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: chatkamonc.
--

COPY public.users (id, email, password_digest) FROM stdin;
1	chatkamon@ga.co	$2b$10$lBfjQdQm33O8y7ckjxSlKOmMMKAijFjdhiaUjMryzIfwvmdz/VHx2
\.


--
-- Name: itineraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.itineraries_id_seq', 13, true);


--
-- Name: trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.trips_id_seq', 11, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatkamonc.
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: itineraries itineraries_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.itineraries
    ADD CONSTRAINT itineraries_pkey PRIMARY KEY (id);


--
-- Name: trips trips_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.trips
    ADD CONSTRAINT trips_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: chatkamonc.
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

