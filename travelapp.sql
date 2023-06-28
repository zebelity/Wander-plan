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

