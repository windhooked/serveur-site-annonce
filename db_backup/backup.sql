PGDMP     +    !                 w            site_annonce    11.1    11.1 �    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            Y           1262    16721    site_annonce    DATABASE     �   CREATE DATABASE site_annonce WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE site_annonce;
             postgres    false            Z           0    0    DATABASE site_annonce    COMMENT     ^   COMMENT ON DATABASE site_annonce IS 'classifieds ads website projet website for ivory cost.';
                  postgres    false    3161            �            1259    16763    account_state    TABLE     ~   CREATE TABLE public.account_state (
    account_state_id smallint NOT NULL,
    description character varying(45) NOT NULL
);
 !   DROP TABLE public.account_state;
       public         postgres    false            [           0    0    TABLE account_state    COMMENT     \   COMMENT ON TABLE public.account_state IS 'look up table for user''s account current state';
            public       postgres    false    202            �            1259    16761 "   account_state_account_state_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_state_account_state_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.account_state_account_state_id_seq;
       public       postgres    false    202            \           0    0 "   account_state_account_state_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.account_state_account_state_id_seq OWNED BY public.account_state.account_state_id;
            public       postgres    false    201            �            1259    16771    account_type    TABLE     |   CREATE TABLE public.account_type (
    account_type_id smallint NOT NULL,
    description character varying(45) NOT NULL
);
     DROP TABLE public.account_type;
       public         postgres    false            ]           0    0    TABLE account_type    COMMENT     Y   COMMENT ON TABLE public.account_type IS 'look up table for user account different type';
            public       postgres    false    204            �            1259    16769     account_type_account_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_type_account_type_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_type_account_type_id_seq;
       public       postgres    false    204            ^           0    0     account_type_account_type_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_type_account_type_id_seq OWNED BY public.account_type.account_type_id;
            public       postgres    false    203            �            1259    16916    advert    TABLE       CREATE TABLE public.advert (
    advert_id bigint NOT NULL,
    title character varying(50) NOT NULL,
    description text,
    advertiser_id integer NOT NULL,
    category_id integer NOT NULL,
    condition_id integer,
    city_id integer NOT NULL,
    advert_state_id integer NOT NULL,
    advert_type_id integer,
    price numeric,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    map_position point,
    pictures_urls json,
    attribute jsonb,
    thumbnails_urls character varying[]
);
    DROP TABLE public.advert;
       public         postgres    false            _           0    0    TABLE advert    COMMENT     3   COMMENT ON TABLE public.advert IS 'adverts table';
            public       postgres    false    219            �            1259    16914    advert_advert_id_seq    SEQUENCE     }   CREATE SEQUENCE public.advert_advert_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.advert_advert_id_seq;
       public       postgres    false    219            `           0    0    advert_advert_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.advert_advert_id_seq OWNED BY public.advert.advert_id;
            public       postgres    false    218            �            1259    16902    advert_condition    TABLE     v   CREATE TABLE public.advert_condition (
    condition_id smallint NOT NULL,
    name character varying(45) NOT NULL
);
 $   DROP TABLE public.advert_condition;
       public         postgres    false            a           0    0    TABLE advert_condition    COMMENT     R   COMMENT ON TABLE public.advert_condition IS 'look up table for advert condition';
            public       postgres    false    217            �            1259    17015    advert_state    TABLE     p   CREATE TABLE public.advert_state (
    advert_state_id integer NOT NULL,
    name character varying NOT NULL
);
     DROP TABLE public.advert_state;
       public         postgres    false            �            1259    17013     advert_state_advert_state_id_seq    SEQUENCE     �   CREATE SEQUENCE public.advert_state_advert_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.advert_state_advert_state_id_seq;
       public       postgres    false    227            b           0    0     advert_state_advert_state_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.advert_state_advert_state_id_seq OWNED BY public.advert_state.advert_state_id;
            public       postgres    false    226            �            1259    17006    advert_type    TABLE     r   CREATE TABLE public.advert_type (
    advert_type_id integer NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.advert_type;
       public         postgres    false            �            1259    17004    advert_type_advert_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.advert_type_advert_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.advert_type_advert_type_id_seq;
       public       postgres    false    225            c           0    0    advert_type_advert_type_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.advert_type_advert_type_id_seq OWNED BY public.advert_type.advert_type_id;
            public       postgres    false    224            �            1259    17154    alert    TABLE       CREATE TABLE public.alert (
    alert_id integer NOT NULL,
    owner_id integer NOT NULL,
    key_word character varying,
    category_id integer,
    min_price numeric,
    max_price numeric,
    advert_type_id integer,
    is_active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.alert;
       public         postgres    false            �            1259    16743 	   auth_type    TABLE     o   CREATE TABLE public.auth_type (
    auth_type_id smallint NOT NULL,
    name character varying(45) NOT NULL
);
    DROP TABLE public.auth_type;
       public         postgres    false            d           0    0    TABLE auth_type    COMMENT     K   COMMENT ON TABLE public.auth_type IS 'authentification type used by user';
            public       postgres    false    200            �            1259    16741    auth_type_auth_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_type_auth_type_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.auth_type_auth_type_id_seq;
       public       postgres    false    200            e           0    0    auth_type_auth_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.auth_type_auth_type_id_seq OWNED BY public.auth_type.auth_type_id;
            public       postgres    false    199            �            1259    16868    category    TABLE     �   CREATE TABLE public.category (
    parent_id integer,
    category_id integer NOT NULL,
    name character varying(60) NOT NULL,
    path_name character varying(60),
    fields json[]
);
    DROP TABLE public.category;
       public         postgres    false            f           0    0    TABLE category    COMMENT     :   COMMENT ON TABLE public.category IS 'adverts categories';
            public       postgres    false    213            �            1259    16866    category_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_category_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_category_id_seq;
       public       postgres    false    213            g           0    0    category_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;
            public       postgres    false    212            �            1259    33139    category_field    TABLE     m   CREATE TABLE public.category_field (
    category_id integer NOT NULL,
    form_field_id integer NOT NULL
);
 "   DROP TABLE public.category_field;
       public         postgres    false            �            1259    16800    chat    TABLE     �   CREATE TABLE public.chat (
    chat_id bigint NOT NULL,
    advertiser_id integer NOT NULL,
    guest_id integer NOT NULL,
    chat_state_id integer
);
    DROP TABLE public.chat;
       public         postgres    false            h           0    0 
   TABLE chat    COMMENT     F   COMMENT ON TABLE public.chat IS 'chat on advert between users table';
            public       postgres    false    209            �            1259    16798    chat_chat_id_seq    SEQUENCE     y   CREATE SEQUENCE public.chat_chat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.chat_chat_id_seq;
       public       postgres    false    209            i           0    0    chat_chat_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.chat_chat_id_seq OWNED BY public.chat.chat_id;
            public       postgres    false    208            �            1259    17104 
   chat_state    TABLE     l   CREATE TABLE public.chat_state (
    chat_state_id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.chat_state;
       public         postgres    false            �            1259    17102    chat_state_chat_state_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_state_chat_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.chat_state_chat_state_id_seq;
       public       postgres    false    235            j           0    0    chat_state_chat_state_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.chat_state_chat_state_id_seq OWNED BY public.chat_state.chat_state_id;
            public       postgres    false    234            �            1259    17037    city    TABLE     �   CREATE TABLE public.city (
    city_id smallint NOT NULL,
    city_name character varying(60) NOT NULL,
    district_id integer,
    path_name character varying(60)
);
    DROP TABLE public.city;
       public         postgres    false            �            1259    17035    city_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.city_city_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public       postgres    false    231            k           0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
            public       postgres    false    230            �            1259    16900    condition_condition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.condition_condition_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.condition_condition_id_seq;
       public       postgres    false    217            l           0    0    condition_condition_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public.condition_condition_id_seq OWNED BY public.advert_condition.condition_id;
            public       postgres    false    216            �            1259    17026    district    TABLE     i   CREATE TABLE public.district (
    district_id smallint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.district;
       public         postgres    false            �            1259    17132 
   evaluation    TABLE       CREATE TABLE public.evaluation (
    advertiser_id integer NOT NULL,
    guest_id integer NOT NULL,
    rating_id smallint NOT NULL,
    comment text,
    evaluation_id integer NOT NULL,
    CONSTRAINT evaluation_check CHECK ((advertiser_id <> guest_id))
);
    DROP TABLE public.evaluation;
       public         postgres    false            �            1259    17118    favorite    TABLE     �   CREATE TABLE public.favorite (
    user_id integer NOT NULL,
    advert_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.favorite;
       public         postgres    false            �            1259    16785    follow    TABLE     _   CREATE TABLE public.follow (
    user_id integer NOT NULL,
    follower_id integer NOT NULL
);
    DROP TABLE public.follow;
       public         postgres    false            m           0    0    TABLE follow    COMMENT     D   COMMENT ON TABLE public.follow IS 'users following relation table';
            public       postgres    false    207            �            1259    33191 
   form_field    TABLE     b   CREATE TABLE public.form_field (
    form_field_id integer NOT NULL,
    content json NOT NULL
);
    DROP TABLE public.form_field;
       public         postgres    false            �            1259    16820    message    TABLE       CREATE TABLE public.message (
    message_id bigint NOT NULL,
    chat_id integer NOT NULL,
    body text,
    "time" timestamp without time zone DEFAULT now() NOT NULL,
    is_read boolean DEFAULT false NOT NULL,
    user_id integer NOT NULL,
    message_type_id integer NOT NULL
);
    DROP TABLE public.message;
       public         postgres    false            n           0    0    TABLE message    COMMENT     :   COMMENT ON TABLE public.message IS 'chat messages table';
            public       postgres    false    211            �            1259    16818    message_message_id_seq    SEQUENCE        CREATE SEQUENCE public.message_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.message_message_id_seq;
       public       postgres    false    211            o           0    0    message_message_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.message_message_id_seq OWNED BY public.message.message_id;
            public       postgres    false    210            �            1259    16883    message_type    TABLE     u   CREATE TABLE public.message_type (
    message_type_id smallint NOT NULL,
    name character varying(45) NOT NULL
);
     DROP TABLE public.message_type;
       public         postgres    false            p           0    0    TABLE message_type    COMMENT     C   COMMENT ON TABLE public.message_type IS 'message different types';
            public       postgres    false    215            �            1259    16881 &   message_type_table_message_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.message_type_table_message_type_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.message_type_table_message_type_id_seq;
       public       postgres    false    215            q           0    0 &   message_type_table_message_type_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.message_type_table_message_type_id_seq OWNED BY public.message_type.message_type_id;
            public       postgres    false    214            �            1259    16733    phone    TABLE     l   CREATE TABLE public.phone (
    user_id integer NOT NULL,
    phone_number character varying(8) NOT NULL
);
    DROP TABLE public.phone;
       public         postgres    false            r           0    0    TABLE phone    COMMENT     A   COMMENT ON TABLE public.phone IS 'user''s phones numbers table';
            public       postgres    false    198            �            1259    17024    region_region_id_seq    SEQUENCE     �   CREATE SEQUENCE public.region_region_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.region_region_id_seq;
       public       postgres    false    229            s           0    0    region_region_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.region_region_id_seq OWNED BY public.district.district_id;
            public       postgres    false    228            �            1259    16928    report    TABLE       CREATE TABLE public.report (
    report_id integer NOT NULL,
    advert_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    report_message text NOT NULL,
    report_type_id integer,
    user_id integer,
    user_email character varying(50)
);
    DROP TABLE public.report;
       public         postgres    false            t           0    0    TABLE report    COMMENT     W   COMMENT ON TABLE public.report IS 'table to store all report from user about adverts';
            public       postgres    false    221            �            1259    16926    report_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.report_report_id_seq;
       public       postgres    false    221            u           0    0    report_report_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.report_report_id_seq OWNED BY public.report.report_id;
            public       postgres    false    220            �            1259    16940    report_type    TABLE     c   CREATE TABLE public.report_type (
    report_type_id smallint NOT NULL,
    title text NOT NULL
);
    DROP TABLE public.report_type;
       public         postgres    false            v           0    0    TABLE report_type    COMMENT     Y   COMMENT ON TABLE public.report_type IS 'different predefined report type with messages';
            public       postgres    false    223            �            1259    16938    report_type_report_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_type_report_type_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.report_type_report_type_id_seq;
       public       postgres    false    223            w           0    0    report_type_report_type_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.report_type_report_type_id_seq OWNED BY public.report_type.report_type_id;
            public       postgres    false    222            �            1259    17213    search    TABLE     �   CREATE TABLE public.search (
    query character varying(60),
    "time" timestamp without time zone DEFAULT now() NOT NULL,
    user_id integer,
    is_success boolean NOT NULL,
    category_id integer
);
    DROP TABLE public.search;
       public         postgres    false            x           0    0    TABLE search    COMMENT     H   COMMENT ON TABLE public.search IS 'table to store user''s search data';
            public       postgres    false    245            �            1259    16779    session    TABLE     �   CREATE TABLE public.session (
    session_id integer NOT NULL,
    user_id integer,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    last_activity_time timestamp without time zone,
    access_token character varying NOT NULL
);
    DROP TABLE public.session;
       public         postgres    false            y           0    0    TABLE session    COMMENT     H   COMMENT ON TABLE public.session IS 'user''s connexions sessions table';
            public       postgres    false    206            �            1259    16777    session_session_id_seq    SEQUENCE     �   CREATE SEQUENCE public.session_session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.session_session_id_seq;
       public       postgres    false    206            z           0    0    session_session_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.session_session_id_seq OWNED BY public.session.session_id;
            public       postgres    false    205            �            1259    17172    share    TABLE     �   CREATE TABLE public.share (
    advert_id integer NOT NULL,
    guest_id integer,
    social_media_id integer NOT NULL,
    shared_at timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.share;
       public         postgres    false            �            1259    17188    social_media    TABLE     t   CREATE TABLE public.social_media (
    social_media_id integer NOT NULL,
    name character varying(45) NOT NULL
);
     DROP TABLE public.social_media;
       public         postgres    false            �            1259    17186     social_media_social_media_id_seq    SEQUENCE     �   CREATE SEQUENCE public.social_media_social_media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.social_media_social_media_id_seq;
       public       postgres    false    242            {           0    0     social_media_social_media_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.social_media_social_media_id_seq OWNED BY public.social_media.social_media_id;
            public       postgres    false    241            �            1259    17075    store    TABLE       CREATE TABLE public.store (
    store_id integer NOT NULL,
    brand_name character varying(50) NOT NULL,
    owner_id integer NOT NULL,
    slogan text,
    profile_picture_url text,
    background_picture_url text,
    store_path character varying(50)
);
    DROP TABLE public.store;
       public         postgres    false            �            1259    17073    store_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.store_store_id_seq;
       public       postgres    false    233            |           0    0    store_store_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.store_store_id_seq OWNED BY public.store.store_id;
            public       postgres    false    232            �            1259    16724    user_account    TABLE     P  CREATE TABLE public.user_account (
    user_id integer NOT NULL,
    name character varying(45) NOT NULL,
    email character varying(45),
    profile_picture text DEFAULT 'https://cache3.youla.io/files/images/80_80/5b/e6/5be6f5f3cf2045d381310d1e.jpg'::text,
    password text,
    auth_type_id integer NOT NULL,
    city_id integer
);
     DROP TABLE public.user_account;
       public         postgres    false            �            1259    16722    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public       postgres    false    197            }           0    0    user_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.user_user_id_seq OWNED BY public.user_account.user_id;
            public       postgres    false    196            �            1259    17201    verified_user    TABLE     �   CREATE TABLE public.verified_user (
    user_id integer NOT NULL,
    firstname character varying(45) NOT NULL,
    lastname character varying(45) NOT NULL,
    id_card_no character varying(60) NOT NULL,
    id_card_url text NOT NULL
);
 !   DROP TABLE public.verified_user;
       public         postgres    false            ~           0    0    TABLE verified_user    COMMENT     P   COMMENT ON TABLE public.verified_user IS 'here we store verified user''s data';
            public       postgres    false    244            �            1259    17199    verified_user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.verified_user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.verified_user_user_id_seq;
       public       postgres    false    244                       0    0    verified_user_user_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.verified_user_user_id_seq OWNED BY public.verified_user.user_id;
            public       postgres    false    243            �            1259    17168    view    TABLE     �   CREATE TABLE public.view (
    advert_id integer NOT NULL,
    guest_id integer,
    viewed_at timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.view;
       public         postgres    false            /           2604    16766    account_state account_state_id    DEFAULT     �   ALTER TABLE ONLY public.account_state ALTER COLUMN account_state_id SET DEFAULT nextval('public.account_state_account_state_id_seq'::regclass);
 M   ALTER TABLE public.account_state ALTER COLUMN account_state_id DROP DEFAULT;
       public       postgres    false    201    202    202            0           2604    16774    account_type account_type_id    DEFAULT     �   ALTER TABLE ONLY public.account_type ALTER COLUMN account_type_id SET DEFAULT nextval('public.account_type_account_type_id_seq'::regclass);
 K   ALTER TABLE public.account_type ALTER COLUMN account_type_id DROP DEFAULT;
       public       postgres    false    204    203    204            ;           2604    16919    advert advert_id    DEFAULT     t   ALTER TABLE ONLY public.advert ALTER COLUMN advert_id SET DEFAULT nextval('public.advert_advert_id_seq'::regclass);
 ?   ALTER TABLE public.advert ALTER COLUMN advert_id DROP DEFAULT;
       public       postgres    false    218    219    219            :           2604    16905    advert_condition condition_id    DEFAULT     �   ALTER TABLE ONLY public.advert_condition ALTER COLUMN condition_id SET DEFAULT nextval('public.condition_condition_id_seq'::regclass);
 L   ALTER TABLE public.advert_condition ALTER COLUMN condition_id DROP DEFAULT;
       public       postgres    false    217    216    217            A           2604    17018    advert_state advert_state_id    DEFAULT     �   ALTER TABLE ONLY public.advert_state ALTER COLUMN advert_state_id SET DEFAULT nextval('public.advert_state_advert_state_id_seq'::regclass);
 K   ALTER TABLE public.advert_state ALTER COLUMN advert_state_id DROP DEFAULT;
       public       postgres    false    227    226    227            @           2604    17009    advert_type advert_type_id    DEFAULT     �   ALTER TABLE ONLY public.advert_type ALTER COLUMN advert_type_id SET DEFAULT nextval('public.advert_type_advert_type_id_seq'::regclass);
 I   ALTER TABLE public.advert_type ALTER COLUMN advert_type_id DROP DEFAULT;
       public       postgres    false    225    224    225            .           2604    16746    auth_type auth_type_id    DEFAULT     �   ALTER TABLE ONLY public.auth_type ALTER COLUMN auth_type_id SET DEFAULT nextval('public.auth_type_auth_type_id_seq'::regclass);
 E   ALTER TABLE public.auth_type ALTER COLUMN auth_type_id DROP DEFAULT;
       public       postgres    false    200    199    200            8           2604    33161    category category_id    DEFAULT     |   ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);
 C   ALTER TABLE public.category ALTER COLUMN category_id DROP DEFAULT;
       public       postgres    false    212    213    213            3           2604    16803    chat chat_id    DEFAULT     l   ALTER TABLE ONLY public.chat ALTER COLUMN chat_id SET DEFAULT nextval('public.chat_chat_id_seq'::regclass);
 ;   ALTER TABLE public.chat ALTER COLUMN chat_id DROP DEFAULT;
       public       postgres    false    209    208    209            E           2604    17107    chat_state chat_state_id    DEFAULT     �   ALTER TABLE ONLY public.chat_state ALTER COLUMN chat_state_id SET DEFAULT nextval('public.chat_state_chat_state_id_seq'::regclass);
 G   ALTER TABLE public.chat_state ALTER COLUMN chat_state_id DROP DEFAULT;
       public       postgres    false    234    235    235            C           2604    17040    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public       postgres    false    231    230    231            B           2604    17029    district district_id    DEFAULT     x   ALTER TABLE ONLY public.district ALTER COLUMN district_id SET DEFAULT nextval('public.region_region_id_seq'::regclass);
 C   ALTER TABLE public.district ALTER COLUMN district_id DROP DEFAULT;
       public       postgres    false    229    228    229            5           2604    16823    message message_id    DEFAULT     x   ALTER TABLE ONLY public.message ALTER COLUMN message_id SET DEFAULT nextval('public.message_message_id_seq'::regclass);
 A   ALTER TABLE public.message ALTER COLUMN message_id DROP DEFAULT;
       public       postgres    false    210    211    211            9           2604    16886    message_type message_type_id    DEFAULT     �   ALTER TABLE ONLY public.message_type ALTER COLUMN message_type_id SET DEFAULT nextval('public.message_type_table_message_type_id_seq'::regclass);
 K   ALTER TABLE public.message_type ALTER COLUMN message_type_id DROP DEFAULT;
       public       postgres    false    214    215    215            =           2604    16931    report report_id    DEFAULT     t   ALTER TABLE ONLY public.report ALTER COLUMN report_id SET DEFAULT nextval('public.report_report_id_seq'::regclass);
 ?   ALTER TABLE public.report ALTER COLUMN report_id DROP DEFAULT;
       public       postgres    false    220    221    221            ?           2604    16943    report_type report_type_id    DEFAULT     �   ALTER TABLE ONLY public.report_type ALTER COLUMN report_type_id SET DEFAULT nextval('public.report_type_report_type_id_seq'::regclass);
 I   ALTER TABLE public.report_type ALTER COLUMN report_type_id DROP DEFAULT;
       public       postgres    false    222    223    223            1           2604    16782    session session_id    DEFAULT     x   ALTER TABLE ONLY public.session ALTER COLUMN session_id SET DEFAULT nextval('public.session_session_id_seq'::regclass);
 A   ALTER TABLE public.session ALTER COLUMN session_id DROP DEFAULT;
       public       postgres    false    206    205    206            K           2604    17191    social_media social_media_id    DEFAULT     �   ALTER TABLE ONLY public.social_media ALTER COLUMN social_media_id SET DEFAULT nextval('public.social_media_social_media_id_seq'::regclass);
 K   ALTER TABLE public.social_media ALTER COLUMN social_media_id DROP DEFAULT;
       public       postgres    false    242    241    242            D           2604    17078    store store_id    DEFAULT     p   ALTER TABLE ONLY public.store ALTER COLUMN store_id SET DEFAULT nextval('public.store_store_id_seq'::regclass);
 =   ALTER TABLE public.store ALTER COLUMN store_id DROP DEFAULT;
       public       postgres    false    233    232    233            ,           2604    16727    user_account user_id    DEFAULT     t   ALTER TABLE ONLY public.user_account ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 C   ALTER TABLE public.user_account ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    197    196    197            L           2604    17204    verified_user user_id    DEFAULT     ~   ALTER TABLE ONLY public.verified_user ALTER COLUMN user_id SET DEFAULT nextval('public.verified_user_user_id_seq'::regclass);
 D   ALTER TABLE public.verified_user ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    244    243    244            &          0    16763    account_state 
   TABLE DATA               F   COPY public.account_state (account_state_id, description) FROM stdin;
    public       postgres    false    202   �      (          0    16771    account_type 
   TABLE DATA               D   COPY public.account_type (account_type_id, description) FROM stdin;
    public       postgres    false    204   �      7          0    16916    advert 
   TABLE DATA               �   COPY public.advert (advert_id, title, description, advertiser_id, category_id, condition_id, city_id, advert_state_id, advert_type_id, price, created_at, map_position, pictures_urls, attribute, thumbnails_urls) FROM stdin;
    public       postgres    false    219         5          0    16902    advert_condition 
   TABLE DATA               >   COPY public.advert_condition (condition_id, name) FROM stdin;
    public       postgres    false    217   $      ?          0    17015    advert_state 
   TABLE DATA               =   COPY public.advert_state (advert_state_id, name) FROM stdin;
    public       postgres    false    227   N      =          0    17006    advert_type 
   TABLE DATA               ;   COPY public.advert_type (advert_type_id, name) FROM stdin;
    public       postgres    false    225   �      J          0    17154    alert 
   TABLE DATA               {   COPY public.alert (alert_id, owner_id, key_word, category_id, min_price, max_price, advert_type_id, is_active) FROM stdin;
    public       postgres    false    238   �      $          0    16743 	   auth_type 
   TABLE DATA               7   COPY public.auth_type (auth_type_id, name) FROM stdin;
    public       postgres    false    200   
      1          0    16868    category 
   TABLE DATA               S   COPY public.category (parent_id, category_id, name, path_name, fields) FROM stdin;
    public       postgres    false    213   C      R          0    33139    category_field 
   TABLE DATA               D   COPY public.category_field (category_id, form_field_id) FROM stdin;
    public       postgres    false    246   ("      -          0    16800    chat 
   TABLE DATA               O   COPY public.chat (chat_id, advertiser_id, guest_id, chat_state_id) FROM stdin;
    public       postgres    false    209   E"      G          0    17104 
   chat_state 
   TABLE DATA               9   COPY public.chat_state (chat_state_id, name) FROM stdin;
    public       postgres    false    235   b"      C          0    17037    city 
   TABLE DATA               J   COPY public.city (city_id, city_name, district_id, path_name) FROM stdin;
    public       postgres    false    231   �"      A          0    17026    district 
   TABLE DATA               5   COPY public.district (district_id, name) FROM stdin;
    public       postgres    false    229   %      I          0    17132 
   evaluation 
   TABLE DATA               `   COPY public.evaluation (advertiser_id, guest_id, rating_id, comment, evaluation_id) FROM stdin;
    public       postgres    false    237   �%      H          0    17118    favorite 
   TABLE DATA               B   COPY public.favorite (user_id, advert_id, created_at) FROM stdin;
    public       postgres    false    236   �%      +          0    16785    follow 
   TABLE DATA               6   COPY public.follow (user_id, follower_id) FROM stdin;
    public       postgres    false    207   �%      S          0    33191 
   form_field 
   TABLE DATA               <   COPY public.form_field (form_field_id, content) FROM stdin;
    public       postgres    false    247   &      /          0    16820    message 
   TABLE DATA               g   COPY public.message (message_id, chat_id, body, "time", is_read, user_id, message_type_id) FROM stdin;
    public       postgres    false    211   I,      3          0    16883    message_type 
   TABLE DATA               =   COPY public.message_type (message_type_id, name) FROM stdin;
    public       postgres    false    215   f,      "          0    16733    phone 
   TABLE DATA               6   COPY public.phone (user_id, phone_number) FROM stdin;
    public       postgres    false    198   �,      9          0    16928    report 
   TABLE DATA               w   COPY public.report (report_id, advert_id, created_at, report_message, report_type_id, user_id, user_email) FROM stdin;
    public       postgres    false    221   �,      ;          0    16940    report_type 
   TABLE DATA               <   COPY public.report_type (report_type_id, title) FROM stdin;
    public       postgres    false    223   �,      Q          0    17213    search 
   TABLE DATA               Q   COPY public.search (query, "time", user_id, is_success, category_id) FROM stdin;
    public       postgres    false    245   �-      *          0    16779    session 
   TABLE DATA               d   COPY public.session (session_id, user_id, created_at, last_activity_time, access_token) FROM stdin;
    public       postgres    false    206   �-      L          0    17172    share 
   TABLE DATA               P   COPY public.share (advert_id, guest_id, social_media_id, shared_at) FROM stdin;
    public       postgres    false    240   42      N          0    17188    social_media 
   TABLE DATA               =   COPY public.social_media (social_media_id, name) FROM stdin;
    public       postgres    false    242   Q2      E          0    17075    store 
   TABLE DATA               �   COPY public.store (store_id, brand_name, owner_id, slogan, profile_picture_url, background_picture_url, store_path) FROM stdin;
    public       postgres    false    233   �2      !          0    16724    user_account 
   TABLE DATA               n   COPY public.user_account (user_id, name, email, profile_picture, password, auth_type_id, city_id) FROM stdin;
    public       postgres    false    197   �2      P          0    17201    verified_user 
   TABLE DATA               ^   COPY public.verified_user (user_id, firstname, lastname, id_card_no, id_card_url) FROM stdin;
    public       postgres    false    244   �3      K          0    17168    view 
   TABLE DATA               >   COPY public.view (advert_id, guest_id, viewed_at) FROM stdin;
    public       postgres    false    239   �3      �           0    0 "   account_state_account_state_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.account_state_account_state_id_seq', 3, true);
            public       postgres    false    201            �           0    0     account_type_account_type_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.account_type_account_type_id_seq', 2, true);
            public       postgres    false    203            �           0    0    advert_advert_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.advert_advert_id_seq', 55, true);
            public       postgres    false    218            �           0    0     advert_state_advert_state_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.advert_state_advert_state_id_seq', 3, true);
            public       postgres    false    226            �           0    0    advert_type_advert_type_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.advert_type_advert_type_id_seq', 5, true);
            public       postgres    false    224            �           0    0    auth_type_auth_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.auth_type_auth_type_id_seq', 3, true);
            public       postgres    false    199            �           0    0    category_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.category_category_id_seq', 142, true);
            public       postgres    false    212            �           0    0    chat_chat_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.chat_chat_id_seq', 1, false);
            public       postgres    false    208            �           0    0    chat_state_chat_state_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.chat_state_chat_state_id_seq', 2, true);
            public       postgres    false    234            �           0    0    city_city_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.city_city_id_seq', 50, true);
            public       postgres    false    230            �           0    0    condition_condition_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.condition_condition_id_seq', 2, true);
            public       postgres    false    216            �           0    0    message_message_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.message_message_id_seq', 1, false);
            public       postgres    false    210            �           0    0 &   message_type_table_message_type_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.message_type_table_message_type_id_seq', 3, true);
            public       postgres    false    214            �           0    0    region_region_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.region_region_id_seq', 14, true);
            public       postgres    false    228            �           0    0    report_report_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.report_report_id_seq', 1, false);
            public       postgres    false    220            �           0    0    report_type_report_type_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.report_type_report_type_id_seq', 6, true);
            public       postgres    false    222            �           0    0    session_session_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.session_session_id_seq', 43, true);
            public       postgres    false    205            �           0    0     social_media_social_media_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.social_media_social_media_id_seq', 3, true);
            public       postgres    false    241            �           0    0    store_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.store_store_id_seq', 2, true);
            public       postgres    false    232            �           0    0    user_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_user_id_seq', 31, true);
            public       postgres    false    196            �           0    0    verified_user_user_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.verified_user_user_id_seq', 1, false);
            public       postgres    false    243            U           2606    16768     account_state account_state_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_state
    ADD CONSTRAINT account_state_pkey PRIMARY KEY (account_state_id);
 J   ALTER TABLE ONLY public.account_state DROP CONSTRAINT account_state_pkey;
       public         postgres    false    202            W           2606    16776    account_type account_type_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.account_type
    ADD CONSTRAINT account_type_pkey PRIMARY KEY (account_type_id);
 H   ALTER TABLE ONLY public.account_type DROP CONSTRAINT account_type_pkey;
       public         postgres    false    204            g           2606    16925    advert advert_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.advert
    ADD CONSTRAINT advert_pkey PRIMARY KEY (advert_id);
 <   ALTER TABLE ONLY public.advert DROP CONSTRAINT advert_pkey;
       public         postgres    false    219            o           2606    17023    advert_state advert_state_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.advert_state
    ADD CONSTRAINT advert_state_pkey PRIMARY KEY (advert_state_id);
 H   ALTER TABLE ONLY public.advert_state DROP CONSTRAINT advert_state_pkey;
       public         postgres    false    227            m           2606    17011    advert_type advert_type_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.advert_type
    ADD CONSTRAINT advert_type_pkey PRIMARY KEY (advert_type_id);
 F   ALTER TABLE ONLY public.advert_type DROP CONSTRAINT advert_type_pkey;
       public         postgres    false    225                       2606    17162    alert alert_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.alert
    ADD CONSTRAINT alert_pkey PRIMARY KEY (alert_id);
 :   ALTER TABLE ONLY public.alert DROP CONSTRAINT alert_pkey;
       public         postgres    false    238            S           2606    16748    auth_type auth_type_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.auth_type
    ADD CONSTRAINT auth_type_pkey PRIMARY KEY (auth_type_id);
 B   ALTER TABLE ONLY public.auth_type DROP CONSTRAINT auth_type_pkey;
       public         postgres    false    200            a           2606    33163    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public         postgres    false    213            4           2606    16817    chat chat_check    CHECK CONSTRAINT     e   ALTER TABLE public.chat
    ADD CONSTRAINT chat_check CHECK ((advertiser_id <> guest_id)) NOT VALID;
 4   ALTER TABLE public.chat DROP CONSTRAINT chat_check;
       public       postgres    false    209    209    209    209            ]           2606    16806    chat chat_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.chat
    ADD CONSTRAINT chat_pkey PRIMARY KEY (chat_id);
 8   ALTER TABLE ONLY public.chat DROP CONSTRAINT chat_pkey;
       public         postgres    false    209            {           2606    17112    chat_state chat_state_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.chat_state
    ADD CONSTRAINT chat_state_pkey PRIMARY KEY (chat_state_id);
 D   ALTER TABLE ONLY public.chat_state DROP CONSTRAINT chat_state_pkey;
       public         postgres    false    235            s           2606    41394    city city_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_name_key UNIQUE (city_name);
 <   ALTER TABLE ONLY public.city DROP CONSTRAINT city_name_key;
       public         postgres    false    231            u           2606    17042    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public         postgres    false    231            e           2606    16907    advert_condition condition_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.advert_condition
    ADD CONSTRAINT condition_pkey PRIMARY KEY (condition_id);
 I   ALTER TABLE ONLY public.advert_condition DROP CONSTRAINT condition_pkey;
       public         postgres    false    217            }           2606    17140    evaluation evaluation_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT evaluation_pkey PRIMARY KEY (evaluation_id);
 D   ALTER TABLE ONLY public.evaluation DROP CONSTRAINT evaluation_pkey;
       public         postgres    false    237            �           2606    33198    form_field form_field_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.form_field
    ADD CONSTRAINT form_field_pkey PRIMARY KEY (form_field_id);
 D   ALTER TABLE ONLY public.form_field DROP CONSTRAINT form_field_pkey;
       public         postgres    false    247            _           2606    16828    message message_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (message_id);
 >   ALTER TABLE ONLY public.message DROP CONSTRAINT message_pkey;
       public         postgres    false    211            c           2606    16888 $   message_type message_type_table_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.message_type
    ADD CONSTRAINT message_type_table_pkey PRIMARY KEY (message_type_id);
 N   ALTER TABLE ONLY public.message_type DROP CONSTRAINT message_type_table_pkey;
       public         postgres    false    215            q           2606    17034    district region_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.district
    ADD CONSTRAINT region_pkey PRIMARY KEY (district_id);
 >   ALTER TABLE ONLY public.district DROP CONSTRAINT region_pkey;
       public         postgres    false    229            i           2606    16937    report report_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_pkey PRIMARY KEY (report_id);
 <   ALTER TABLE ONLY public.report DROP CONSTRAINT report_pkey;
       public         postgres    false    221            k           2606    16948    report_type report_type_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.report_type
    ADD CONSTRAINT report_type_pkey PRIMARY KEY (report_type_id);
 F   ALTER TABLE ONLY public.report_type DROP CONSTRAINT report_type_pkey;
       public         postgres    false    223            Y           2606    17247     session session_access_token_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_access_token_key UNIQUE (access_token);
 J   ALTER TABLE ONLY public.session DROP CONSTRAINT session_access_token_key;
       public         postgres    false    206            [           2606    16784    session session_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (session_id);
 >   ALTER TABLE ONLY public.session DROP CONSTRAINT session_pkey;
       public         postgres    false    206            �           2606    17193    social_media social_media_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.social_media
    ADD CONSTRAINT social_media_pkey PRIMARY KEY (social_media_id);
 H   ALTER TABLE ONLY public.social_media DROP CONSTRAINT social_media_pkey;
       public         postgres    false    242            w           2606    17085    store store_owner_id_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_owner_id_key UNIQUE (owner_id);
 B   ALTER TABLE ONLY public.store DROP CONSTRAINT store_owner_id_key;
       public         postgres    false    233            y           2606    17083    store store_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (store_id);
 :   ALTER TABLE ONLY public.store DROP CONSTRAINT store_pkey;
       public         postgres    false    233            O           2606    17234 #   user_account user_account_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_email_key UNIQUE (email);
 M   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_email_key;
       public         postgres    false    197            Q           2606    16732    user_account user_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 @   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_pkey;
       public         postgres    false    197            �           2606    33201 "   advert advert_advert_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advert
    ADD CONSTRAINT advert_advert_state_id_fkey FOREIGN KEY (advert_state_id) REFERENCES public.advert_state(advert_state_id);
 L   ALTER TABLE ONLY public.advert DROP CONSTRAINT advert_advert_state_id_fkey;
       public       postgres    false    219    2927    227            �           2606    33206 !   advert advert_advert_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advert
    ADD CONSTRAINT advert_advert_type_id_fkey FOREIGN KEY (advert_type_id) REFERENCES public.advert_type(advert_type_id);
 K   ALTER TABLE ONLY public.advert DROP CONSTRAINT advert_advert_type_id_fkey;
       public       postgres    false    219    2925    225            �           2606    16994     advert advert_advertiser_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advert
    ADD CONSTRAINT advert_advertiser_id_fkey FOREIGN KEY (advertiser_id) REFERENCES public.user_account(user_id);
 J   ALTER TABLE ONLY public.advert DROP CONSTRAINT advert_advertiser_id_fkey;
       public       postgres    false    219    197    2897            �           2606    33179    advert advert_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advert
    ADD CONSTRAINT advert_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id);
 H   ALTER TABLE ONLY public.advert DROP CONSTRAINT advert_category_id_fkey;
       public       postgres    false    2913    219    213            �           2606    17058    advert advert_city_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.advert
    ADD CONSTRAINT advert_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.city(city_id);
 D   ALTER TABLE ONLY public.advert DROP CONSTRAINT advert_city_id_fkey;
       public       postgres    false    219    2933    231            �           2606    17063    advert advert_condition_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advert
    ADD CONSTRAINT advert_condition_id_fkey FOREIGN KEY (condition_id) REFERENCES public.advert_condition(condition_id);
 I   ALTER TABLE ONLY public.advert DROP CONSTRAINT advert_condition_id_fkey;
       public       postgres    false    2917    217    219            �           2606    17163    alert alert_owner_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alert
    ADD CONSTRAINT alert_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.user_account(user_id);
 C   ALTER TABLE ONLY public.alert DROP CONSTRAINT alert_owner_id_fkey;
       public       postgres    false    197    2897    238            �           2606    16756    user_account auth_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT auth_type_id_fkey FOREIGN KEY (auth_type_id) REFERENCES public.auth_type(auth_type_id);
 H   ALTER TABLE ONLY public.user_account DROP CONSTRAINT auth_type_id_fkey;
       public       postgres    false    200    2899    197            �           2606    33169 .   category_field category_field_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.category_field
    ADD CONSTRAINT category_field_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id);
 X   ALTER TABLE ONLY public.category_field DROP CONSTRAINT category_field_category_id_fkey;
       public       postgres    false    2913    213    246            �           2606    33164     category category_parent_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.category(category_id);
 J   ALTER TABLE ONLY public.category DROP CONSTRAINT category_parent_id_fkey;
       public       postgres    false    2913    213    213            �           2606    16807    chat chat_advertiser_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat
    ADD CONSTRAINT chat_advertiser_id_fkey FOREIGN KEY (advertiser_id) REFERENCES public.user_account(user_id);
 F   ALTER TABLE ONLY public.chat DROP CONSTRAINT chat_advertiser_id_fkey;
       public       postgres    false    2897    197    209            �           0    0 *   CONSTRAINT chat_advertiser_id_fkey ON chat    COMMENT     Q   COMMENT ON CONSTRAINT chat_advertiser_id_fkey ON public.chat IS 'advertiser id';
            public       postgres    false    2954            �           2606    17113    chat chat_chat_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat
    ADD CONSTRAINT chat_chat_state_id_fkey FOREIGN KEY (chat_state_id) REFERENCES public.chat_state(chat_state_id);
 F   ALTER TABLE ONLY public.chat DROP CONSTRAINT chat_chat_state_id_fkey;
       public       postgres    false    2939    209    235            �           2606    16812    chat chat_guest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chat
    ADD CONSTRAINT chat_guest_id_fkey FOREIGN KEY (guest_id) REFERENCES public.user_account(user_id);
 A   ALTER TABLE ONLY public.chat DROP CONSTRAINT chat_guest_id_fkey;
       public       postgres    false    2897    197    209            �           0    0 %   CONSTRAINT chat_guest_id_fkey ON chat    COMMENT     L   COMMENT ON CONSTRAINT chat_guest_id_fkey ON public.chat IS 'guest user id';
            public       postgres    false    2955            �           2606    17043    city city_region_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_region_id_fkey FOREIGN KEY (district_id) REFERENCES public.district(district_id);
 B   ALTER TABLE ONLY public.city DROP CONSTRAINT city_region_id_fkey;
       public       postgres    false    231    2929    229            �           2606    17141 (   evaluation evaluation_advertiser_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT evaluation_advertiser_id_fkey FOREIGN KEY (advertiser_id) REFERENCES public.user_account(user_id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.evaluation DROP CONSTRAINT evaluation_advertiser_id_fkey;
       public       postgres    false    2897    237    197            �           2606    17146 #   evaluation evaluation_guest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT evaluation_guest_id_fkey FOREIGN KEY (guest_id) REFERENCES public.user_account(user_id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.evaluation DROP CONSTRAINT evaluation_guest_id_fkey;
       public       postgres    false    237    197    2897            �           2606    17127     favorite favorite_advert_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.favorite
    ADD CONSTRAINT favorite_advert_id_fkey FOREIGN KEY (advert_id) REFERENCES public.advert(advert_id);
 J   ALTER TABLE ONLY public.favorite DROP CONSTRAINT favorite_advert_id_fkey;
       public       postgres    false    236    2919    219            �           2606    17122    favorite favorite_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.favorite
    ADD CONSTRAINT favorite_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 H   ALTER TABLE ONLY public.favorite DROP CONSTRAINT favorite_user_id_fkey;
       public       postgres    false    236    2897    197            �           2606    16793    follow fk_follower_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.follow
    ADD CONSTRAINT fk_follower_user_id FOREIGN KEY (follower_id) REFERENCES public.user_account(user_id);
 D   ALTER TABLE ONLY public.follow DROP CONSTRAINT fk_follower_user_id;
       public       postgres    false    207    2897    197            �           0    0 (   CONSTRAINT fk_follower_user_id ON follow    COMMENT     M   COMMENT ON CONSTRAINT fk_follower_user_id ON public.follow IS 'follower id';
            public       postgres    false    2953            �           2606    16788    follow fk_user_id    FK CONSTRAINT     |   ALTER TABLE ONLY public.follow
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 ;   ALTER TABLE ONLY public.follow DROP CONSTRAINT fk_user_id;
       public       postgres    false    197    2897    207            �           0    0    CONSTRAINT fk_user_id ON follow    COMMENT     L   COMMENT ON CONSTRAINT fk_user_id ON public.follow IS 'followed user''s id';
            public       postgres    false    2952            �           2606    16889 $   message message_message_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_message_type_id_fkey FOREIGN KEY (message_type_id) REFERENCES public.message_type(message_type_id);
 N   ALTER TABLE ONLY public.message DROP CONSTRAINT message_message_type_id_fkey;
       public       postgres    false    211    215    2915            �           2606    16839    message message_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 F   ALTER TABLE ONLY public.message DROP CONSTRAINT message_user_id_fkey;
       public       postgres    false    211    2897    197            �           2606    16954    report report_advert_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_advert_id_fkey FOREIGN KEY (advert_id) REFERENCES public.advert(advert_id);
 F   ALTER TABLE ONLY public.report DROP CONSTRAINT report_advert_id_fkey;
       public       postgres    false    219    221    2919            �           2606    16949 !   report report_report_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_report_type_id_fkey FOREIGN KEY (report_type_id) REFERENCES public.report_type(report_type_id);
 K   ALTER TABLE ONLY public.report DROP CONSTRAINT report_report_type_id_fkey;
       public       postgres    false    2923    223    221            �           2606    16959    report report_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 D   ALTER TABLE ONLY public.report DROP CONSTRAINT report_user_id_fkey;
       public       postgres    false    197    2897    221            �           2606    33174    search search_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id);
 H   ALTER TABLE ONLY public.search DROP CONSTRAINT search_category_id_fkey;
       public       postgres    false    213    245    2913            �           2606    17217    search search_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.search
    ADD CONSTRAINT search_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 D   ALTER TABLE ONLY public.search DROP CONSTRAINT search_user_id_fkey;
       public       postgres    false    245    197    2897            �           2606    16895    session session_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 F   ALTER TABLE ONLY public.session DROP CONSTRAINT session_user_id_fkey;
       public       postgres    false    206    2897    197            �           2606    17176    share share_advert_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.share
    ADD CONSTRAINT share_advert_id_fkey FOREIGN KEY (advert_id) REFERENCES public.advert(advert_id);
 D   ALTER TABLE ONLY public.share DROP CONSTRAINT share_advert_id_fkey;
       public       postgres    false    240    219    2919            �           2606    17181    share share_guest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.share
    ADD CONSTRAINT share_guest_id_fkey FOREIGN KEY (guest_id) REFERENCES public.user_account(user_id);
 C   ALTER TABLE ONLY public.share DROP CONSTRAINT share_guest_id_fkey;
       public       postgres    false    2897    197    240            �           2606    17194     share share_social_media_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.share
    ADD CONSTRAINT share_social_media_id_fkey FOREIGN KEY (social_media_id) REFERENCES public.social_media(social_media_id);
 J   ALTER TABLE ONLY public.share DROP CONSTRAINT share_social_media_id_fkey;
       public       postgres    false    242    240    2945            �           2606    17086    store store_owner_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.user_account(user_id);
 C   ALTER TABLE ONLY public.store DROP CONSTRAINT store_owner_id_fkey;
       public       postgres    false    197    2897    233            �           2606    17068    user_account user_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.city(city_id);
 H   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_city_id_fkey;
       public       postgres    false    2933    197    231            �           2606    16736    phone user_id    FK CONSTRAINT     x   ALTER TABLE ONLY public.phone
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 7   ALTER TABLE ONLY public.phone DROP CONSTRAINT user_id;
       public       postgres    false    2897    198    197            �           2606    17208 (   verified_user verified_user_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verified_user
    ADD CONSTRAINT verified_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(user_id);
 R   ALTER TABLE ONLY public.verified_user DROP CONSTRAINT verified_user_user_id_fkey;
       public       postgres    false    2897    197    244            &   1   x�3�LL.�,K,IM�2��3��t�RK3���Ɯ)�ŉI9@f� �_%      (      x�3�,JM/�I,�2�,(������ Dnu      7   �
  x��]�r�8}����gG���ͱ�j�x�xIM�xh	��I5I��N�j^�	�����|�\��m-L���83�J��py��H)���ib|�����h�����z8�{y�zg��9B�#�W�"��8 4��#��ے��yz��l^�8x�z����e��B
���F&-�f����aJ0CJa�F�����fq9�ϓ0��0����l5j(̤��2I��m�T#�a���T�_��h��hi���x�n�O-��B#�]���7��7Y�L�w�$��I
�O���ϝ������5Xc��Mu@eG͛�H�G�#A�PB#�'O�cu�+�8��	��0�t�	� ���_����,���-���b�r	B��x��������&�jT�zj�|���w�*����� ̽
<�s����c�[��`�ݳ�v8��vB����aQ,��H"����7�FVC��<�TK�+�h��:i%x�&��gq����>����� (�"(2ӿ�,Ye�� A�%<� � �h��p�9e�)� ��6�['����j#��d�!�3�2J�N=�:�r;��ZĊ8� .�R�f�l�1�I :��ӡR'�!{0��T�+04�1#���Vڼ�a�K��ǳ}��[���V�z4S�h��M����'��e����Z�Za*
<m�'Ѫ3��T�Y�a�����=<������%2y:ky��+�z�^��X��K�m� à7�c����8�Tb)0�-�u��/�`\z��� ����I[pu|�IV���z�[�j�^^��U~��Q'g�/25o�?8�e��̔z�L&%��`>�	!Y��e������.�j1`�SG[+^��$��p^���0n��2S��\F�	z�x.ڱ�HI5x�殘��UHc6�&f^'�i��Fs��2V!D��}��A��~��\]?��\0Gg�/25o�X��H���H�Q�E�����o��F��mءA���[kYbM�`���I�g���;�xi�%q	�jz�rv������&�#Q
"��0�'0�`L�6A�:i͐�)����8.8F-�X'�	k��k�$jo���4DIX�I�Ӭ�G0L{	��^�3
��kw����aEDT���X#�k-8Q0��Z*L���M�� �5�Z�5��l G���"���^w������Ӯ�=��O�Nz��ϻ������*r��{>�L8��ϟ�K~����6��(���~��ye&���"�Ⰸ~�؂'������BcS��0�U���^ L������ڿ���4���i�����aԷu��^Ey�&g�����Dud��af"h�\���a-ϒ�ݟz;�{�c8L�:j����{k��1.+���:��&6I���xzۏJż����b�A�v������������I��]�8�@5 �,�V݆V%��dgɛ,�#8�V�Vv:)l7��|(��ӧya�<�S�\�`jI��O�oz{{�����mϛ^��U��k�� �zN�|����*��ч���8�/w�]�&T�O������󣆌S X�\�6a�Mo�Jw���v�����O?���N��MV�Ǡ��_j��mk��Oom���f�(��Ơ��m��q�G�-�"���ۓ�cW�?�Yϡq:����{ЌË�������_&��n���d0�wW��yQޑ�2�9VZ���*~���{t�;>�uu�D�����Iյ8��G������&�w3��V��7k~wv ��,\����0���Q����?��?@���@�u��
���4���h.U��R)s��N:��|V�PS�[�r�)�S�8Nq��8�q�㔗�)�V�u�l�b��	�Hɨ�n����vu��W�N9<�����Tz@-�~�[T�/���͕�r>�����A�.V-8c�����!�C4Q�����Q��#� ^��I�k����Q�	�#�8mѤ:a��5�Z�I��ՃQ�eE�;��p������;z�4M��/̮�q�Q�3���P�2]#`9��W����k�;јat+��b�bѰNX�]DSf�"�©���j���)0����Χl�����;uZ}3�ry5Z[oS����l���o��u�<�s��e:��\�W�n��M-�|a��.:�J7ߨO$ךا�%�M�-����0�G8QTHSD�yd��V����~����f\z)p����q�Ĺ�J�+�Z��.r�يٗ�����q6�3�%+�b�p%u�~��]M��E��v�8L,� ��G�
 ���\�s)Υ8���.��?Fl���A�7A%��l`(7�U�7��A�l0����9[��I9�r$�I� �����Hs�%�bޚ��T�8�q���y��e��/qw�8�q�㠯�ATLv�B������a�EV\+�V�x1�P�:Bu���*����P�o�6���t����#�g'TP0�!T*��m�߇PekB��L� 	�?���}j��U��Ń��f���̘�j�z���
pd_)$���r���lm�y�p�������gyGi@m��'�$k?������T�Q�&�h^�~������v��qP��Ѫ�7m\Y3Ě��AJ�&�2�O�B��5T'�����
��L�W�* ��a|E��+�'����i>S4��г� �����o��q,k�J����#�L����8Y���E�������s�Y�Tu	j�\�R�K��(ണ�a��b�e��so{r���'Y#��l+[EW��w$gѹV�u666�~�6      5      x�3��K-�2�,-NM����� ,$-      ?   &   x�3������K�2��OK��9SRsRKRS�b���� �5	�      =   Y   x����0���$~
 '!$��N���F�D4�L's�he�ɡ���L42��x��G�]!i�(��|o�1���Y:4(3�
�[�      J      x������ � �      $   )   x�3�L�M���2�L��O�I�2�LKLNM�������� �7	7      1   �  x�uVKr�6]�O�8)�o-���pJ�I�j�X	�p�� U����r�Q����$�F$�I�\2��?�~�s�^���s)�?�%�"�
4��;�/�0��090�x�-(�)��0��}s�u)*�s����A�ʸ*u֜r�+A���)��p[�X�������2Q�@V]W*5t�7k#�"YE�3v^\�f�����w4�4`����_�����x���Q�;�p�*jc�R��!z��a��sx������:�>r+�W��3ԛ��C�:�� v
S�Eץ��h��%�[;�)���Be_�rpīT��쌑�q�nj>Ǳ���ۉ�r�yw�9Lp/3���	���e�-�%M�h3�!!Q�^⨒�q��;�\j��NRYU�h�:ұ�3(W�j�T�!�KZH$��������*Ɨѩ[Y��X���b�&���G�j�pSැ���UW�.�@���wE�E����`���I�Q��ci�Vt;�?�2��Gǁ�0Z���a�(x2�̍r�jN�jU��O�ȃ\BݢhUف�3y����Teݮ�Ն�ՙ)ʛ9j
{��^���3��<��v<3r���Arğg�f�ZI���'�Y�l{܎�(��A���A�w�����F����Y�>Ĥ��_aL��i׍�~����D�\g�a�����c�F�Γ+�H���ek�4'$��CvO! ����/9�]���D�Y�4HPQ������ұ<6�c�&�xDM�|Ϣ�vYoR+�@�M&]l�Q�hO<�®I�KTݐ�3x(_D���$+KO�tω�:�$����ߺ�|���z}#G\#����S� fA��9U�ʡF�r��N�Sa��.&0niG��&p�@����� �����'��V�.�<֜��x`�!3Y��E�sqi���͹v���!k���SFX�?�S��P�rչ�����KW&M�*���Fuf���'*���Ԝ��,� [�jk��"�(y`��A�܃�������hNG�*=Ot@�������2�u�"���C�K�f��'fڒ���sx�)��̅J�, \�n�el����l�lwRI��(�N:����D՛9jxE�
�9�3�VK���&UXݐ�3����n�e+Y��2��#.`�Ue��X�hw"��;+@���Qt���1K���JW�/Uw��lbkvJ5�~�����˟xU(��a��7A^5|��-n�m[+��~+�=��:���)��)VN_�m��[<]�w�A�o���*X�p.���&�>��n��fs��M�|ƃp���|�$\ڕ~�_��&�W��L���}�{���sV�ˇ����{
�`�ﰿ�?z��"<�li��plv�v���l�)QG�e�ٝ�,����a������.\5�����9��uZ�L&J���-o�{\+0Q29k��aa�э0���'�w�_/..����      R      x������ � �      -      x������ � �      G       x�3�LL.�,K�2�LI�I-IM����� Y6�      C   a  x�M�Mn�0��3��R�m�˸A� MS A�
bTVH��f�k����IO�7��v#}�Dο]4��f)23qA�f�LhGCM'��cj��^T!�G���þc>�^,���kC��p}2x�/�MS�r&��u6��3Z�����i8"���t!ZR��Ղ.�.Bh�bUХ��GB+jgbU�&J& �5Vׇ&/�Ւb���L��|�ĝ��RE�Ĭ*m�B�F��tѾ�T�sB8�ܓ�|���\ �t���m�@˅�[�]� 㐂<*^�7�\H1�<{�Y�A�Ѣ���=iNK�����E���X�;;�v�0�����<KvV��r���ʡzD���l]�F�~F.֒s��� �iccD�
p�����P���d�dq�>�!&�CF��?��"ׇ;:�Oy�ȴ��E=\jzp��>�;����jd(���j�~�o�̀���|j��eM����N�\�i�Bg��4�,��Kb.	[�{�ǭl����ϣx�2���vg+��X?8�.-Pi���q(�?�\�m�d]�'�à�k��uM_�n,��5ٌ�̳��3o��~��?~^�-=~ �=?�a�?�`W"      A   �   x�=�=�@���N�0.�_)��He���B��%���7��\̵��o&�OѶh�:��R��k�K�i'�L#'�U�v�������i¬kq�%p���Q;]Y^S.��������x	���_���z�����b ���b����8k�=��J�
���ی��� >\      I      x������ � �      H      x������ � �      +      x������ � �      S   *  x��X�r�8��~
����L� �#6����v�3�s���V#���8S�.{��ȋ��:S[�U���$�_	���l��[T�{֘W_i�0b�}�E��ͫ��4yi^�Ĭ���+��-3��7���Y�eR]g���\IQ��{��Ǣ6��~���ogTC�`B֏�����b�	�[Ɍ���i]��`&1K����R�<��\)�Z�)w���4���qME��z��;���D�U/������)�vN�hF��WZ�Mo�i�%�'��_k�g���f�}b��}I�86q���sA�8qB�\�"�M\��.q=�^�'n@ܐ��ĳ�g�!�K<�x��/$�%1/,��ƾ�S�`��ɿ2�׼�Ⱥ�6EW�4رz4p��e��W��D]_zq�_}	��#�q^oV�����`���b˫��U�@L��{q������׶N7���D�߰&&�T�~�Y�U�m�?U:3Ug�f-1�ח���P����Ơ��T����8��{}���tB]�����T�hTR���!�Q�(�5�VUW��xz�+{�B*d��r��gp�-O��I��y��]t/�ֶ��m=���
�N6�뿌R�ԨS��^��C&�ޱQS��(����$b�(W��)t�3�G����e�|im0�T�;6*�{F�:r��~U+��A\��@� 6U�0,`X���a���R���� ����ူA #F�!0B`���#F� 0`�� # F � 0|`�������>0|g��bo�{�<z�Z�_�VdO���x��#S��9�G�Hn��J�\u�Q�H�'�]����oZQ)$W����L�u%���h�B0c���*1�Z��6z������v=�����1�ƚ~DK^U���i|�c��I���P~�@��TL"�8��Ŏ)�&� 1�F+��[�6� �Z��� ���8��8B(��� ��'��!DM�M�7q��o��T�H�̐U�#�/�0���q໛,��Z^��y<�L�$��ͶU{�`�I�i�� �'(�'���f�^DSQ��*K'����:M�� ��n��ЩQ��f�>��<�cP ��Z�4�3N���D����bW|�ㅎ`l���3��[�MM�T�&t� �F�-� 5G���gwP���4ZY/u��k0b6�#��N�$[�AD;$�t�:�1����h4E��-�ԯ(QR�<H�t�D9J��H�dx��P L})��:�3���h ��a�]���a/���ޓ�G��+,��<�f�4�-�(�s�4���%c��YU6;���e��^�n��^O�Eu؉�űXds}�u����r����K(��	iQ su`�*��\� U����C�'YF��%��j����$v�r4C[��8bψ4�u�4�����@zxB�U����R��U��`�Y�=P� ��og��=�TZ��D��k*\E��>[!�8�v���iV�w�=ΐ�,����NT��7u ����Þ��q����n#�c���#�/?�S���d���;����y�ݶ�����?����a�      /      x������ � �      3   %   x�3�,I�(�2�,�L.)-J�2�L��I����� �y�      "      x������ � �      9      x������ � �      ;   �   x�U���@Dc_[��9%����8ɷg��Y��A�6�	�`�G#�<�޶�E�4��$~�LYS�QnW�?�'������%�����;	�I��>IK=q�S��a�B!WE�L�t��-���z\��E���Ũ�٠��<�|� w��u9��$�.��54V	      Q      x������ � �      *   {  x�m�ɍ�HD�M+ځ"r���c����	d� _R:��KD$˗җ�Ēľ�^�O>�
����K���5K�����I�lV�i�r�~)���":U�h�A2ux�5�Im�>�$�6V�Ju���Y��%~�P���W��z�3ٚ�Z!M�(�mi�~������}ZS��niɈ$5����*�y��Ο ���\#���c̱��d��J҈�2���W��)��Ӛ.W)�c�%�@��C4��B����oB9�|�G���g�5Ug�x��~T��r�(>A�a��q?�����U��E�3�$�*�%m�y���/���fd7��&�.O"K�)��i��s���������
�Ե�y�B��i��t�=x������'���Ɏ��ZM
�ia��#�nJR�,G���!�����|f��o���"�c�%��+E�kM��H�����g��>w��hm���	�F�:�C��z��BFOE���v4ĵ'k2К�4�,�HW=$������N����g��������J��T��R4_;)� ���iA.��>jMcZ���F��I�yv�&��/�3�g�{G�%�U����ؽ�y #]6�uH|���)L���q���1�_R�8�ԩ������b�<_�'	y}9��y��f(����6�j�culM_�]�bqq�gk�<�^�|���lO��M'�����Rh�4E&���k�e1a{}��1plB���7�-l���Y�'��ję8�z�7�)�#��5#��W]�o$ѭ"B�!Q��2�D��1j�wVGK�L�+#)F���x
����X}N��ڲ���Q��p���[��2���i�cs��6�2�>r�e�.���?�*�E�Va�y�}hy��i���'�ܼ<��ak�@�ص�+��ڡ������p⳴���PkX>����*�!����=!�$8*z@�����P�-G�h� b]BhA ��� �'�VQ���#Ǒ�)�z���TIr��w}���o��4��NУ�e��[�rW�c�p��5���ʇ��'D�G)%~��l���J�}��Ԛ߷vlj�@r���ʷ�"��N��gF�Ƙ�ĆA���ԼzB�Ιs(��s��/�GZ      L      x������ � �      N   -   x�3�LKLNM����2�,�H,)N,(�2�,)�,)I-����� �-      E   3   x�3����v�46��񃢼��T.#NGO�`NcC�LbJfJb1W� y�)      !   �   x����N�0 ��3<����4�Q��MT��SJU�0����%f�����(r
Y[��殺��:�4��-���ZRp6��@�t#G�[^]�����2�T�*PT(������X�Ͼr<�=�{/���x��pR_:?�V�q�m�%۴�#�8���E�f�k��v��K�I��gޕ���hs�jМ���rHd�{�����G�K�X2Kʰߦ��&Y�̇_�����$m      P      x������ � �      K      x������ � �     