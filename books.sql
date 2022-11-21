--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--
DROP TABLE IF EXISTS public.books CASCADE;

CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying,
    author character varying,
    rating integer
);

ALTER TABLE public.books OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--
DROP SEQUENCE IF EXISTS public.books_id_seq CASCADE;

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



ALTER TABLE public.books_id_seq OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (id, title, author, rating) FROM stdin;
3	The Great Alone	Kristin Hannah	4
6	Lullaby	Leila Slimani	2
7	Immigrant, Montana	Amitava Kumar	5
13	All We Ever Wanted	Emily Giffin	4
14	We Fed an Island	Jose Andres	4
16	The Maze at Windermere	Gregory Blake Smith	2
4	Educated: A Memoir	Tara Westover	5
10	An American Marriage	Tayari Jones	5
8	CIRCE	Madeline Miller	5
11	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	5
12	Heavy: An American Memoir	Kiese Laymon	1
15	The Mars Room	Rachel Kushner	1
1	The Outsider: A Novel	Stephen King	5
2	Asymmetry: A Novel	Lisa Halliday	4
9	Insurrecto: A Novel	Gina Apostol	5
5	Still Me: A Novel	Jojo Moyes	5
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 22, true);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
