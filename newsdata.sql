--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: vagrant; Tablespace: 
--

CREATE TABLE articles (
    author integer NOT NULL,
    title text NOT NULL,
    slug text NOT NULL,
    lead text,
    body text,
    "time" timestamp with time zone DEFAULT now(),
    id integer NOT NULL
);


ALTER TABLE articles OWNER TO vagrant;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE articles_id_seq OWNER TO vagrant;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: vagrant; Tablespace: 
--

CREATE TABLE authors (
    name text NOT NULL,
    bio text,
    id integer NOT NULL
);


ALTER TABLE authors OWNER TO vagrant;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE authors_id_seq OWNER TO vagrant;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE authors_id_seq OWNED BY authors.id;


--
-- Name: log; Type: TABLE; Schema: public; Owner: vagrant; Tablespace: 
--

CREATE TABLE log (
    path text,
    ip inet,
    method text,
    status text,
    "time" timestamp with time zone DEFAULT now(),
    id integer NOT NULL
);


ALTER TABLE log OWNER TO vagrant;

--
-- Name: log_id_seq; Type: SEQUENCE; Schema: public; Owner: vagrant
--

CREATE SEQUENCE log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE log_id_seq OWNER TO vagrant;

--
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: vagrant
--

ALTER SEQUENCE log_id_seq OWNED BY log.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY authors ALTER COLUMN id SET DEFAULT nextval('authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY log ALTER COLUMN id SET DEFAULT nextval('log_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY articles (author, title, slug, lead, body, "time", id) FROM stdin;
3	Bad things gone, say good people	bad-things-gone	All bad things have gone away, according to a poll of good people Thursday.	Bad things are a thing of the bad, bad past. Or so say good people, who were asked by pollsters Thursday whether bad things still are.	2016-08-15 11:55:10.814316-07	23
4	Balloon goons doomed	balloon-goons-doomed	The doom of balloon goons is true news.	The goons are doomed, no matter how much their balloons balloon.	2016-08-15 11:55:10.814316-07	24
1	Bears love berries, alleges bear	bears-love-berries	Rumors that bears love berries were confirmed by bear, who also proclaims love of salmon and honey.	Bear specified that raspberries were a personal favorite, although wild blackberries remain more abundant throughout the summer and early fall.	2016-08-15 11:55:10.814316-07	25
2	Candidate is jerk, alleges rival	candidate-is-jerk	That political candidate is a real jerk, according to a rival.	The rival alleged egotism, arrogance, and an almost fanatical devotion to media grandstanding. The candidate's campaign denied everything, and retaliated that the rival is a doo-doo head.	2016-08-15 11:55:10.814316-07	26
1	Goats eat Google's lawn	goats-eat-googles	A herd of goats are eating Google's lawn.	And the Googlers think it's super cute.	2016-08-15 11:55:10.814316-07	27
1	Media obsessed with bears	media-obsessed-with-bears	Media sources claim media figures fixated on bears and bear-related products.	Traditional media prefer green bears while online reporters love polar bears.	2016-08-15 11:55:10.814316-07	28
2	Trouble for troubled troublemakers	trouble-for-troubled	Troublemakers with troubles are in trouble, allege trouble consultants.	Four out of five troublemakers have trouble with trouble, according to a troubling study published Tuesday by the Troubled Troublemakers Project.	2016-08-15 11:55:10.814316-07	30
1	There are a lot of bears	so-many-bears	There certainly are a lot of bears in these woods.	My goodness, there really are very many bears. There are brown bears, black bears, green bears, and pink bears. No, wait, I think some of the green bears are actually trees. Trees are a lot like bears, in that they live in the woods and have very sharp teeth.	2016-08-15 11:55:10.814316-07	29
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('articles_id_seq', 30, true);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY authors (name, bio, id) FROM stdin;
Ursula La Multa	Ursula La Multa is an expert on bears, bear abundance, and bear accessories.	1
Rudolf von Treppenwitz	Rudolf von Treppenwitz is a nonprofitable disorganizer specializing in procrastinatory operations.	2
Anonymous Contributor	Anonymous Contributor's parents had unusual taste in names.	3
Markoff Chaney	Markoff Chaney is the product of random genetics.	4
\.


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('authors_id_seq', 4, true);


--
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY log (path, ip, method, status, "time", id) FROM stdin;
/	198.51.100.195	GET	200 OK	2016-07-01 00:00:00-07	1678923
/article/candidate-is-jerk	198.51.100.195	GET	200 OK	2016-07-01 00:00:47-07	1678924
/article/goats-eat-googles	198.51.100.195	GET	200 OK	2016-07-01 00:00:34-07	1678925
/article/goats-eat-googles	198.51.100.195	GET	200 OK	2016-07-01 00:00:52-07	1678926
/article/balloon-goons-doomed	198.51.100.195	GET	200 OK	2016-07-01 00:00:23-07	1678927
/	192.0.2.194	GET	200 OK	2016-07-01 00:00:05-07	1678928
/article/candidate-is-jerk	192.0.2.194	GET	200 OK	2016-07-01 00:00:54-07	1678929
/	192.0.2.80	GET	200 OK	2016-07-01 00:00:15-07	1678930
/article/bears-love-berries	192.0.2.80	GET	200 OK	2016-07-01 00:01:13-07	1678931
/	198.51.100.144	GET	200 OK	2016-07-01 00:00:21-07	1678932
/article/trouble-for-troubled	198.51.100.144	GET	200 OK	2016-07-01 00:00:56-07	1678933
/	203.0.113.234	GET	200 OK	2016-07-01 00:00:31-07	1678934
/article/candidate-is-jerk	203.0.113.234	GET	200 OK	2016-07-01 00:01:14-07	1678935
/article/bad-things-gone	203.0.113.234	GET	200 OK	2016-07-01 00:01:02-07	1678936
/	203.0.113.235	GET	200 OK	2016-07-01 00:00:32-07	1678937
/article/bears-love-berries	203.0.113.235	GET	200 OK	2016-07-01 00:01:12-07	1678938
/	203.0.113.127	GET	200 OK	2016-07-01 00:00:33-07	1678939
/article/balloon-goons-doomed	203.0.113.127	GET	200 OK	2016-07-01 00:01:08-07	1678940
/article/bears-love-berries	203.0.113.127	GET	200 OK	2016-07-01 00:01:00-07	1678941
/article/candidate-is-jerk	203.0.113.127	GET	200 OK	2016-07-01 00:01:03-07	1678942
/	203.0.113.115	GET	200 OK	2016-07-01 00:00:36-07	1678943
/article/bears-love-berries	203.0.113.115	GET	200 OK	2016-07-01 00:01:23-07	1678944
/	192.0.2.78	GET	200 OK	2016-07-01 00:00:44-07	1678945
/article/bears-love-berries	192.0.2.78	GET	200 OK	2016-07-01 00:01:34-07	1678946
/article/trouble-for-troubled	192.0.2.78	GET	200 OK	2016-07-01 00:01:12-07	1678947
/article/bears-love-berries	192.0.2.78	GET	200 OK	2016-07-01 00:01:34-07	1678948
/	198.51.100.114	GET	200 OK	2016-07-01 00:00:54-07	1678949
/article/candidate-is-jerk	198.51.100.114	GET	200 OK	2016-07-01 00:01:29-07	1678950
/	192.0.2.75	GET	200 OK	2016-07-01 00:01:04-07	1678951
/article/balloon-goons-doomed	192.0.2.75	GET	200 OK	2016-07-01 00:01:21-07	1678952
/article/candidate-is-jerk	192.0.2.75	GET	200 OK	2016-07-01 00:01:35-07	1678953
/	192.0.2.23	GET	200 OK	2016-07-01 00:01:12-07	1678954
/article/bad-things-gone	192.0.2.23	GET	200 OK	2016-07-01 00:01:32-07	1678955
/article/bears-love-berries	192.0.2.23	GET	200 OK	2016-07-01 00:02:10-07	1678956
/	203.0.113.135	GET	200 OK	2016-07-01 00:01:19-07	1678957
/article/candidate-is-jerk	203.0.113.135	GET	200 OK	2016-07-01 00:01:47-07	1678958
/article/candidate-is-jerk	203.0.113.135	GET	200 OK	2016-07-01 00:02:00-07	1678959
/article/candidate-is-jerk	203.0.113.135	GET	200 OK	2016-07-01 00:02:02-07	1678960
/	203.0.113.165	GET	200 OK	2016-07-01 00:01:27-07	1678961
/article/bears-love-berries	203.0.113.165	GET	200 OK	2016-07-01 00:02:21-07	1678962
/article/bears-love-berries	203.0.113.165	GET	200 OK	2016-07-01 00:02:19-07	1678963
/article/candidate-is-jerk	203.0.113.165	GET	200 OK	2016-07-01 00:01:54-07	1678964
/	192.0.2.188	GET	200 OK	2016-07-01 00:01:31-07	1678965
/article/bears-love-berries	192.0.2.188	GET	200 OK	2016-07-01 00:02:00-07	1678966
/article/trouble-for-troubled	192.0.2.188	GET	200 OK	2016-07-01 00:02:07-07	1678967
/article/media-obsessed-with-bears	192.0.2.188	GET	200 OK	2016-07-01 00:01:52-07	1678968
/	203.0.113.57	GET	200 OK	2016-07-01 00:01:34-07	1678969
/article/bad-things-gone	203.0.113.57	GET	200 OK	2016-07-01 00:02:29-07	1678970
/	203.0.113.175	GET	200 OK	2016-07-01 00:01:43-07	1678971
/article/candidate-is-jerk	203.0.113.175	GET	200 OK	2016-07-01 00:02:38-07	1678972
/	203.0.113.213	GET	200 OK	2016-07-01 00:01:47-07	1678973
/article/media-obsessed-with-bears	203.0.113.213	GET	200 OK	2016-07-01 00:02:25-07	1678974
/	192.0.2.156	GET	200 OK	2016-07-01 00:01:49-07	1678975
/article/balloon-goons-doomed	192.0.2.156	GET	200 OK	2016-07-01 00:02:49-07	1678976
/	198.51.100.54	GET	200 OK	2016-07-01 00:01:51-07	1678977
/article/candidate-is-jerk	198.51.100.54	GET	200 OK	2016-07-01 00:02:40-07	1678978
/	203.0.113.26	GET	200 OK	2016-07-01 00:01:58-07	1678979
/article/bears-love-berries	203.0.113.26	GET	200 OK	2016-07-01 00:02:17-07	1678980
/article/candidate-is-jerk	203.0.113.26	GET	200 OK	2016-07-01 00:02:35-07	1678981
/article/media-obsessed-with-bears	203.0.113.26	GET	200 OK	2016-07-01 00:02:16-07	1678982
/	198.51.100.11	GET	200 OK	2016-07-01 00:02:07-07	1678983
/article/bears-love-berries	198.51.100.11	GET	200 OK	2016-07-01 00:02:34-07	1678984
/	198.51.100.232	GET	200 OK	2016-07-01 00:02:12-07	1678985
/article/bad-things-gone	198.51.100.232	GET	200 OK	2016-07-01 00:02:37-07	1678986
/article/bears-love-berries	198.51.100.232	GET	200 OK	2016-07-01 00:02:40-07	1678987
/article/bears-love-berries	198.51.100.232	GET	200 OK	2016-07-01 00:03:10-07	1678988
/article/bad-things-gone	198.51.100.232	GET	200 OK	2016-07-01 00:02:48-07	1678989
/	198.51.100.31	GET	200 OK	2016-07-01 00:02:21-07	1678990
/article/candidate-is-jerk	198.51.100.31	GET	200 OK	2016-07-01 00:02:36-07	1678991
/article/goats-eat-googles	198.51.100.31	GET	200 OK	2016-07-01 00:03:02-07	1678992
/article/candidate-is-jerk	198.51.100.31	GET	200 OK	2016-07-01 00:02:55-07	1678993
/article/candidate-is-jerk	198.51.100.31	GET	200 OK	2016-07-01 00:03:00-07	1678994
/	192.0.2.144	GET	200 OK	2016-07-01 00:02:26-07	1678995
/article/goats-eat-googles	192.0.2.144	GET	200 OK	2016-07-01 00:02:46-07	1678996
/	203.0.113.12	GET	200 OK	2016-07-01 00:02:32-07	1678997
/article/bad-things-gone	203.0.113.12	GET	200 OK	2016-07-01 00:03:17-07	1678998
/article/trouble-for-troubled	203.0.113.12	GET	200 OK	2016-07-01 00:03:05-07	1678999
/article/candidate-is-jerk	203.0.113.12	GET	200 OK	2016-07-01 00:03:24-07	1679000
/	192.0.2.184	GET	200 OK	2016-07-01 00:02:42-07	1679001
/article/media-obsessed-with-bears	192.0.2.184	GET	200 OK	2016-07-01 00:03:23-07	1679002
/article/bad-things-gone	192.0.2.184	GET	200 OK	2016-07-01 00:03:02-07	1679003
/article/candidate-is-jerk	192.0.2.184	GET	200 OK	2016-07-01 00:03:09-07	1679004
/	192.0.2.62	GET	200 OK	2016-07-01 00:02:48-07	1679005
/article/candidate-is-jerk	192.0.2.62	GET	200 OK	2016-07-01 00:03:27-07	1679006
/article/bears-love-berries	192.0.2.62	GET	200 OK	2016-07-01 00:03:39-07	1679007
/	192.0.2.103	GET	200 OK	2016-07-01 00:02:55-07	1679008
/article/bears-love-berries	192.0.2.103	GET	200 OK	2016-07-01 00:03:55-07	1679009
/article/candidate-is-jerk	192.0.2.103	GET	200 OK	2016-07-01 00:03:38-07	1679010
/article/bears-love-berries	192.0.2.103	GET	200 OK	2016-07-01 00:03:54-07	1679011
/article/bad-things-gone	192.0.2.103	GET	200 OK	2016-07-01 00:03:43-07	1679012
/	203.0.113.155	GET	200 OK	2016-07-01 00:03:03-07	1679013
/article/candidate-is-jerk	203.0.113.155	GET	200 OK	2016-07-01 00:03:38-07	1679014
/	198.51.100.13	GET	200 OK	2016-07-01 00:03:08-07	1679015
/article/balloon-goons-doomed	198.51.100.13	GET	200 OK	2016-07-01 00:04:03-07	1679016
/article/bears-love-berries	198.51.100.13	GET	200 OK	2016-07-01 00:03:31-07	1679017
/article/candidate-is-jerk	198.51.100.13	GET	200 OK	2016-07-01 00:04:06-07	1679018
/article/media-obsessed-with-bears	198.51.100.13	GET	200 OK	2016-07-01 00:03:23-07	1679019
/	192.0.2.184	GET	200 OK	2016-07-01 00:03:12-07	1679020
/article/bad-things-gone	192.0.2.184	GET	200 OK	2016-07-01 00:04:00-07	1679021
/	192.0.2.49	GET	200 OK	2016-07-01 00:03:22-07	1679022
/article/candidate-is-jerk	192.0.2.49	GET	200 OK	2016-07-01 00:03:49-07	1679023
/	198.51.100.177	GET	200 OK	2016-07-01 00:03:27-07	1679024
/article/bears-love-berries	198.51.100.177	GET	200 OK	2016-07-01 00:04:07-07	1679025
/article/candidate-is-jerk	198.51.100.177	GET	200 OK	2016-07-01 00:03:43-07	1679026
/	198.51.100.205	GET	200 OK	2016-07-01 00:03:32-07	1679027
/article/bad-things-gone	198.51.100.205	GET	200 OK	2016-07-01 00:03:55-07	1679028
/	203.0.113.166	GET	200 OK	2016-07-01 00:03:41-07	1679029
/article/bears-love-berries	203.0.113.166	GET	200 OK	2016-07-01 00:04:13-07	1679030
/article/bad-things-gone	203.0.113.166	GET	200 OK	2016-07-01 00:03:58-07	1679031
/article/candidate-is-jerk	203.0.113.166	GET	200 OK	2016-07-01 00:04:39-07	1679032
/	203.0.113.81	GET	200 OK	2016-07-01 00:03:46-07	1679033
/article/candidate-is-jerk	203.0.113.81	GET	200 OK	2016-07-01 00:04:45-07	1679034
/article/candidate-is-jerk	203.0.113.81	GET	200 OK	2016-07-01 00:04:32-07	1679035
/article/bears-love-berries	203.0.113.81	GET	200 OK	2016-07-01 00:04:30-07	1679036
/	198.51.100.224	GET	200 OK	2016-07-01 00:03:53-07	1679037
/article/balloon-goons-doomed	198.51.100.224	GET	200 OK	2016-07-01 00:04:45-07	1679038
/article/so-many-bears	198.51.100.224	GET	200 OK	2016-07-01 00:04:16-07	1679039
/	198.51.100.86	GET	200 OK	2016-07-01 00:03:56-07	1679040
/article/bears-love-berries	198.51.100.86	GET	200 OK	2016-07-01 00:04:56-07	1679041
/article/bears-love-berries	198.51.100.86	GET	200 OK	2016-07-01 00:04:50-07	1679042
/article/candidate-is-jerk	198.51.100.86	GET	200 OK	2016-07-01 00:04:28-07	1679043
/	192.0.2.252	GET	200 OK	2016-07-01 00:03:59-07	1679044
/article/trouble-for-troubled	192.0.2.252	GET	200 OK	2016-07-01 00:04:49-07	1679045
/article/bad-things-gone	192.0.2.252	GET	200 OK	2016-07-01 00:04:21-07	1679046
/article/goats-eat-googles	192.0.2.252	GET	200 OK	2016-07-01 00:04:29-07	1679047
/	198.51.100.46	GET	200 OK	2016-07-01 00:04:00-07	1679048
/article/so-many-bears	198.51.100.46	GET	200 OK	2016-07-01 00:04:36-07	1679049
/	198.51.100.28	GET	200 OK	2016-07-01 00:04:05-07	1679050
/article/candidate-is-jerk	198.51.100.28	GET	200 OK	2016-07-01 00:04:50-07	1679051
/	198.51.100.32	GET	200 OK	2016-07-01 00:04:11-07	1679052
/article/bears-love-berries	198.51.100.32	GET	200 OK	2016-07-01 00:04:57-07	1679053
/article/media-obsessed-with-bears	198.51.100.32	GET	200 OK	2016-07-01 00:04:45-07	1679054
/article/trouble-for-troubled	198.51.100.32	GET	200 OK	2016-07-01 00:05:09-07	1679055
/article/bad-things-gone	198.51.100.32	GET	200 OK	2016-07-01 00:05:06-07	1679056
/	198.51.100.207	GET	200 OK	2016-07-01 00:04:21-07	1679057
/article/bears-love-berries	198.51.100.207	GET	200 OK	2016-07-01 00:04:48-07	1679058
/	192.0.2.99	GET	200 OK	2016-07-01 00:04:25-07	1679059
/article/bears-love-berries	192.0.2.99	GET	200 OK	2016-07-01 00:05:15-07	1679060
/	198.51.100.115	GET	200 OK	2016-07-01 00:04:34-07	1679061
/article/bears-love-berries	198.51.100.115	GET	200 OK	2016-07-01 00:05:34-07	1679062
/article/candidate-is-jerk	198.51.100.115	GET	200 OK	2016-07-01 00:05:16-07	1679063
/article/bears-love-berries	198.51.100.115	GET	200 OK	2016-07-01 00:05:03-07	1679064
/article/so-many-bears	198.51.100.115	GET	200 OK	2016-07-01 00:04:59-07	1679065
/	192.0.2.92	GET	200 OK	2016-07-01 00:04:41-07	1679066
/article/bears-love-berries	192.0.2.92	GET	200 OK	2016-07-01 00:04:57-07	1679067
/	198.51.100.193	GET	200 OK	2016-07-01 00:04:50-07	1679068
/article/bears-love-berries	198.51.100.193	GET	200 OK	2016-07-01 00:05:30-07	1679069
/article/so-many-bears	198.51.100.193	GET	200 OK	2016-07-01 00:05:46-07	1679070
/	192.0.2.160	GET	200 OK	2016-07-01 00:04:51-07	1679071
/article/bears-love-berries	192.0.2.160	GET	200 OK	2016-07-01 00:05:35-07	1679072
/article/media-obsessed-with-bears	192.0.2.160	GET	200 OK	2016-07-01 00:05:40-07	1679073
/	192.0.2.254	GET	200 OK	2016-07-01 00:04:54-07	1679074
/article/bad-things-gone	192.0.2.254	GET	200 OK	2016-07-01 00:05:34-07	1679075
/article/candidate-is-jerk	192.0.2.254	GET	200 OK	2016-07-01 00:05:36-07	1679076
/article/candidate-is-jerk	192.0.2.254	GET	200 OK	2016-07-01 00:05:52-07	1679077
/article/trouble-for-troubled	192.0.2.254	GET	200 OK	2016-07-01 00:05:40-07	1679078
/	203.0.113.157	GET	200 OK	2016-07-01 00:04:58-07	1679079
/article/candidate-is-jerk	203.0.113.157	GET	200 OK	2016-07-01 00:05:58-07	1679080
/article/bears-love-berries	203.0.113.157	GET	200 OK	2016-07-01 00:05:33-07	1679081
/	203.0.113.38	GET	200 OK	2016-07-01 00:04:59-07	1679082
/article/candidate-is-jerk	203.0.113.38	GET	200 OK	2016-07-01 00:05:38-07	1679083
/article/candidate-is-jerk	203.0.113.38	GET	200 OK	2016-07-01 00:05:59-07	1679084
/article/bears-love-berries	203.0.113.38	GET	200 OK	2016-07-01 00:05:18-07	1679085
/	203.0.113.223	GET	200 OK	2016-07-01 00:05:01-07	1679086
/article/bears-love-berries	203.0.113.223	GET	200 OK	2016-07-01 00:05:24-07	1679087
/	198.51.100.4	GET	200 OK	2016-07-01 00:05:02-07	1679088
/article/trouble-for-troubled	198.51.100.4	GET	200 OK	2016-07-01 00:05:26-07	1679089
/article/bad-things-gone	198.51.100.4	GET	200 OK	2016-07-01 00:05:46-07	1679090
/article/trouble-for-troubled	198.51.100.4	GET	200 OK	2016-07-01 00:05:41-07	1679091
/article/candidate-is-jerk	198.51.100.4	GET	200 OK	2016-07-01 00:05:19-07	1679092
/	192.0.2.174	GET	200 OK	2016-07-01 00:05:12-07	1679093
/article/bears-love-berries	192.0.2.174	GET	200 OK	2016-07-01 00:05:40-07	1679094
/	203.0.113.231	GET	200 OK	2016-07-01 00:05:17-07	1679095
/article/bad-things-gone	203.0.113.231	GET	200 OK	2016-07-01 00:05:56-07	1679096
/article/candidate-is-jerk	203.0.113.231	GET	200 OK	2016-07-01 00:05:46-07	1679097
/article/bad-things-gone	203.0.113.231	GET	200 OK	2016-07-01 00:06:14-07	1679098
/article/candidate-is-jerk	203.0.113.231	GET	200 OK	2016-07-01 00:05:43-07	1679099
/	203.0.113.146	GET	200 OK	2016-07-01 00:05:22-07	1679100
/article/trouble-for-troubled	203.0.113.146	GET	200 OK	2016-07-01 00:06:08-07	1679101
/article/bad-things-gone	203.0.113.146	GET	200 OK	2016-07-01 00:05:56-07	1679102
/article/bears-love-berries	203.0.113.146	GET	200 OK	2016-07-01 00:06:01-07	1679103
/	192.0.2.42	GET	200 OK	2016-07-01 00:05:29-07	1679104
/article/balloon-goons-doomed	192.0.2.42	GET	200 OK	2016-07-01 00:06:05-07	1679105
/article/candidate-is-jerk	192.0.2.42	GET	200 OK	2016-07-01 00:06:14-07	1679106
/	192.0.2.126	GET	200 OK	2016-07-01 00:05:36-07	1679107
/article/candidate-is-jerk	192.0.2.126	GET	200 OK	2016-07-01 00:06:00-07	1679108
/	198.51.100.10	GET	200 OK	2016-07-01 00:05:42-07	1679109
/article/media-obsessed-with-bears	198.51.100.10	GET	200 OK	2016-07-01 00:06:00-07	1679110
/article/bears-love-berries	198.51.100.10	GET	200 OK	2016-07-01 00:06:06-07	1679111
/article/candidate-is-jerk	198.51.100.10	GET	200 OK	2016-07-01 00:06:35-07	1679112
/article/candidate-is-jerk	198.51.100.10	GET	200 OK	2016-07-01 00:06:37-07	1679113
/	192.0.2.180	GET	200 OK	2016-07-01 00:05:48-07	1679114
/article/balloon-goons-doomed	192.0.2.180	GET	200 OK	2016-07-01 00:06:34-07	1679115
/article/bears-love-berries	192.0.2.180	GET	200 OK	2016-07-01 00:06:42-07	1679116
/article/bears-love-berries	192.0.2.180	GET	200 OK	2016-07-01 00:06:42-07	1679117
/	203.0.113.32	GET	200 OK	2016-07-01 00:05:54-07	1679118
/article/bears-love-berries	203.0.113.32	GET	200 OK	2016-07-01 00:06:33-07	1679119
/article/bears-love-berries	203.0.113.32	GET	200 OK	2016-07-01 00:06:52-07	1679120
/article/bears-love-berries	203.0.113.32	GET	200 OK	2016-07-01 00:06:42-07	1679121
/	192.0.2.201	GET	200 OK	2016-07-01 00:05:58-07	1679122
/article/goats-eat-googles	192.0.2.201	GET	200 OK	2016-07-01 00:06:25-07	1679123
/article/goats-eat-googles	192.0.2.201	GET	200 OK	2016-07-01 00:06:53-07	1679124
/article/bears-love-berries	192.0.2.201	GET	200 OK	2016-07-01 00:06:15-07	1679125
/article/goats-eat-googles	192.0.2.201	GET	200 OK	2016-07-01 00:06:14-07	1679126
/	203.0.113.146	GET	200 OK	2016-07-01 00:06:07-07	1679127
/article/balloon-goons-doomed	203.0.113.146	GET	200 OK	2016-07-01 00:07:02-07	1679128
/article/bears-love-berries	203.0.113.146	GET	200 OK	2016-07-01 00:07:06-07	1679129
/	198.51.100.130	GET	200 OK	2016-07-01 00:06:16-07	1679130
/article/bears-love-berries	198.51.100.130	GET	200 OK	2016-07-01 00:06:58-07	1679131
/article/candidate-is-jerk	198.51.100.130	GET	200 OK	2016-07-01 00:06:36-07	1679132
/article/bears-love-berries	198.51.100.130	GET	200 OK	2016-07-01 00:06:35-07	1679133
/	198.51.100.199	GET	200 OK	2016-07-01 00:06:18-07	1679134
/article/bears-love-berries	198.51.100.199	GET	200 OK	2016-07-01 00:07:01-07	1679135
/article/media-obsessed-with-bears	198.51.100.199	GET	200 OK	2016-07-01 00:06:59-07	1679136
/	198.51.100.236	GET	200 OK	2016-07-01 00:06:19-07	1679137
/article/bears-love-berries	198.51.100.236	GET	200 OK	2016-07-01 00:06:39-07	1679138
/article/trouble-for-troubled	198.51.100.236	GET	200 OK	2016-07-01 00:06:41-07	1679139
/article/trouble-for-troubled	198.51.100.236	GET	200 OK	2016-07-01 00:06:35-07	1679140
/	198.51.100.46	GET	200 OK	2016-07-01 00:06:25-07	1679141
/article/bad-things-gone	198.51.100.46	GET	200 OK	2016-07-01 00:07:03-07	1679142
/	203.0.113.229	GET	200 OK	2016-07-01 00:06:27-07	1679143
/article/balloon-goons-doomedl	203.0.113.229	GET	404 NOT FOUND	2016-07-01 00:07:24-07	1679144
/article/candidate-is-jerk	203.0.113.229	GET	200 OK	2016-07-01 00:06:49-07	1679145
/	198.51.100.95	GET	200 OK	2016-07-01 00:06:28-07	1679146
/article/candidate-is-jerk	198.51.100.95	GET	200 OK	2016-07-01 00:06:52-07	1679147
/	198.51.100.29	GET	200 OK	2016-07-01 00:06:31-07	1679148
/article/trouble-for-troubled	198.51.100.29	GET	200 OK	2016-07-01 00:07:02-07	1679149
/article/bad-things-gone	198.51.100.29	GET	200 OK	2016-07-01 00:06:59-07	1679150
/article/trouble-for-troubled	198.51.100.29	GET	200 OK	2016-07-01 00:07:16-07	1679151
/article/so-many-bears	198.51.100.29	GET	200 OK	2016-07-01 00:07:21-07	1679152
/	192.0.2.152	GET	200 OK	2016-07-01 00:06:37-07	1679153
/article/bears-love-berries	192.0.2.152	GET	200 OK	2016-07-01 00:07:29-07	1679154
/	192.0.2.97	GET	200 OK	2016-07-01 00:06:42-07	1679155
/article/bad-things-gone	192.0.2.97	GET	200 OK	2016-07-01 00:07:17-07	1679156
/article/candidate-is-jerk	192.0.2.97	GET	200 OK	2016-07-01 00:07:12-07	1679157
/	198.51.100.96	GET	200 OK	2016-07-01 00:06:45-07	1679158
/article/candidate-is-jerk	198.51.100.96	GET	200 OK	2016-07-01 00:07:08-07	1679159
/article/candidate-is-jerk	198.51.100.96	GET	200 OK	2016-07-01 00:07:25-07	1679160
/article/bears-love-berries	198.51.100.96	GET	200 OK	2016-07-01 00:07:04-07	1679161
/article/bad-things-gone	198.51.100.96	GET	200 OK	2016-07-01 00:07:19-07	1679162
/	198.51.100.190	GET	200 OK	2016-07-01 00:06:54-07	1679163
/article/candidate-is-jerk	198.51.100.190	GET	200 OK	2016-07-01 00:07:28-07	1679164
/article/candidate-is-jerk	198.51.100.190	GET	200 OK	2016-07-01 00:07:14-07	1679165
/	198.51.100.162	GET	200 OK	2016-07-01 00:06:58-07	1679166
/article/candidate-is-jerk	198.51.100.162	GET	200 OK	2016-07-01 00:07:16-07	1679167
/article/media-obsessed-with-bears	198.51.100.162	GET	200 OK	2016-07-01 00:07:13-07	1679168
/article/media-obsessed-with-bears	198.51.100.162	GET	200 OK	2016-07-01 00:07:33-07	1679169
/	192.0.2.96	GET	200 OK	2016-07-01 00:07:06-07	1679170
/article/goats-eat-googles	192.0.2.96	GET	200 OK	2016-07-01 00:07:32-07	1679171
/article/bears-love-berries	192.0.2.96	GET	200 OK	2016-07-01 00:07:38-07	1679172
/article/bears-love-berries	192.0.2.96	GET	200 OK	2016-07-01 00:07:59-07	1679173
/	203.0.113.115	GET	200 OK	2016-07-01 00:07:09-07	1679174
/article/bad-things-gone	203.0.113.115	GET	200 OK	2016-07-01 00:07:50-07	1679175
/article/media-obsessed-with-bears	203.0.113.115	GET	200 OK	2016-07-01 00:07:39-07	1679176
/article/goats-eat-googles	203.0.113.115	GET	200 OK	2016-07-01 00:07:57-07	1679177
/article/bad-things-gone	203.0.113.115	GET	200 OK	2016-07-01 00:07:53-07	1679178
/	198.51.100.194	GET	200 OK	2016-07-01 00:07:11-07	1679179
/article/so-many-bearsb	198.51.100.194	GET	404 NOT FOUND	2016-07-01 00:07:54-07	1679180
/article/candidate-is-jerk	198.51.100.194	GET	200 OK	2016-07-01 00:07:26-07	1679181
/	198.51.100.30	GET	200 OK	2016-07-01 00:07:15-07	1679182
/article/candidate-is-jerk	198.51.100.30	GET	200 OK	2016-07-01 00:07:39-07	1679183
/article/media-obsessed-with-bears	198.51.100.30	GET	200 OK	2016-07-01 00:08:00-07	1679184
/article/bears-love-berries	198.51.100.30	GET	200 OK	2016-07-01 00:08:01-07	1679185
/	203.0.113.196	GET	200 OK	2016-07-01 00:07:19-07	1679186
/article/so-many-bears	203.0.113.196	GET	200 OK	2016-07-01 00:07:35-07	1679187
/article/bears-love-berries	203.0.113.196	GET	200 OK	2016-07-01 00:08:16-07	1679188
/article/candidate-is-jerky	203.0.113.196	GET	404 NOT FOUND	2016-07-01 00:07:59-07	1679189
/article/candidate-is-jerk	203.0.113.196	GET	200 OK	2016-07-01 00:08:19-07	1679190
/	198.51.100.27	GET	200 OK	2016-07-01 00:07:26-07	1679191
/article/trouble-for-troubled	198.51.100.27	GET	200 OK	2016-07-01 00:08:24-07	1679192
/article/balloon-goons-doomed	198.51.100.27	GET	200 OK	2016-07-01 00:07:46-07	1679193
/article/candidate-is-jerk	198.51.100.27	GET	200 OK	2016-07-01 00:07:57-07	1679194
/	203.0.113.88	GET	200 OK	2016-07-01 00:07:31-07	1679195
/article/candidate-is-jerk	203.0.113.88	GET	200 OK	2016-07-01 00:07:56-07	1679196
/	198.51.100.221	GET	200 OK	2016-07-01 00:07:33-07	1679197
/article/so-many-bears	198.51.100.221	GET	200 OK	2016-07-01 00:07:56-07	1679198
/article/candidate-is-jerk	198.51.100.221	GET	200 OK	2016-07-01 00:08:28-07	1679199
/article/balloon-goons-doomed	198.51.100.221	GET	200 OK	2016-07-01 00:07:54-07	1679200
/	203.0.113.140	GET	200 OK	2016-07-01 00:07:40-07	1679201
/article/bears-love-berries	203.0.113.140	GET	200 OK	2016-07-01 00:08:12-07	1679202
/article/so-many-bears	203.0.113.140	GET	200 OK	2016-07-01 00:08:18-07	1679203
/article/candidate-is-jerk	203.0.113.140	GET	200 OK	2016-07-01 00:08:03-07	1679204
/article/bad-things-gone	203.0.113.140	GET	200 OK	2016-07-01 00:08:39-07	1679205
/	198.51.100.103	GET	200 OK	2016-07-01 00:07:42-07	1679206
/article/balloon-goons-doomed	192.0.2.228	GET	200 OK	2016-07-01 04:59:51-07	1690191
/article/candidate-is-jerk	192.0.2.228	GET	200 OK	2016-07-01 04:59:31-07	1690192
/article/candidate-is-jerk	192.0.2.228	GET	200 OK	2016-07-01 04:59:45-07	1690193
/	192.0.2.170	GET	200 OK	2016-07-01 04:59:19-07	1690194
/article/bad-things-gone	203.0.113.77	GET	200 OK	2016-07-03 07:19:30-07	1805192
/spam-spam-spam-humbug	192.0.2.107	GET	404 NOT FOUND	2016-07-17 04:41:43-07	3356621
/+++ATH0	198.51.100.94	GET	404 NOT FOUND	2016-07-17 04:41:46-07	3356622
/%20%20%20	198.51.100.249	GET	404 NOT FOUND	2016-07-17 04:41:47-07	3356623
/spam-spam-spam-humbug	198.51.100.38	GET	404 NOT FOUND	2016-07-17 04:41:50-07	3356624
/+++ATH0	198.51.100.191	GET	404 NOT FOUND	2016-07-17 04:41:53-07	3356625
/+++ATH0	192.0.2.225	GET	404 NOT FOUND	2016-07-17 04:41:54-07	3356626
/spam-spam-spam-humbug	198.51.100.55	GET	404 NOT FOUND	2016-07-17 04:41:56-07	3356627
/+++ATH0	192.0.2.105	GET	404 NOT FOUND	2016-07-17 04:41:59-07	3356628
/%20%20%20	192.0.2.195	GET	404 NOT FOUND	2016-07-17 04:42:01-07	3356629
/spam-spam-spam-humbug	198.51.100.46	GET	404 NOT FOUND	2016-07-17 04:42:03-07	3356630
/+++ATH0	198.51.100.30	GET	404 NOT FOUND	2016-07-17 04:42:05-07	3356631
/+++ATH0	198.51.100.233	GET	404 NOT FOUND	2016-07-17 04:42:07-07	3356632
/+++ATH0	203.0.113.66	GET	404 NOT FOUND	2016-07-17 04:42:10-07	3356633
/+++ATH0	192.0.2.236	GET	404 NOT FOUND	2016-07-17 04:42:12-07	3356634
/spam-spam-spam-humbug	203.0.113.190	GET	404 NOT FOUND	2016-07-17 04:42:15-07	3356635
/%20%20%20	203.0.113.169	GET	404 NOT FOUND	2016-07-17 04:42:17-07	3356636
/%20%20%20	203.0.113.250	GET	404 NOT FOUND	2016-07-17 04:42:18-07	3356637
/spam-spam-spam-humbug	203.0.113.116	GET	404 NOT FOUND	2016-07-17 04:42:20-07	3356638
/%20%20%20	198.51.100.30	GET	404 NOT FOUND	2016-07-17 04:42:23-07	3356639
/+++ATH0	203.0.113.61	GET	404 NOT FOUND	2016-07-17 04:42:26-07	3356640
/+++ATH0	192.0.2.65	GET	404 NOT FOUND	2016-07-17 04:42:29-07	3356641
/%20%20%20	192.0.2.50	GET	404 NOT FOUND	2016-07-17 04:42:30-07	3356642
/spam-spam-spam-humbug	198.51.100.222	GET	404 NOT FOUND	2016-07-17 04:42:33-07	3356643
/spam-spam-spam-humbug	192.0.2.124	GET	404 NOT FOUND	2016-07-17 04:42:34-07	3356644
/%20%20%20	203.0.113.204	GET	404 NOT FOUND	2016-07-17 04:42:35-07	3356645
/%20%20%20	203.0.113.99	GET	404 NOT FOUND	2016-07-17 04:42:37-07	3356646
/%20%20%20	198.51.100.49	GET	404 NOT FOUND	2016-07-17 04:42:38-07	3356647
/+++ATH0	203.0.113.234	GET	404 NOT FOUND	2016-07-17 04:42:39-07	3356648
/spam-spam-spam-humbug	203.0.113.108	GET	404 NOT FOUND	2016-07-17 04:42:40-07	3356649
/%20%20%20	203.0.113.154	GET	404 NOT FOUND	2016-07-17 04:42:41-07	3356650
/spam-spam-spam-humbug	192.0.2.159	GET	404 NOT FOUND	2016-07-17 04:42:42-07	3356651
/+++ATH0	203.0.113.160	GET	404 NOT FOUND	2016-07-17 04:42:44-07	3356652
/%20%20%20	203.0.113.158	GET	404 NOT FOUND	2016-07-17 04:42:47-07	3356653
/spam-spam-spam-humbug	198.51.100.99	GET	404 NOT FOUND	2016-07-17 04:42:50-07	3356654
/+++ATH0	192.0.2.41	GET	404 NOT FOUND	2016-07-17 04:42:52-07	3356655
/+++ATH0	192.0.2.176	GET	404 NOT FOUND	2016-07-17 04:42:54-07	3356656
/%20%20%20	198.51.100.222	GET	404 NOT FOUND	2016-07-17 04:42:57-07	3356657
\.


--
-- Name: log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('log_id_seq', 3356657, true);


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: articles_slug_key; Type: CONSTRAINT; Schema: public; Owner: vagrant; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_slug_key UNIQUE (slug);


--
-- Name: authors_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant; Tablespace: 
--

ALTER TABLE ONLY authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: log_pkey; Type: CONSTRAINT; Schema: public; Owner: vagrant; Tablespace: 
--

ALTER TABLE ONLY log
    ADD CONSTRAINT log_pkey PRIMARY KEY (id);


--
-- Name: articles_author_fkey; Type: FK CONSTRAINT; Schema: public; Owner: vagrant
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_author_fkey FOREIGN KEY (author) REFERENCES authors(id);


--
-- PostgreSQL database dump complete
--

