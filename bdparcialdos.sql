PGDMP     /    1            	    x            dbbiblioteca    10.14    10.14 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    17010    dbbiblioteca    DATABASE     ~   CREATE DATABASE dbbiblioteca WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_CO.UTF-8' LC_CTYPE = 'es_CO.UTF-8';
    DROP DATABASE dbbiblioteca;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13003    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17042 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public      
   parcialdos    false    3            �            1259    17040    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public    
   parcialdos    false    3    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public    
   parcialdos    false    202            �            1259    17052    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public      
   parcialdos    false    3            �            1259    17050    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public    
   parcialdos    false    3    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public    
   parcialdos    false    204            �            1259    17034    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public      
   parcialdos    false    3            �            1259    17032    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public    
   parcialdos    false    3    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public    
   parcialdos    false    200            �            1259    17060 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public      
   parcialdos    false    3            �            1259    17070    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public      
   parcialdos    false    3            �            1259    17068    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public    
   parcialdos    false    209    3                        0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public    
   parcialdos    false    208            �            1259    17058    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public    
   parcialdos    false    207    3                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public    
   parcialdos    false    206            �            1259    17078    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public      
   parcialdos    false    3            �            1259    17076 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public    
   parcialdos    false    211    3                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public    
   parcialdos    false    210            �            1259    17190    autor_autor    TABLE     �   CREATE TABLE public.autor_autor (
    id integer NOT NULL,
    "idAutor" integer NOT NULL,
    nombre character varying(100) NOT NULL,
    nacionalidad character varying(100) NOT NULL,
    "idLibro_id" integer NOT NULL
);
    DROP TABLE public.autor_autor;
       public      
   parcialdos    false    3            �            1259    17188    autor_autor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autor_autor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.autor_autor_id_seq;
       public    
   parcialdos    false    3    218                       0    0    autor_autor_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.autor_autor_id_seq OWNED BY public.autor_autor.id;
            public    
   parcialdos    false    217            �            1259    17138    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public      
   parcialdos    false    3            �            1259    17136    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public    
   parcialdos    false    213    3                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public    
   parcialdos    false    212            �            1259    17024    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public      
   parcialdos    false    3            �            1259    17022    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public    
   parcialdos    false    199    3                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public    
   parcialdos    false    198            �            1259    17013    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public      
   parcialdos    false    3            �            1259    17011    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public    
   parcialdos    false    3    197                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public    
   parcialdos    false    196            �            1259    17177    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public      
   parcialdos    false    3            �            1259    17171    libro_libro    TABLE       CREATE TABLE public.libro_libro (
    id integer NOT NULL,
    "idLibro" integer NOT NULL,
    codigo integer NOT NULL,
    titulo character varying(100) NOT NULL,
    isbn character varying(50) NOT NULL,
    editorial character varying(100) NOT NULL,
    "numPags" integer NOT NULL
);
    DROP TABLE public.libro_libro;
       public      
   parcialdos    false    3            �            1259    17169    libro_libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libro_libro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.libro_libro_id_seq;
       public    
   parcialdos    false    3    215                       0    0    libro_libro_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.libro_libro_id_seq OWNED BY public.libro_libro.id;
            public    
   parcialdos    false    214            �            1259    17212    prestamos_prestamo    TABLE       CREATE TABLE public.prestamos_prestamo (
    id integer NOT NULL,
    "Id_prestamo" integer NOT NULL,
    "Fecha_prestamo" character varying(50) NOT NULL,
    "Fecha_devolucion" character varying(50) NOT NULL,
    "Id_libro_id" integer NOT NULL,
    "Id_usuario_id" integer NOT NULL
);
 &   DROP TABLE public.prestamos_prestamo;
       public      
   parcialdos    false    3            �            1259    17210    prestamos_prestamo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamos_prestamo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.prestamos_prestamo_id_seq;
       public    
   parcialdos    false    3    222                       0    0    prestamos_prestamo_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.prestamos_prestamo_id_seq OWNED BY public.prestamos_prestamo.id;
            public    
   parcialdos    false    221            �            1259    17204    usuarios_usuario    TABLE     ?  CREATE TABLE public.usuarios_usuario (
    id integer NOT NULL,
    "Id_usuario" integer NOT NULL,
    "Num_usuario" integer NOT NULL,
    "NIF" character varying(50) NOT NULL,
    "Nombre" character varying(50) NOT NULL,
    "Direccion" character varying(50) NOT NULL,
    "Telefono" character varying(50) NOT NULL
);
 $   DROP TABLE public.usuarios_usuario;
       public      
   parcialdos    false    3            �            1259    17202    usuarios_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_usuario_id_seq;
       public    
   parcialdos    false    3    220            	           0    0    usuarios_usuario_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_usuario_id_seq OWNED BY public.usuarios_usuario.id;
            public    
   parcialdos    false    219                       2604    17045    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    203    202    203                       2604    17055    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    204    205    205                       2604    17037    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    201    200    201                       2604    17063    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    207    206    207                       2604    17073    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    208    209    209                       2604    17081    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    210    211    211                       2604    17193    autor_autor id    DEFAULT     p   ALTER TABLE ONLY public.autor_autor ALTER COLUMN id SET DEFAULT nextval('public.autor_autor_id_seq'::regclass);
 =   ALTER TABLE public.autor_autor ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    218    217    218                       2604    17141    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    212    213    213                       2604    17027    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    199    198    199                       2604    17016    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    196    197    197                       2604    17174    libro_libro id    DEFAULT     p   ALTER TABLE ONLY public.libro_libro ALTER COLUMN id SET DEFAULT nextval('public.libro_libro_id_seq'::regclass);
 =   ALTER TABLE public.libro_libro ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    214    215    215                       2604    17215    prestamos_prestamo id    DEFAULT     ~   ALTER TABLE ONLY public.prestamos_prestamo ALTER COLUMN id SET DEFAULT nextval('public.prestamos_prestamo_id_seq'::regclass);
 D   ALTER TABLE public.prestamos_prestamo ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    222    221    222                       2604    17207    usuarios_usuario id    DEFAULT     z   ALTER TABLE ONLY public.usuarios_usuario ALTER COLUMN id SET DEFAULT nextval('public.usuarios_usuario_id_seq'::regclass);
 B   ALTER TABLE public.usuarios_usuario ALTER COLUMN id DROP DEFAULT;
       public    
   parcialdos    false    219    220    220            �          0    17042 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public    
   parcialdos    false    203   ��       �          0    17052    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public    
   parcialdos    false    205   ��       �          0    17034    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public    
   parcialdos    false    201   ӱ       �          0    17060 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public    
   parcialdos    false    207   w�       �          0    17070    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public    
   parcialdos    false    209   +�       �          0    17078    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public    
   parcialdos    false    211   H�       �          0    17190    autor_autor 
   TABLE DATA               X   COPY public.autor_autor (id, "idAutor", nombre, nacionalidad, "idLibro_id") FROM stdin;
    public    
   parcialdos    false    218   e�       �          0    17138    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public    
   parcialdos    false    213   �       �          0    17024    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public    
   parcialdos    false    199   �       �          0    17013    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public    
   parcialdos    false    197   y�       �          0    17177    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public    
   parcialdos    false    216   s�       �          0    17171    libro_libro 
   TABLE DATA               `   COPY public.libro_libro (id, "idLibro", codigo, titulo, isbn, editorial, "numPags") FROM stdin;
    public    
   parcialdos    false    215   ��       �          0    17212    prestamos_prestamo 
   TABLE DATA               �   COPY public.prestamos_prestamo (id, "Id_prestamo", "Fecha_prestamo", "Fecha_devolucion", "Id_libro_id", "Id_usuario_id") FROM stdin;
    public    
   parcialdos    false    222   ��       �          0    17204    usuarios_usuario 
   TABLE DATA               u   COPY public.usuarios_usuario (id, "Id_usuario", "Num_usuario", "NIF", "Nombre", "Direccion", "Telefono") FROM stdin;
    public    
   parcialdos    false    220   ܻ       
           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public    
   parcialdos    false    202                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public    
   parcialdos    false    204                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
            public    
   parcialdos    false    200                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public    
   parcialdos    false    208                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
            public    
   parcialdos    false    206                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public    
   parcialdos    false    210                       0    0    autor_autor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.autor_autor_id_seq', 11, true);
            public    
   parcialdos    false    217                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 26, true);
            public    
   parcialdos    false    212                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
            public    
   parcialdos    false    198                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
            public    
   parcialdos    false    196                       0    0    libro_libro_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.libro_libro_id_seq', 10, true);
            public    
   parcialdos    false    214                       0    0    prestamos_prestamo_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.prestamos_prestamo_id_seq', 4, true);
            public    
   parcialdos    false    221                       0    0    usuarios_usuario_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_usuario_id_seq', 4, true);
            public    
   parcialdos    false    219            (           2606    17167    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public      
   parcialdos    false    203            -           2606    17094 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public      
   parcialdos    false    205    205            0           2606    17057 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public      
   parcialdos    false    205            *           2606    17047    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public      
   parcialdos    false    203            #           2606    17085 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public      
   parcialdos    false    201    201            %           2606    17039 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public      
   parcialdos    false    201            8           2606    17075 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public      
   parcialdos    false    209            ;           2606    17109 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public      
   parcialdos    false    209    209            2           2606    17065    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public      
   parcialdos    false    207            >           2606    17083 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public      
   parcialdos    false    211            A           2606    17123 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public      
   parcialdos    false    211    211            5           2606    17161     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public      
   parcialdos    false    207            N           2606    17195    autor_autor autor_autor_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.autor_autor
    ADD CONSTRAINT autor_autor_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.autor_autor DROP CONSTRAINT autor_autor_pkey;
       public      
   parcialdos    false    218            D           2606    17147 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public      
   parcialdos    false    213                       2606    17031 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public      
   parcialdos    false    199    199                        2606    17029 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public      
   parcialdos    false    199                       2606    17021 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public      
   parcialdos    false    197            J           2606    17184 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public      
   parcialdos    false    216            G           2606    17176    libro_libro libro_libro_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.libro_libro
    ADD CONSTRAINT libro_libro_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.libro_libro DROP CONSTRAINT libro_libro_pkey;
       public      
   parcialdos    false    215            T           2606    17217 *   prestamos_prestamo prestamos_prestamo_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.prestamos_prestamo
    ADD CONSTRAINT prestamos_prestamo_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.prestamos_prestamo DROP CONSTRAINT prestamos_prestamo_pkey;
       public      
   parcialdos    false    222            P           2606    17209 &   usuarios_usuario usuarios_usuario_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.usuarios_usuario
    ADD CONSTRAINT usuarios_usuario_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.usuarios_usuario DROP CONSTRAINT usuarios_usuario_pkey;
       public      
   parcialdos    false    220            &           1259    17168    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public      
   parcialdos    false    203            +           1259    17105 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public      
   parcialdos    false    205            .           1259    17106 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public      
   parcialdos    false    205            !           1259    17091 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public      
   parcialdos    false    201            6           1259    17121 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public      
   parcialdos    false    209            9           1259    17120 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public      
   parcialdos    false    209            <           1259    17135 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public      
   parcialdos    false    211            ?           1259    17134 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public      
   parcialdos    false    211            3           1259    17162     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public      
   parcialdos    false    207            L           1259    17201    autor_autor_idLibro_id_974da3c2    INDEX     a   CREATE INDEX "autor_autor_idLibro_id_974da3c2" ON public.autor_autor USING btree ("idLibro_id");
 5   DROP INDEX public."autor_autor_idLibro_id_974da3c2";
       public      
   parcialdos    false    218            B           1259    17158 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public      
   parcialdos    false    213            E           1259    17159 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public      
   parcialdos    false    213            H           1259    17186 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public      
   parcialdos    false    216            K           1259    17185 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public      
   parcialdos    false    216            Q           1259    17228 '   prestamos_prestamo_Id_libro_id_792c4fc6    INDEX     q   CREATE INDEX "prestamos_prestamo_Id_libro_id_792c4fc6" ON public.prestamos_prestamo USING btree ("Id_libro_id");
 =   DROP INDEX public."prestamos_prestamo_Id_libro_id_792c4fc6";
       public      
   parcialdos    false    222            R           1259    17229 )   prestamos_prestamo_Id_usuario_id_fcae0d89    INDEX     u   CREATE INDEX "prestamos_prestamo_Id_usuario_id_fcae0d89" ON public.prestamos_prestamo USING btree ("Id_usuario_id");
 ?   DROP INDEX public."prestamos_prestamo_Id_usuario_id_fcae0d89";
       public      
   parcialdos    false    222            W           2606    17100 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public    
   parcialdos    false    205    2853    201            V           2606    17095 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public    
   parcialdos    false    2858    203    205            U           2606    17086 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public    
   parcialdos    false    199    201    2848            Y           2606    17115 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public    
   parcialdos    false    2858    203    209            X           2606    17110 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public    
   parcialdos    false    209    207    2866            [           2606    17129 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public    
   parcialdos    false    211    2853    201            Z           2606    17124 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public    
   parcialdos    false    2866    211    207            ^           2606    17196 =   autor_autor autor_autor_idLibro_id_974da3c2_fk_libro_libro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.autor_autor
    ADD CONSTRAINT "autor_autor_idLibro_id_974da3c2_fk_libro_libro_id" FOREIGN KEY ("idLibro_id") REFERENCES public.libro_libro(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.autor_autor DROP CONSTRAINT "autor_autor_idLibro_id_974da3c2_fk_libro_libro_id";
       public    
   parcialdos    false    2887    218    215            \           2606    17148 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public    
   parcialdos    false    2848    213    199            ]           2606    17153 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public    
   parcialdos    false    213    2866    207            _           2606    17218 L   prestamos_prestamo prestamos_prestamo_Id_libro_id_792c4fc6_fk_libro_libro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos_prestamo
    ADD CONSTRAINT "prestamos_prestamo_Id_libro_id_792c4fc6_fk_libro_libro_id" FOREIGN KEY ("Id_libro_id") REFERENCES public.libro_libro(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.prestamos_prestamo DROP CONSTRAINT "prestamos_prestamo_Id_libro_id_792c4fc6_fk_libro_libro_id";
       public    
   parcialdos    false    2887    222    215            `           2606    17223 I   prestamos_prestamo prestamos_prestamo_Id_usuario_id_fcae0d89_fk_usuarios_    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos_prestamo
    ADD CONSTRAINT "prestamos_prestamo_Id_usuario_id_fcae0d89_fk_usuarios_" FOREIGN KEY ("Id_usuario_id") REFERENCES public.usuarios_usuario(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.prestamos_prestamo DROP CONSTRAINT "prestamos_prestamo_Id_usuario_id_fcae0d89_fk_usuarios_";
       public    
   parcialdos    false    2896    222    220            �      x������ � �      �      x������ � �      �   �  x�]�[n�0E��U��j��ۨTљh�4%(@��}��Nl�b�H>Rn��{7T��^=ã��_ƙ��\k*mM���^Q�U�����Y��U������)lk��F�i��`jR+{�r
��`��O��(*�w͖���4$Hg�R����#�R��&,���%��h]+�c��	8�� �<��cZ�����y��j~��� ��c�E��`)�*�v<�$_��&]źl=�t�'Fek����3c*��^�D�DV)I�_1�sz���*�<痗�kF��%Dę���Ҹ��[�ͅ�l�b�� �J1#0 "R� `,S�t�� Se�]���q�K4c9��T�B���t��Os������Am�k���I�hI���d+�,���0��f����(      �   �   x�e�;�P����+\=~��\����
��"54o�}mm���0��G�����62	 ��*�u:��.�|<��	B���վ	\�:��.��Lcr3�l�gIz����BSm43�AzRU���QP��:�+�4�|��*
�OΆu��e}��0�      �      x������ � �      �      x������ � �      �   �   x�m�A�0��Ǡ�I���?����$�( ��i�9 ��f�c�r�rV̚4���u0K�I��3�R=�a�e���r���P�KS�\}�
d�P4��'��Ƀ��� G��rO�ښ�#��[�A1��?��aGDo}�K�      �   �  x�u��n�0�g�S2��	�#����K��õwC�t
�h�d��I�?7����P��z���/����~{h�׷�o�mx����*c��I�Z�H�F5)"�X3{��Il��U񫓽֤D��DȀ�I�Z���H�!�NZkIZ$�C��x�:X��`	 CI�D�:Y��d�$:�Pp4a\K���P*f�6]�Z:��F�P�y�����.9Ζ�s�F��&νY�Ug���+}r�4�U+2�8^7�2؜�����lt��,�I�j�j�bm�+�X�r�ʫ���Ҿg��f����wn���ǖ��8�K�G���[��L��L�>?��>�|<?~�u��r�@Y�g�d�K2�:]�I|��������ӻ������%��T���������r��?Wa��(���eK�n��y��l�L��f�/M���>���e�fZ�7�>�VA�̮�Җmi_��t���s]      �   x   x�M�K�0Dמ� ʟ��I�*��8��EoO ��f��I3�W��VY8�n8P����Y��c7�J-8�R�gzJ�6��\������g���}D{��k�(6 Ӟ��yHM�c��p=�      �   �  x���[n� E��Qt�o�X��hBS$۸��f���D������6�9�1�1��dc H��%g��=�=&ow:,Z�K��Í��糄l�R UI��7>��Q�0*z�`��S4�u����:��97����rE�6����?zs҇O�Y�&J
�Ea�?���0�]���vE1��L���6}�AO6.�2R�����ގ������*(��Ȃ�c~����)�Q�d���Bo)�Q��S��Ä�"�v��MLE��;���3�yzN*���~�.�z�w]�݁A�^t��XF�6�;��C��oC�A6Fs�s� ���'7�<�,����+I�q��r�xE�_�u
~�^�pI.��JAz��!����7���#$Qcm3·��p��]I��6#���=��ׄX�����v��q�@8�q���3��1-����5s�Mp��R�ä�<H��́q3��X��C�U�
To��n����\      �     x���n�0  �g��� ��
o\��&��,YVK�
,Z��w���hl�n�H,�qA쉩��m��պ�3w�bɭԮZ�qG��f%Y.���Z�ܻm��k?s�[�'K�R��3�"��}��P&�}qr��Һy��R��m>�1/�..D��5�v0�_Ϗ��0	yE|M�p��I8|k�v�}��v��(&�_[8MMx��&3y:M%?"�:�Ov�ܩ0����T��g�k�����@��&&k�$*���ZQ���]~      �   �   x�uP�n�0;K_��`[����.j�B'p���Oζ�oA��`���y^�:ۓ�'���<�34�$�ʜ��AeH@���n�?��`�k*����� r��W����b�Q8�3X�8K�z��~���y�GP��I�eK�q�k�ڐ���G�pd���_����-�rCՕb�̫Ty�(��.{q�[�+)G)�qx��h�VSW�q)o���T��d��? I�m!      �   I   x�E���0߰K�`������(M�D�q�Aќ��<1�l}��ql�1��ޜor%��Z���6��H>.v      �   j   x�}̱
�@�Y���l�o���P.�3\��ͅ��4>� �f�u�j4�X�&�J5�^"}�x��m�K�dɶ�k�4��h����h���Ü?��~�/ 3(�     