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
1	Can add type	1	add_type
2	Can change type	1	change_type
3	Can delete type	1	delete_type
4	Can view type	1	view_type
5	Can add size	2	add_size
6	Can change size	2	change_size
7	Can delete size	2	delete_size
8	Can view size	2	view_size
9	Can add style	3	add_style
10	Can change style	3	change_style
11	Can delete style	3	delete_style
12	Can view style	3	view_style
13	Can add brand	4	add_brand
14	Can change brand	4	change_brand
15	Can delete brand	4	delete_brand
16	Can view brand	4	view_brand
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add availablity	6	add_availablity
22	Can change availablity	6	change_availablity
23	Can delete availablity	6	delete_availablity
24	Can view availablity	6	view_availablity
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
53	Can add clark user	14	add_clarkuser
54	Can change clark user	14	change_clarkuser
55	Can delete clark user	14	delete_clarkuser
56	Can view clark user	14	view_clarkuser
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
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
6ae0ac97-2100-46cf-8d03-5d1357bccb47	CustomzByZach
\.


--
-- Data for Name: clarkclothes_clothing_item; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_clothing_item (id, name, image, price, brand_id, size_id, status_id, style_id, type_id, user_email_id) FROM stdin;
\.


--
-- Data for Name: clarkclothes_size; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_size (id, size) FROM stdin;
5945aec5-d680-459d-9c83-aa5c0a24d3a0	S
6a739ea6-9570-4d79-8e4c-e883f8da428f	XL
e6975d15-9fae-45c1-a2d6-1e76ad22b346	L
1d548e92-d58f-4f37-b4b8-3149c6a7201c	M
d5381354-5357-4351-ac0b-a745c11d5d9e	XS
09c81f4a-d98a-427e-927c-0e2a645abf73	One Size Fits All
\.


--
-- Data for Name: clarkclothes_style; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_style (id, style_name, description) FROM stdin;
50925236-1286-44af-9ef2-ab9aa874015f	Professional	Generally conservative clothing to portray yourself in a professional manner.
e74bd7b8-6b97-495c-858b-e263ee426df6	Formal	Applicable for the most formal occasions, such as weddings, christenings, confirmations, funerals, Easter and Christmas traditions, in addition to certain state dinners, audiences, balls, and horse racing events
351423a4-d80a-451b-8f49-0d70efbf5e30	Workout	Casual, comfortable clothing suitable for sport or exercise.
f3c025a2-4ffe-4d65-9e06-c31c2a5988b7	Casual	Every day clothing that is comfortable to wear.
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
3b6a9e83-7bc1-4e38-b4ca-b3fdfbe86ee2	Scarves
30943a97-ee06-4962-9669-9adfe00cd3ec	Caps
9bcccca0-6e4d-48ff-a388-4ee9561ecd1d	Dress
\.


