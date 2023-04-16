--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)

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

--
-- Name: communities; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.communities (
    id integer NOT NULL,
    name character varying(120),
    creator_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.communities OWNER TO gb_user;

--
-- Name: communities_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.communities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communities_id_seq OWNER TO gb_user;

--
-- Name: communities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.communities_id_seq OWNED BY public.communities.id;


--
-- Name: communities_users; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.communities_users (
    community_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.communities_users OWNER TO gb_user;

--
-- Name: friendship; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.friendship (
    id integer NOT NULL,
    requested_from_user_id integer NOT NULL,
    requested_to_user_id integer NOT NULL,
    status_id integer NOT NULL,
    requested_at timestamp without time zone,
    confirmed_at timestamp without time zone
);


ALTER TABLE public.friendship OWNER TO gb_user;

--
-- Name: friendship_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.friendship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendship_id_seq OWNER TO gb_user;

--
-- Name: friendship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.friendship_id_seq OWNED BY public.friendship.id;


--
-- Name: friendship_statuses; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.friendship_statuses (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.friendship_statuses OWNER TO gb_user;

--
-- Name: friendship_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.friendship_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendship_statuses_id_seq OWNER TO gb_user;

--
-- Name: friendship_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.friendship_statuses_id_seq OWNED BY public.friendship_statuses.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    from_user_id integer NOT NULL,
    to_user_id integer NOT NULL,
    body text,
    is_important boolean,
    is_delivered boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.messages OWNER TO gb_user;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO gb_user;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: photo; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.photo (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    description character varying(250) NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.photo OWNER TO gb_user;

--
-- Name: photo_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photo_id_seq OWNER TO gb_user;

--
-- Name: photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.photo_id_seq OWNED BY public.photo.id;


--
-- Name: subscribe; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.subscribe (
    id integer NOT NULL,
    owner_id integer,
    to_community_id integer,
    to_user_id integer
);


ALTER TABLE public.subscribe OWNER TO gb_user;

--
-- Name: subscribe_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.subscribe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscribe_id_seq OWNER TO gb_user;

--
-- Name: subscribe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.subscribe_id_seq OWNED BY public.subscribe.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(255) DEFAULT NULL::character varying,
    last_name character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    phone character varying(100) DEFAULT NULL::character varying,
    main_photo_id integer,
    created_at character varying(255)
);


ALTER TABLE public.users OWNER TO gb_user;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO gb_user;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: video; Type: TABLE; Schema: public; Owner: gb_user
--

CREATE TABLE public.video (
    id integer NOT NULL,
    url character varying(255),
    owner_id integer,
    description text,
    uploaded_at character varying(255),
    size integer
);


ALTER TABLE public.video OWNER TO gb_user;

--
-- Name: video_id_seq; Type: SEQUENCE; Schema: public; Owner: gb_user
--

CREATE SEQUENCE public.video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.video_id_seq OWNER TO gb_user;

--
-- Name: video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gb_user
--

ALTER SEQUENCE public.video_id_seq OWNED BY public.video.id;


--
-- Name: test; Type: VIEW; Schema: s_users; Owner: gb_user
--

CREATE VIEW s_users.test AS
 SELECT users.id,
    users.first_name,
    users.last_name,
    users.email,
    users.phone,
    users.main_photo_id,
    users.created_at
   FROM public.users
 LIMIT 10;


ALTER TABLE s_users.test OWNER TO gb_user;

--
-- Name: communities id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities ALTER COLUMN id SET DEFAULT nextval('public.communities_id_seq'::regclass);


--
-- Name: friendship id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.friendship ALTER COLUMN id SET DEFAULT nextval('public.friendship_id_seq'::regclass);


--
-- Name: friendship_statuses id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.friendship_statuses ALTER COLUMN id SET DEFAULT nextval('public.friendship_statuses_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: photo id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.photo ALTER COLUMN id SET DEFAULT nextval('public.photo_id_seq'::regclass);


--
-- Name: subscribe id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.subscribe ALTER COLUMN id SET DEFAULT nextval('public.subscribe_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: video id; Type: DEFAULT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.video ALTER COLUMN id SET DEFAULT nextval('public.video_id_seq'::regclass);


--
-- Data for Name: communities; Type: TABLE DATA; Schema: public; Owner: gb_user
--

INSERT INTO public.communities VALUES (1, 'imperdiet nec, leo. Morbi', 8, '2023-07-30 00:00:00');
INSERT INTO public.communities VALUES (2, 'magna. Cras', 44, '2022-07-04 00:00:00');
INSERT INTO public.communities VALUES (3, 'pretium et, rutrum', 8, '2023-02-16 00:00:00');
INSERT INTO public.communities VALUES (4, 'Integer in magna.', 9, '2022-05-10 00:00:00');
INSERT INTO public.communities VALUES (5, 'eros. Proin ultrices.', 3, '2022-07-10 00:00:00');
INSERT INTO public.communities VALUES (6, 'dictum. Proin', 18, '2024-01-30 00:00:00');
INSERT INTO public.communities VALUES (7, 'vitae, aliquet', 29, '2024-04-10 00:00:00');
INSERT INTO public.communities VALUES (8, 'fringilla', 23, '2022-06-17 00:00:00');
INSERT INTO public.communities VALUES (9, 'a neque. Nullam', 46, '2023-07-21 00:00:00');
INSERT INTO public.communities VALUES (10, 'luctus', 30, '2023-10-04 00:00:00');
INSERT INTO public.communities VALUES (11, 'vitae, orci. Phasellus', 23, '2022-07-31 00:00:00');
INSERT INTO public.communities VALUES (12, 'nulla. Donec non', 37, '2023-02-06 00:00:00');
INSERT INTO public.communities VALUES (13, 'Donec sollicitudin adipiscing', 50, '2023-10-07 00:00:00');
INSERT INTO public.communities VALUES (14, 'metus. Vivamus', 50, '2022-11-15 00:00:00');
INSERT INTO public.communities VALUES (15, 'Donec porttitor', 20, '2022-06-04 00:00:00');
INSERT INTO public.communities VALUES (16, 'at, egestas a,', 41, '2023-05-18 00:00:00');
INSERT INTO public.communities VALUES (17, 'vel', 12, '2022-04-26 00:00:00');
INSERT INTO public.communities VALUES (18, 'luctus et ultrices posuere', 7, '2023-03-07 00:00:00');
INSERT INTO public.communities VALUES (19, 'non ante bibendum', 41, '2023-09-07 00:00:00');
INSERT INTO public.communities VALUES (20, 'orci, adipiscing', 18, '2023-03-18 00:00:00');

--
-- Data for Name: communities_users; Type: TABLE DATA; Schema: public; Owner: gb_user
--

INSERT INTO public.communities_users VALUES (5, 15, '2024-02-12 00:00:00');
INSERT INTO public.communities_users VALUES (47, 50, '2023-11-15 00:00:00');
INSERT INTO public.communities_users VALUES (28, 37, '2022-12-17 00:00:00');
INSERT INTO public.communities_users VALUES (41, 8, '2022-06-02 00:00:00');
INSERT INTO public.communities_users VALUES (27, 52, '2024-04-14 00:00:00');
INSERT INTO public.communities_users VALUES (49, 91, '2024-03-22 00:00:00');
INSERT INTO public.communities_users VALUES (37, 6, '2022-10-19 00:00:00');
INSERT INTO public.communities_users VALUES (36, 21, '2023-06-10 00:00:00');
INSERT INTO public.communities_users VALUES (6, 97, '2022-06-16 00:00:00');
INSERT INTO public.communities_users VALUES (41, 30, '2023-12-29 00:00:00');
INSERT INTO public.communities_users VALUES (47, 18, '2023-12-09 00:00:00');
INSERT INTO public.communities_users VALUES (29, 77, '2023-10-22 00:00:00');
INSERT INTO public.communities_users VALUES (49, 85, '2024-02-11 00:00:00');
INSERT INTO public.communities_users VALUES (12, 40, '2022-12-12 00:00:00');
INSERT INTO public.communities_users VALUES (49, 31, '2022-07-05 00:00:00');
INSERT INTO public.communities_users VALUES (13, 67, '2023-10-13 00:00:00');
INSERT INTO public.communities_users VALUES (36, 1, '2024-01-11 00:00:00');
INSERT INTO public.communities_users VALUES (29, 19, '2023-11-30 00:00:00');
INSERT INTO public.communities_users VALUES (25, 75, '2023-03-13 00:00:00');
INSERT INTO public.communities_users VALUES (23, 58, '2022-08-31 00:00:00');

--
-- Data for Name: friendship; Type: TABLE DATA; Schema: public; Owner: gb_user
--

INSERT INTO public.friendship VALUES (1, 35, 20, 7, '2024-02-17 00:00:00', '2023-01-17 00:00:00');
INSERT INTO public.friendship VALUES (2, 88, 55, 3, '2022-04-22 00:00:00', '2024-03-02 00:00:00');
INSERT INTO public.friendship VALUES (3, 47, 62, 6, '2022-12-20 00:00:00', '2024-03-19 00:00:00');
INSERT INTO public.friendship VALUES (4, 14, 98, 4, '2023-09-04 00:00:00', '2022-09-29 00:00:00');
INSERT INTO public.friendship VALUES (5, 29, 21, 3, '2022-08-07 00:00:00', '2023-06-18 00:00:00');
INSERT INTO public.friendship VALUES (6, 82, 90, 3, '2024-04-01 00:00:00', '2024-03-26 00:00:00');
INSERT INTO public.friendship VALUES (7, 95, 42, 2, '2023-03-26 00:00:00', '2023-07-28 00:00:00');
INSERT INTO public.friendship VALUES (8, 73, 86, 6, '2023-10-17 00:00:00', '2023-01-03 00:00:00');
INSERT INTO public.friendship VALUES (9, 66, 65, 7, '2022-04-22 00:00:00', '2024-03-06 00:00:00');
INSERT INTO public.friendship VALUES (10, 96, 46, 4, '2022-05-07 00:00:00', '2023-05-15 00:00:00');
INSERT INTO public.friendship VALUES (11, 55, 96, 6, '2022-09-06 00:00:00', '2022-07-11 00:00:00');
INSERT INTO public.friendship VALUES (12, 29, 41, 1, '2023-07-19 00:00:00', '2023-04-18 00:00:00');
INSERT INTO public.friendship VALUES (13, 95, 60, 8, '2022-04-21 00:00:00', '2022-09-23 00:00:00');
INSERT INTO public.friendship VALUES (14, 74, 81, 9, '2023-12-18 00:00:00', '2023-12-30 00:00:00');
INSERT INTO public.friendship VALUES (15, 87, 59, 5, '2023-06-25 00:00:00', '2022-06-09 00:00:00');
INSERT INTO public.friendship VALUES (16, 15, 44, 8, '2023-11-08 00:00:00', '2022-10-10 00:00:00');
INSERT INTO public.friendship VALUES (17, 48, 20, 1, '2022-10-22 00:00:00', '2024-01-04 00:00:00');
INSERT INTO public.friendship VALUES (18, 31, 62, 7, '2023-05-29 00:00:00', '2023-03-15 00:00:00');
INSERT INTO public.friendship VALUES (19, 20, 52, 2, '2022-06-22 00:00:00', '2022-05-04 00:00:00');
INSERT INTO public.friendship VALUES (20, 87, 30, 9, '2023-05-21 00:00:00', '2023-04-19 00:00:00');

--
-- Data for Name: friendship_statuses; Type: TABLE DATA; Schema: public; Owner: gb_user
--

INSERT INTO public.friendship_statuses VALUES (1, 'lorem,');
INSERT INTO public.friendship_statuses VALUES (2, 'congue');
INSERT INTO public.friendship_statuses VALUES (3, 'netus');
INSERT INTO public.friendship_statuses VALUES (4, 'mollis');
INSERT INTO public.friendship_statuses VALUES (5, 'Morbi');
INSERT INTO public.friendship_statuses VALUES (6, 'nibh.');
INSERT INTO public.friendship_statuses VALUES (7, 'rhoncus.');
INSERT INTO public.friendship_statuses VALUES (8, 'sapien');
INSERT INTO public.friendship_statuses VALUES (9, 'natoque');
INSERT INTO public.friendship_statuses VALUES (10, 'turpis.');
INSERT INTO public.friendship_statuses VALUES (11, 'magna.');
INSERT INTO public.friendship_statuses VALUES (12, 'Integer');
INSERT INTO public.friendship_statuses VALUES (13, 'tincidunt,');
INSERT INTO public.friendship_statuses VALUES (14, 'ante');
INSERT INTO public.friendship_statuses VALUES (15, 'erat,');
INSERT INTO public.friendship_statuses VALUES (16, 'ante');
INSERT INTO public.friendship_statuses VALUES (17, 'Aliquam');
INSERT INTO public.friendship_statuses VALUES (18, 'facilisis,');
INSERT INTO public.friendship_statuses VALUES (19, 'penatibus');
INSERT INTO public.friendship_statuses VALUES (20, 'erat.');

--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: gb_user
--

INSERT INTO public.messages VALUES (1, 25, 23, 'Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices', true, false, '2023-03-19 00:00:00');
INSERT INTO public.messages VALUES (2, 87, 81, 'tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean', false, true, '2023-01-28 00:00:00');
INSERT INTO public.messages VALUES (3, 50, 49, 'Vivamus rhoncus. Donec est.', false, false, '2024-03-08 00:00:00');
INSERT INTO public.messages VALUES (4, 15, 43, 'ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros', true, true, '2024-02-02 00:00:00');
INSERT INTO public.messages VALUES (5, 21, 70, 'mauris sagittis placerat. Cras', false, true, '2022-09-28 00:00:00');
INSERT INTO public.messages VALUES (6, 11, 89, 'erat. Etiam vestibulum massa rutrum magna. Cras', false, false, '2024-01-21 00:00:00');
INSERT INTO public.messages VALUES (7, 40, 31, 'vel, mauris. Integer sem', false, false, '2023-03-20 00:00:00');
INSERT INTO public.messages VALUES (8, 23, 8, 'Integer mollis. Integer tincidunt', false, false, '2023-09-06 00:00:00');
INSERT INTO public.messages VALUES (9, 82, 46, 'justo eu arcu. Morbi sit', false, false, '2024-01-01 00:00:00');
INSERT INTO public.messages VALUES (10, 46, 7, 'ante, iaculis nec, eleifend', false, true, '2022-12-04 00:00:00');
INSERT INTO public.messages VALUES (11, 59, 45, 'sapien. Nunc pulvinar arcu et pede. Nunc', false, true, '2023-02-01 00:00:00');
INSERT INTO public.messages VALUES (12, 4, 59, 'est ac mattis semper, dui lectus rutrum urna,', true, false, '2023-06-20 00:00:00');
INSERT INTO public.messages VALUES (13, 13, 17, 'consequat nec, mollis vitae, posuere', false, false, '2023-09-09 00:00:00');
INSERT INTO public.messages VALUES (14, 17, 92, 'orci sem eget massa.', true, false, '2023-11-21 00:00:00');
INSERT INTO public.messages VALUES (15, 21, 2, 'diam. Pellentesque habitant', true, false, '2022-06-26 00:00:00');
INSERT INTO public.messages VALUES (16, 77, 0, 'velit eu sem. Pellentesque ut ipsum ac', false, false, '2024-03-22 00:00:00');
INSERT INTO public.messages VALUES (17, 96, 100, 'tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin', true, true, '2023-09-07 00:00:00');
INSERT INTO public.messages VALUES (18, 57, 36, 'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit', false, false, '2023-02-14 00:00:00');
INSERT INTO public.messages VALUES (19, 54, 47, 'elit erat vitae risus. Duis a', true, false, '2023-05-03 00:00:00');
INSERT INTO public.messages VALUES (20, 27, 80, 'magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna', false, true, '2022-08-30 00:00:00');

--
-- Data for Name: photo; Type: TABLE DATA; Schema: public; Owner: gb_user
--

INSERT INTO public.photo VALUES (776, 'https://pinterest.com/sub', 10, 'euismod est arcu', '2023-11-13 00:00:00', 875);
INSERT INTO public.photo VALUES (777, 'http://wikipedia.org/sub', 46, 'mi. Duis risus odio,', '2024-01-19 00:00:00', 983);
INSERT INTO public.photo VALUES (778, 'https://cnn.com/en-ca', 90, 'Aliquam ornare, libero at auctor', '2024-02-08 00:00:00', 577);
INSERT INTO public.photo VALUES (779, 'https://instagram.com/site', 2, 'odio. Etiam ligula tortor, dictum', '2022-10-08 00:00:00', 374);
INSERT INTO public.photo VALUES (780, 'https://yahoo.com/sub', 7, 'sollicitudin a, malesuada id,', '2022-05-18 00:00:00', 823);
INSERT INTO public.photo VALUES (781, 'https://reddit.com/settings', 85, 'ultrices. Vivamus rhoncus. Donec', '2023-09-22 00:00:00', 734);
INSERT INTO public.photo VALUES (782, 'http://facebook.com/user/110', 57, 'Aenean sed pede', '2023-03-19 00:00:00', 521);
INSERT INTO public.photo VALUES (783, 'https://guardian.co.uk/en-ca', 37, 'sed, est. Nunc', '2024-01-17 00:00:00', 379);
INSERT INTO public.photo VALUES (784, 'http://nytimes.com/site', 79, 'sit amet', '2023-03-15 00:00:00', 289);
INSERT INTO public.photo VALUES (785, 'https://cnn.com/one', 46, 'justo sit', '2022-07-08 00:00:00', 995);
INSERT INTO public.photo VALUES (786, 'https://wikipedia.org/one', 41, 'gravida. Praesent', '2023-11-13 00:00:00', 328);
INSERT INTO public.photo VALUES (787, 'http://pinterest.com/one', 45, 'auctor,', '2022-12-08 00:00:00', 121);
INSERT INTO public.photo VALUES (788, 'https://whatsapp.com/site', 16, 'Praesent interdum', '2022-10-04 00:00:00', 980);
INSERT INTO public.photo VALUES (789, 'http://wikipedia.org/site', 31, 'vehicula et, rutrum', '2024-01-23 00:00:00', 765);
INSERT INTO public.photo VALUES (790, 'http://walmart.com/one', 64, 'mauris. Suspendisse aliquet', '2023-10-12 00:00:00', 761);
INSERT INTO public.photo VALUES (791, 'http://instagram.com/sub', 97, 'enim, condimentum eget, volutpat ornare,', '2023-03-24 00:00:00', 462);
INSERT INTO public.photo VALUES (792, 'http://whatsapp.com/sub', 31, 'nec, leo. Morbi neque tellus,', '2023-03-16 00:00:00', 612);
INSERT INTO public.photo VALUES (793, 'https://google.com/settings', 33, 'metus facilisis lorem tristique', '2023-01-11 00:00:00', 932);
INSERT INTO public.photo VALUES (794, 'https://google.com/fr', 39, 'In faucibus.', '2023-01-23 00:00:00', 598);
INSERT INTO public.photo VALUES (795, 'https://instagram.com/en-ca', 82, 'sit amet, consectetuer adipiscing elit.', '2022-05-20 00:00:00', 322);

--
-- Data for Name: subscribe; Type: TABLE DATA; Schema: public; Owner: gb_user
--

INSERT INTO public.subscribe VALUES (1, 5, 69, 68);
INSERT INTO public.subscribe VALUES (2, 26, 41, 24);
INSERT INTO public.subscribe VALUES (3, 27, 59, 26);
INSERT INTO public.subscribe VALUES (4, 99, 53, 1);
INSERT INTO public.subscribe VALUES (5, 16, 22, 84);
INSERT INTO public.subscribe VALUES (6, 68, 97, 3);
INSERT INTO public.subscribe VALUES (7, 98, 26, 3);
INSERT INTO public.subscribe VALUES (8, 50, 55, 6);
INSERT INTO public.subscribe VALUES (9, 71, 94, 2);
INSERT INTO public.subscribe VALUES (10, 65, 40, 71);
INSERT INTO public.subscribe VALUES (11, 25, 7, 9);
INSERT INTO public.subscribe VALUES (12, 75, 18, 17);
INSERT INTO public.subscribe VALUES (13, 77, 93, 39);
INSERT INTO public.subscribe VALUES (14, 73, 62, 98);
INSERT INTO public.subscribe VALUES (15, 73, 52, 64);
INSERT INTO public.subscribe VALUES (16, 62, 20, 35);
INSERT INTO public.subscribe VALUES (17, 13, 9, 40);
INSERT INTO public.subscribe VALUES (18, 86, 62, 63);
INSERT INTO public.subscribe VALUES (19, 52, 11, 51);
INSERT INTO public.subscribe VALUES (20, 8, 80, 31);

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: gb_user
--

INSERT INTO public.users VALUES (1, 'Randall', 'Harrison', 'sagittis.duis@aol.couk', '224-1243', 4, 'Jun 16, 2023');
INSERT INTO public.users VALUES (2, 'Kimberly', 'English', 'fusce.mollis@outlook.com', '1-682-540-1772', 62, 'Feb 9, 2023');
INSERT INTO public.users VALUES (3, 'Ulla', 'Mcneil', 'nec.luctus.felis@hotmail.edu', '207-9874', 87, 'Jun 16, 2023');
INSERT INTO public.users VALUES (4, 'McKenzie', 'Chandler', 'aliquam.nec@google.org', '831-2113', 7, 'Dec 31, 2023');
INSERT INTO public.users VALUES (5, 'Stone', 'Mcbride', 'feugiat.sed@hotmail.couk', '745-7685', 70, 'Jul 27, 2022');
INSERT INTO public.users VALUES (6, 'Xanthus', 'Hill', 'lorem.tristique@aol.org', '684-0580', 33, 'Sep 6, 2022');
INSERT INTO public.users VALUES (7, 'Ginger', 'Bishop', 'mollis@google.net', '231-0082', 7, 'Jan 30, 2024');
INSERT INTO public.users VALUES (8, 'Curran', 'Hess', 'non@icloud.com', '1-551-684-7825', 7, 'Apr 10, 2024');
INSERT INTO public.users VALUES (9, 'Graiden', 'Callahan', 'tempus.risus@icloud.net', '286-7927', 62, 'Feb 18, 2023');
INSERT INTO public.users VALUES (10, 'Aaron', 'Cruz', 'sapien.cursus@outlook.com', '244-2434', 92, 'Sep 5, 2023');
INSERT INTO public.users VALUES (11, 'Hammett', 'Turner', 'proin.vel.arcu@icloud.edu', '312-7072', 14, 'May 25, 2022');
INSERT INTO public.users VALUES (12, 'Margaret', 'Travis', 'dolor.nulla.semper@yahoo.couk', '1-751-508-7254', 8, 'Dec 12, 2022');
INSERT INTO public.users VALUES (13, 'Ivan', 'Mcneil', 'curabitur@yahoo.net', '254-3730', 43, 'Nov 27, 2023');
INSERT INTO public.users VALUES (14, 'Kermit', 'Morrow', 'arcu.iaculis@yahoo.edu', '468-3184', 24, 'May 10, 2023');
INSERT INTO public.users VALUES (15, 'Carlos', 'Carson', 'tempus.lorem@icloud.edu', '665-4123', 39, 'Nov 27, 2023');
INSERT INTO public.users VALUES (16, 'Slade', 'Goodman', 'id.libero@hotmail.com', '702-8815', 67, 'Dec 19, 2023');
INSERT INTO public.users VALUES (17, 'Lani', 'Ortega', 'eleifend.cras.sed@icloud.edu', '1-337-527-8781', 1, 'Nov 25, 2023');
INSERT INTO public.users VALUES (18, 'Chaim', 'Fry', 'phasellus.vitae@google.edu', '726-5147', 88, 'May 24, 2022');
INSERT INTO public.users VALUES (19, 'Galena', 'Ford', 'hendrerit@outlook.com', '213-9453', 14, 'Sep 10, 2023');
INSERT INTO public.users VALUES (20, 'Colt', 'Shaw', 'libero.proin@google.ca', '670-2786', 37, 'Feb 7, 2023');

--
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: gb_user
--

INSERT INTO public.video VALUES (1, 'http://guardian.co.uk/sub', 26, 'at,', 'Oct 5, 2022', 145);
INSERT INTO public.video VALUES (2, 'https://twitter.com/one', 99, 'orci. Phasellus dapibus quam', 'Sep 17, 2022', 380);
INSERT INTO public.video VALUES (3, 'https://youtube.com/settings', 35, 'Cras eget', 'Jul 27, 2022', 911);
INSERT INTO public.video VALUES (4, 'http://bbc.co.uk/group/9', 65, 'ornare, facilisis eget, ipsum.', 'Aug 5, 2023', 822);
INSERT INTO public.video VALUES (5, 'https://google.com/sub', 40, 'Lorem ipsum dolor sit amet,', 'Dec 11, 2022', 746);
INSERT INTO public.video VALUES (6, 'https://zoom.us/group/9', 4, 'et', 'May 11, 2022', 958);
INSERT INTO public.video VALUES (7, 'https://zoom.us/group/9', 78, 'Nunc mauris. Morbi non sapien', 'Dec 8, 2022', 597);
INSERT INTO public.video VALUES (8, 'https://youtube.com/settings', 33, 'dolor egestas rhoncus.', 'Sep 7, 2023', 549);
INSERT INTO public.video VALUES (9, 'https://cnn.com/one', 87, 'dui, nec', 'Feb 6, 2023', 111);
INSERT INTO public.video VALUES (10, 'https://ebay.com/user/110', 99, 'ipsum primis in faucibus', 'Nov 28, 2022', 359);
INSERT INTO public.video VALUES (11, 'https://instagram.com/site', 71, 'et, eros.', 'Aug 8, 2022', 498);
INSERT INTO public.video VALUES (12, 'https://yahoo.com/en-us', 72, 'tortor, dictum', 'Apr 13, 2024', 763);
INSERT INTO public.video VALUES (13, 'http://cnn.com/en-us', 97, 'eu metus. In', 'Jun 13, 2022', 992);
INSERT INTO public.video VALUES (14, 'https://facebook.com/one', 28, 'a sollicitudin orci', 'Feb 16, 2024', 825);
INSERT INTO public.video VALUES (15, 'https://nytimes.com/fr', 68, 'lectus quis', 'Nov 28, 2022', 990);
INSERT INTO public.video VALUES (16, 'https://instagram.com/en-ca', 7, 'suscipit, est ac', 'Feb 14, 2024', 873);
INSERT INTO public.video VALUES (17, 'https://naver.com/sub', 44, 'ac nulla. In tincidunt congue', 'Mar 7, 2024', 839);
INSERT INTO public.video VALUES (18, 'https://wikipedia.org/settings', 24, 'a, scelerisque sed, sapien.', 'Nov 30, 2022', 474);
INSERT INTO public.video VALUES (19, 'http://reddit.com/settings', 31, 'interdum. Nunc sollicitudin commodo', 'Feb 21, 2023', 495);
INSERT INTO public.video VALUES (20, 'http://naver.com/en-us', 3, 'sapien. Aenean massa. Integer vitae', 'Feb 18, 2024', 539);

--
-- Name: communities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.communities_id_seq', 50, true);


--
-- Name: friendship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.friendship_id_seq', 100, true);


--
-- Name: friendship_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.friendship_statuses_id_seq', 100, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.messages_id_seq', 100, true);


--
-- Name: photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.photo_id_seq', 875, true);


--
-- Name: subscribe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.subscribe_id_seq', 100, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.users_id_seq', 100, true);


--
-- Name: video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gb_user
--

SELECT pg_catalog.setval('public.video_id_seq', 100, true);


--
-- Name: communities communities_name_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_name_key UNIQUE (name);


--
-- Name: communities communities_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities
    ADD CONSTRAINT communities_pkey PRIMARY KEY (id);


--
-- Name: communities_users communities_users_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.communities_users
    ADD CONSTRAINT communities_users_pkey PRIMARY KEY (community_id, user_id);


--
-- Name: friendship friendship_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.friendship
    ADD CONSTRAINT friendship_pkey PRIMARY KEY (id);


--
-- Name: friendship_statuses friendship_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.friendship_statuses
    ADD CONSTRAINT friendship_statuses_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: photo photo_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);


--
-- Name: photo photo_url_key; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_url_key UNIQUE (url);


--
-- Name: subscribe subscribe_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.subscribe
    ADD CONSTRAINT subscribe_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: gb_user
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

