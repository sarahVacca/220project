--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Debian 13.1-1.pgdg100+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: clarkclothes_availablity; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.clarkclothes_availablity (
    name character varying(100) NOT NULL
);


ALTER TABLE public.clarkclothes_availablity OWNER TO django;

--
-- Name: clarkclothes_brand; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.clarkclothes_brand (
    id uuid NOT NULL,
    brand_name character varying(100) NOT NULL
);


ALTER TABLE public.clarkclothes_brand OWNER TO django;

--
-- Name: clarkclothes_clothing_item; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.clarkclothes_clothing_item (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    image character varying(100) NOT NULL,
    price numeric(9,2) NOT NULL,
    brand_id uuid NOT NULL,
    size_id uuid NOT NULL,
    status_id character varying(100) NOT NULL,
    style_id uuid NOT NULL,
    type_id uuid NOT NULL,
    user_email_id character varying(254) NOT NULL
);


ALTER TABLE public.clarkclothes_clothing_item OWNER TO django;

--
-- Name: clarkclothes_size; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.clarkclothes_size (
    id uuid NOT NULL,
    size character varying(100) NOT NULL
);


ALTER TABLE public.clarkclothes_size OWNER TO django;

--
-- Name: clarkclothes_style; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.clarkclothes_style (
    id uuid NOT NULL,
    style_name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.clarkclothes_style OWNER TO django;

--
-- Name: clarkclothes_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.clarkclothes_type (
    id uuid NOT NULL,
    type character varying(100) NOT NULL
);


ALTER TABLE public.clarkclothes_type OWNER TO django;

--
-- Name: clarkclothes_user; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.clarkclothes_user (
    name character varying(500) NOT NULL,
    clark_email character varying(254) NOT NULL,
    phone_number character varying(11) NOT NULL
);


ALTER TABLE public.clarkclothes_user OWNER TO django;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add availablity	1	add_availablity
2	Can change availablity	1	change_availablity
3	Can delete availablity	1	delete_availablity
4	Can view availablity	1	view_availablity
5	Can add brand	2	add_brand
6	Can change brand	2	change_brand
7	Can delete brand	2	delete_brand
8	Can view brand	2	view_brand
9	Can add size	3	add_size
10	Can change size	3	change_size
11	Can delete size	3	delete_size
12	Can view size	3	view_size
13	Can add style	4	add_style
14	Can change style	4	change_style
15	Can delete style	4	delete_style
16	Can view style	4	view_style
17	Can add type	5	add_type
18	Can change type	5	change_type
19	Can delete type	5	delete_type
20	Can view type	5	view_type
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add clothing_ item	7	add_clothing_item
26	Can change clothing_ item	7	change_clothing_item
27	Can delete clothing_ item	7	delete_clothing_item
28	Can view clothing_ item	7	view_clothing_item
29	Can add log entry	8	add_logentry
30	Can change log entry	8	change_logentry
31	Can delete log entry	8	delete_logentry
32	Can view log entry	8	view_logentry
33	Can add permission	9	add_permission
34	Can change permission	9	change_permission
35	Can delete permission	9	delete_permission
36	Can view permission	9	view_permission
37	Can add group	10	add_group
38	Can change group	10	change_group
39	Can delete group	10	delete_group
40	Can view group	10	view_group
41	Can add user	11	add_user
42	Can change user	11	change_user
43	Can delete user	11	delete_user
44	Can view user	11	view_user
45	Can add content type	12	add_contenttype
46	Can change content type	12	change_contenttype
47	Can delete content type	12	delete_contenttype
48	Can view content type	12	view_contenttype
49	Can add session	13	add_session
50	Can change session	13	change_session
51	Can delete session	13	delete_session
52	Can view session	13	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$Cm8yg9CB0mPwH4D5WJpXt9$PNEh2SLBY07IP0tHDkN8nvATsKO+bKSqGmA2LaRb+0w=	2021-12-01 02:50:38.570851+00	t	svacca@clarku.edu			svacca@clarku.edu	t	t	2021-12-01 02:35:11.726113+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: clarkclothes_availablity; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_availablity (name) FROM stdin;
Available
Pending
Sold
\.


--
-- Data for Name: clarkclothes_brand; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_brand (id, brand_name) FROM stdin;
82d73f00-f2c6-4612-a4fd-0d624fea1157	H & M
00cdabed-9d83-41e8-acf7-364314f6d19c	Target
b0045d64-0463-40f6-a551-0c2957818bc0	Forever 21
e659b7f8-7abf-4c64-8519-a8b266a7ee57	Dicks Sporting Goods
\.


--
-- Data for Name: clarkclothes_clothing_item; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_clothing_item (id, name, image, price, brand_id, size_id, status_id, style_id, type_id, user_email_id) FROM stdin;
1754b84f-9e81-45e2-ae6a-9f4db845d8f6	Blue Crop Top	null	5.00	82d73f00-f2c6-4612-a4fd-0d624fea1157	5945aec5-d680-459d-9c83-aa5c0a24d3a0	Available	351423a4-d80a-451b-8f49-0d70efbf5e30	0e458440-51a4-4a32-a616-5bc848066a4d	svacca@clarku.edu
011ccfd3-8438-4521-aeb0-a41aef734eca	Khakis	null	20.00	00cdabed-9d83-41e8-acf7-364314f6d19c	6a739ea6-9570-4d79-8e4c-e883f8da428f	Available	50925236-1286-44af-9ef2-ab9aa874015f	d0efd5d2-57fc-469a-8d91-995beba428ca	jmagee@clarku.edu
\.


--
-- Data for Name: clarkclothes_size; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_size (id, size) FROM stdin;
5945aec5-d680-459d-9c83-aa5c0a24d3a0	S
4491d273-f951-46c8-9eb2-47fefc6be11e	XS
6a739ea6-9570-4d79-8e4c-e883f8da428f	XL
9bf6a95e-dbfc-47b4-a9c3-a0764f0e6de6	XXL
e2cf4492-5e78-4f7f-b24e-e5e7009a067a	XXXXL
1d548e92-d58f-4f37-b4b8-3149c6a7201c	M
\.


--
-- Data for Name: clarkclothes_style; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_style (id, style_name, description) FROM stdin;
50925236-1286-44af-9ef2-ab9aa874015f	Professional	Generally conservative clothing to portray yourself in a professional manner.
05631275-88a6-4e75-ac81-645478804789	Casual	Relaxed, occasional, spontaneous and suited for everyday use.
e74bd7b8-6b97-495c-858b-e263ee426df6	Formal	Applicable for the most formal occasions, such as weddings, christenings, confirmations, funerals, Easter and Christmas traditions, in addition to certain state dinners, audiences, balls, and horse racing events
351423a4-d80a-451b-8f49-0d70efbf5e30	Workout	Casual, comfortable clothing suitable for sport or exercise.
\.


--
-- Data for Name: clarkclothes_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_type (id, type) FROM stdin;
0e458440-51a4-4a32-a616-5bc848066a4d	Shirt
41d7392f-930c-4658-97c0-b10c76e9aa81	Socks
74d6a02b-f4f9-4199-81a9-c81a66662aaf	Sweater
f1a6c1f7-e2a6-4b8a-8df0-723680505ffc	Tank Top
d0efd5d2-57fc-469a-8d91-995beba428ca	Pants
\.


--
-- Data for Name: clarkclothes_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_user (name, clark_email, phone_number) FROM stdin;
Sarah Vacca	svacca@clarku.edu	7745516909
Peter Story	pestory@clarku.edu	1241231234
John Magee	jmagee@clarku.edu	223132123
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-12-01 02:35:33.582567+00	Available	Available	1	[{"added": {}}]	1	1
2	2021-12-01 02:35:38.56242+00	Pending	Pending	1	[{"added": {}}]	1	1
3	2021-12-01 02:35:40.447373+00	Sold	Sold	1	[{"added": {}}]	1	1
4	2021-12-01 02:35:47.084141+00	00cdabed-9d83-41e8-acf7-364314f6d19c	Target	1	[{"added": {}}]	2	1
5	2021-12-01 02:35:55.559058+00	82d73f00-f2c6-4612-a4fd-0d624fea1157	H & M	1	[{"added": {}}]	2	1
6	2021-12-01 02:36:07.814277+00	5945aec5-d680-459d-9c83-aa5c0a24d3a0	S	1	[{"added": {}}]	3	1
7	2021-12-01 02:36:09.703421+00	e2cf4492-5e78-4f7f-b24e-e5e7009a067a	M	1	[{"added": {}}]	3	1
8	2021-12-01 02:36:11.219347+00	2eb7fd6b-2292-4ef3-934d-4a7501bc6722	L	1	[{"added": {}}]	3	1
9	2021-12-01 02:36:12.646467+00	4491d273-f951-46c8-9eb2-47fefc6be11e	XS	1	[{"added": {}}]	3	1
10	2021-12-01 02:36:15.253684+00	6a739ea6-9570-4d79-8e4c-e883f8da428f	XL	1	[{"added": {}}]	3	1
11	2021-12-01 02:36:17.894074+00	9bf6a95e-dbfc-47b4-a9c3-a0764f0e6de6	XXL	1	[{"added": {}}]	3	1
12	2021-12-01 02:36:48.766707+00	05631275-88a6-4e75-ac81-645478804789	Casual	1	[{"added": {}}]	4	1
13	2021-12-01 02:37:17.101301+00	50925236-1286-44af-9ef2-ab9aa874015f	Professional	1	[{"added": {}}]	4	1
14	2021-12-01 02:37:41.86781+00	de4a5b88-a247-42db-9f3e-f09ed4e5f7b1	Workout	1	[{"added": {}}]	4	1
15	2021-12-01 02:37:49.143946+00	0e458440-51a4-4a32-a616-5bc848066a4d	Shirt	1	[{"added": {}}]	5	1
16	2021-12-01 02:37:54.365235+00	d0efd5d2-57fc-469a-8d91-995beba428ca	Pants	1	[{"added": {}}]	5	1
17	2021-12-01 02:38:02.410381+00	41d7392f-930c-4658-97c0-b10c76e9aa81	Socks	1	[{"added": {}}]	5	1
18	2021-12-01 02:38:04.716464+00	8406b178-a439-490c-8ce8-93fced4fc87d	Hat	1	[{"added": {}}]	5	1
19	2021-12-01 02:38:29.525903+00	svacca@clarku.edu	svacca@clarku.edu	1	[{"added": {}}]	6	1
20	2021-12-01 02:38:48.895384+00	pestory@clarku.edu	pestory@clarku.edu	1	[{"added": {}}]	6	1
21	2021-12-01 02:39:07.93608+00	jmagee@clarku.edu	jmagee@clarku.edu	1	[{"added": {}}]	6	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	clarkclothes	availablity
2	clarkclothes	brand
3	clarkclothes	size
4	clarkclothes	style
5	clarkclothes	type
6	clarkclothes	user
7	clarkclothes	clothing_item
8	admin	logentry
9	auth	permission
10	auth	group
11	auth	user
12	contenttypes	contenttype
13	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-12-01 02:31:00.604387+00
2	auth	0001_initial	2021-12-01 02:31:00.856223+00
3	admin	0001_initial	2021-12-01 02:31:00.961108+00
4	admin	0002_logentry_remove_auto_add	2021-12-01 02:31:00.999155+00
5	admin	0003_logentry_add_action_flag_choices	2021-12-01 02:31:01.035302+00
6	contenttypes	0002_remove_content_type_name	2021-12-01 02:31:01.087943+00
7	auth	0002_alter_permission_name_max_length	2021-12-01 02:31:01.116901+00
8	auth	0003_alter_user_email_max_length	2021-12-01 02:31:01.143771+00
9	auth	0004_alter_user_username_opts	2021-12-01 02:31:01.177705+00
10	auth	0005_alter_user_last_login_null	2021-12-01 02:31:01.205579+00
11	auth	0006_require_contenttypes_0002	2021-12-01 02:31:01.214596+00
12	auth	0007_alter_validators_add_error_messages	2021-12-01 02:31:01.243956+00
13	auth	0008_alter_user_username_max_length	2021-12-01 02:31:01.28279+00
14	auth	0009_alter_user_last_name_max_length	2021-12-01 02:31:01.305203+00
15	auth	0010_alter_group_name_max_length	2021-12-01 02:31:01.329972+00
16	auth	0011_update_proxy_permissions	2021-12-01 02:31:01.351811+00
17	auth	0012_alter_user_first_name_max_length	2021-12-01 02:31:01.372774+00
18	clarkclothes	0001_initial	2021-12-01 02:31:01.620627+00
19	sessions	0001_initial	2021-12-01 02:31:01.688441+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
w9ornnsuopz0erw4r67rkf2eklzn5bcf	.eJxVjDsOwjAQRO_iGll2_COU9JzB2vVucADZUpxUiLvjSCmgG715M28RYVtz3BovcSZxEVqcfhlCenLZC3pAuVeZalmXGeWuyKNt8laJX9fD_TvI0HJfW5cUGz8pJBfAONaOtO4ZhzRpZG-M9eGszIg2AQamzmF0yiuTyA7i8wXjfjfr:1msFhe:2ajYG2h7R-fnSj3B6Qqe5wPvKuoHqwPrb-piqKDpG6E	2021-12-15 02:50:38.577727+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 21, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: clarkclothes_availablity clarkclothes_availablity_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_availablity
    ADD CONSTRAINT clarkclothes_availablity_pkey PRIMARY KEY (name);


--
-- Name: clarkclothes_brand clarkclothes_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_brand
    ADD CONSTRAINT clarkclothes_brand_pkey PRIMARY KEY (id);


--
-- Name: clarkclothes_clothing_item clarkclothes_clothing_item_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_clothing_item
    ADD CONSTRAINT clarkclothes_clothing_item_pkey PRIMARY KEY (id);


--
-- Name: clarkclothes_size clarkclothes_size_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_size
    ADD CONSTRAINT clarkclothes_size_pkey PRIMARY KEY (id);


--
-- Name: clarkclothes_style clarkclothes_style_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_style
    ADD CONSTRAINT clarkclothes_style_pkey PRIMARY KEY (id);


--
-- Name: clarkclothes_type clarkclothes_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_type
    ADD CONSTRAINT clarkclothes_type_pkey PRIMARY KEY (id);


--
-- Name: clarkclothes_user clarkclothes_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_user
    ADD CONSTRAINT clarkclothes_user_pkey PRIMARY KEY (clark_email);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: clarkclothes_availablity_name_fe08f0fa_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_availablity_name_fe08f0fa_like ON public.clarkclothes_availablity USING btree (name varchar_pattern_ops);


--
-- Name: clarkclothes_clothing_item_brand_id_3e42dc74; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_clothing_item_brand_id_3e42dc74 ON public.clarkclothes_clothing_item USING btree (brand_id);


--
-- Name: clarkclothes_clothing_item_size_id_10c28977; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_clothing_item_size_id_10c28977 ON public.clarkclothes_clothing_item USING btree (size_id);


--
-- Name: clarkclothes_clothing_item_status_id_2c03b768; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_clothing_item_status_id_2c03b768 ON public.clarkclothes_clothing_item USING btree (status_id);


--
-- Name: clarkclothes_clothing_item_status_id_2c03b768_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_clothing_item_status_id_2c03b768_like ON public.clarkclothes_clothing_item USING btree (status_id varchar_pattern_ops);


--
-- Name: clarkclothes_clothing_item_style_id_f6c340f4; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_clothing_item_style_id_f6c340f4 ON public.clarkclothes_clothing_item USING btree (style_id);


--
-- Name: clarkclothes_clothing_item_type_id_4c85a1ea; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_clothing_item_type_id_4c85a1ea ON public.clarkclothes_clothing_item USING btree (type_id);


--
-- Name: clarkclothes_clothing_item_user_email_id_2d55b398; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_clothing_item_user_email_id_2d55b398 ON public.clarkclothes_clothing_item USING btree (user_email_id);


--
-- Name: clarkclothes_clothing_item_user_email_id_2d55b398_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_clothing_item_user_email_id_2d55b398_like ON public.clarkclothes_clothing_item USING btree (user_email_id varchar_pattern_ops);


--
-- Name: clarkclothes_user_clark_email_22cd19c7_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX clarkclothes_user_clark_email_22cd19c7_like ON public.clarkclothes_user USING btree (clark_email varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clarkclothes_clothing_item clarkclothes_clothin_brand_id_3e42dc74_fk_clarkclot; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_clothing_item
    ADD CONSTRAINT clarkclothes_clothin_brand_id_3e42dc74_fk_clarkclot FOREIGN KEY (brand_id) REFERENCES public.clarkclothes_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clarkclothes_clothing_item clarkclothes_clothin_size_id_10c28977_fk_clarkclot; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_clothing_item
    ADD CONSTRAINT clarkclothes_clothin_size_id_10c28977_fk_clarkclot FOREIGN KEY (size_id) REFERENCES public.clarkclothes_size(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clarkclothes_clothing_item clarkclothes_clothin_status_id_2c03b768_fk_clarkclot; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_clothing_item
    ADD CONSTRAINT clarkclothes_clothin_status_id_2c03b768_fk_clarkclot FOREIGN KEY (status_id) REFERENCES public.clarkclothes_availablity(name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clarkclothes_clothing_item clarkclothes_clothin_style_id_f6c340f4_fk_clarkclot; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_clothing_item
    ADD CONSTRAINT clarkclothes_clothin_style_id_f6c340f4_fk_clarkclot FOREIGN KEY (style_id) REFERENCES public.clarkclothes_style(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clarkclothes_clothing_item clarkclothes_clothin_type_id_4c85a1ea_fk_clarkclot; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_clothing_item
    ADD CONSTRAINT clarkclothes_clothin_type_id_4c85a1ea_fk_clarkclot FOREIGN KEY (type_id) REFERENCES public.clarkclothes_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clarkclothes_clothing_item clarkclothes_clothin_user_email_id_2d55b398_fk_clarkclot; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.clarkclothes_clothing_item
    ADD CONSTRAINT clarkclothes_clothin_user_email_id_2d55b398_fk_clarkclot FOREIGN KEY (user_email_id) REFERENCES public.clarkclothes_user(clark_email) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