--
-- Data for Name: clarkclothes_user; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.clarkclothes_user (name, clark_email, phone_number) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	clarkclothes	type
2	clarkclothes	size
3	clarkclothes	style
4	clarkclothes	brand
5	clarkclothes	user
6	clarkclothes	availablity
7	clarkclothes	clothing_item
8	admin	logentry
9	auth	permission
10	auth	group
11	auth	user
12	contenttypes	contenttype
13	sessions	session
14	clarkclothes	clarkuser
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-01-29 21:40:31.811122+00
2	auth	0001_initial	2023-01-29 21:40:32.400937+00
3	admin	0001_initial	2023-01-29 21:40:32.492979+00
4	admin	0002_logentry_remove_auto_add	2023-01-29 21:40:32.519015+00
5	admin	0003_logentry_add_action_flag_choices	2023-01-29 21:40:32.541374+00
6	contenttypes	0002_remove_content_type_name	2023-01-29 21:40:32.595296+00
7	auth	0002_alter_permission_name_max_length	2023-01-29 21:40:32.614437+00
8	auth	0003_alter_user_email_max_length	2023-01-29 21:40:32.637841+00
9	auth	0004_alter_user_username_opts	2023-01-29 21:40:32.658726+00
10	auth	0005_alter_user_last_login_null	2023-01-29 21:40:32.680906+00
11	auth	0006_require_contenttypes_0002	2023-01-29 21:40:32.688279+00
12	auth	0007_alter_validators_add_error_messages	2023-01-29 21:40:32.710426+00
13	auth	0008_alter_user_username_max_length	2023-01-29 21:40:32.761321+00
14	auth	0009_alter_user_last_name_max_length	2023-01-29 21:40:32.79695+00
15	auth	0010_alter_group_name_max_length	2023-01-29 21:40:32.832067+00
16	auth	0011_update_proxy_permissions	2023-01-29 21:40:32.87346+00
17	auth	0012_alter_user_first_name_max_length	2023-01-29 21:40:32.899427+00
18	sessions	0001_initial	2023-01-29 21:40:32.951742+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
w9ornnsuopz0erw4r67rkf2eklzn5bcf	.eJxVjDsOwjAQRO_iGll2_COU9JzB2vVucADZUpxUiLvjSCmgG715M28RYVtz3BovcSZxEVqcfhlCenLZC3pAuVeZalmXGeWuyKNt8laJX9fD_TvI0HJfW5cUGz8pJBfAONaOtO4ZhzRpZG-M9eGszIg2AQamzmF0yiuTyA7i8wXjfjfr:1msFhe:2ajYG2h7R-fnSj3B6Qqe5wPvKuoHqwPrb-piqKDpG6E	2021-12-15 02:50:38.577727+00
v76tu7sbeqwntkmsub8jdxwhil4a24x2	.eJxVjEEOwiAQRe_C2hAGCFCX7j0DGWZAqgaS0q6Md9cmXej2v_f-S0Tc1hq3kZc4szgLEKffLSE9ctsB37HduqTe1mVOclfkQYe8ds7Py-H-HVQc9VsXZTWzAe3QglNMDiczOUhoSoEECiihC-h9UZk4e69DIEjFG1CWi3h_AOHOOBk:1pVmrg:fSqJuFTKs6OmAoH2C6RHTIb7l1mzA_iOXUkmzwEFf5A	2023-03-11 05:12:56.509005+00
o7kc8kkyw1if9g1ch4gli63hlgryaorf	.eJxVjEEOwiAQRe_C2hAGCFCX7j0DGWZAqgaS0q6Md9cmXej2v_f-S0Tc1hq3kZc4szgLEKffLSE9ctsB37HduqTe1mVOclfkQYe8ds7Py-H-HVQc9VsXZTWzAe3QglNMDiczOUhoSoEECiihC-h9UZk4e69DIEjFG1CWi3h_AOHOOBk:1pcaDw:O9oUN-IShGuharEonln3rrTm26tZSWOapEwH2ScBT3Y	2023-03-29 23:08:00.346428+00
0k1xxtluxabbb7pzvwyys3pk7ccpp7f1	.eJxVjEEOwiAQRe_C2hAGCFCX7j0DGWZAqgaS0q6Md9cmXej2v_f-S0Tc1hq3kZc4szgLEKffLSE9ctsB37HduqTe1mVOclfkQYe8ds7Py-H-HVQc9VsXZTWzAe3QglNMDiczOUhoSoEECiihC-h9UZk4e69DIEjFG1CWi3h_AOHOOBk:1pcvVm:zfq8W8VxcnD024413dbvNdxcPrtgeywyuDkQv-rz5Lk	2023-03-30 21:51:50.309408+00
97q8f0r5v6il9was1lx499izym8jk6tl	.eJxVjEEOwiAQRe_C2hAGCFCX7j0DGWZAqgaS0q6Md9cmXej2v_f-S0Tc1hq3kZc4szgLEKffLSE9ctsB37HduqTe1mVOclfkQYe8ds7Py-H-HVQc9VsXZTWzAe3QglNMDiczOUhoSoEECiihC-h9UZk4e69DIEjFG1CWi3h_AOHOOBk:1pcvv4:I31Fqrs2FP6qSrN25sciznKODyIp2JvaWGEFnDpooAI	2023-03-30 22:17:58.065998+00
gw06yuwvd260t0x7qjyjlz5s3bzmm3lg	.eJxVjEEOwiAQRe_C2hAGCFCX7j0DGWZAqgaS0q6Md9cmXej2v_f-S0Tc1hq3kZc4szgLEKffLSE9ctsB37HduqTe1mVOclfkQYe8ds7Py-H-HVQc9VsXZTWzAe3QglNMDiczOUhoSoEECiihC-h9UZk4e69DIEjFG1CWi3h_AOHOOBk:1pcw78:yLzjSHo45G2AH8Oc685K4Ct5QrlhfT_7nNa57fcBoEw	2023-03-30 22:30:26.762441+00
pmo83na11jbmil9148icel3qs8t0wisq	.eJxVjMEOwiAQRP-FsyFA2VI8evcbCOyuUjWQlPZk_HdL0oNeJpN5M_MWIW5rDlvjJcwkzsKK02-WIj65dECPWO5VYi3rMifZK_KgTV4r8etydP8Ocmx5XwMrh8ZMBqPTA4AaGDwqRD_46NA7Ul1uuzc6gaYJgViPxlpLI7H4fAHVMjfW:1pfSGv:GMV3asUx_EVIX6zCMW9Rbj1h1Q2kOrf2-nH3G3bvUvA	2023-04-06 21:14:57.161988+00
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 33, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


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

