--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django_login;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django_login;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django_login;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django_login;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django_login;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django_login;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django_login;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django_login;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django_login;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django_login;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django_login;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django_login;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: cms_cmsplugin; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_cmsplugin (
    language character varying(15) NOT NULL,
    "position" smallint,
    creation_date timestamp with time zone NOT NULL,
    id integer NOT NULL,
    plugin_type character varying(50) NOT NULL,
    parent_id integer,
    tree_id integer DEFAULT 0 NOT NULL,
    lft integer DEFAULT 0 NOT NULL,
    rght integer DEFAULT 0 NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    placeholder_id integer,
    changed_date timestamp with time zone NOT NULL,
    CONSTRAINT cms_cmsplugin_level_check CHECK ((level >= 0)),
    CONSTRAINT cms_cmsplugin_lft_check CHECK ((lft >= 0)),
    CONSTRAINT cms_cmsplugin_rght_check CHECK ((rght >= 0)),
    CONSTRAINT cms_cmsplugin_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.cms_cmsplugin OWNER TO django_login;

--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_cmsplugin_id_seq OWNER TO django_login;

--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_cmsplugin_id_seq OWNED BY cms_cmsplugin.id;


--
-- Name: cms_content; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_content (
    id integer NOT NULL,
    menu_id integer,
    title character varying(750) NOT NULL,
    keywords character varying(750) NOT NULL,
    description character varying(750) NOT NULL,
    h1 character varying(750) NOT NULL,
    body text NOT NULL,
    published timestamp with time zone,
    updated timestamp with time zone,
    tags text NOT NULL
);


ALTER TABLE public.cms_content OWNER TO django_login;

--
-- Name: cms_en_content; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_en_content (
    id integer NOT NULL,
    menu_id integer,
    title character varying(750) NOT NULL,
    keywords character varying(750) NOT NULL,
    description character varying(750) NOT NULL,
    h1 character varying(750) NOT NULL,
    body text NOT NULL,
    published timestamp with time zone,
    updated timestamp with time zone,
    tags text NOT NULL
);


ALTER TABLE public.cms_en_content OWNER TO django_login;

--
-- Name: cms_en_form_serviceorder; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_en_form_serviceorder (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    type character varying(150) NOT NULL,
    params character varying(150) NOT NULL,
    order_by integer,
    required integer
);


ALTER TABLE public.cms_en_form_serviceorder OWNER TO django_login;

--
-- Name: cms_en_menu; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_en_menu (
    id integer NOT NULL,
    menu_id integer,
    menu_title character varying(750) NOT NULL,
    menu_uri character varying(750) NOT NULL,
    menu_parent_id integer,
    visible integer,
    order_by integer,
    module character varying(750) NOT NULL
);


ALTER TABLE public.cms_en_menu OWNER TO django_login;

--
-- Name: cms_en_module_publications; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_en_module_publications (
    id integer NOT NULL,
    menu_id integer NOT NULL,
    title character varying(750) NOT NULL,
    announce text NOT NULL,
    body text NOT NULL,
    published timestamp with time zone,
    updated timestamp with time zone,
    vip integer NOT NULL
);


ALTER TABLE public.cms_en_module_publications OWNER TO django_login;

--
-- Name: cms_en_texts; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_en_texts (
    id integer NOT NULL,
    text_id integer,
    text_body text NOT NULL
);


ALTER TABLE public.cms_en_texts OWNER TO django_login;

--
-- Name: cms_form_serviceorder; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_form_serviceorder (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    type character varying(150) NOT NULL,
    params character varying(150) NOT NULL,
    order_by integer,
    required integer
);


ALTER TABLE public.cms_form_serviceorder OWNER TO django_login;

--
-- Name: cms_form_serviceorder2; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_form_serviceorder2 (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    type character varying(150) NOT NULL,
    params character varying(150) NOT NULL,
    order_by integer,
    required integer
);


ALTER TABLE public.cms_form_serviceorder2 OWNER TO django_login;

--
-- Name: cms_globalpagepermission; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_globalpagepermission (
    can_publish boolean NOT NULL,
    group_id integer,
    can_moderate boolean NOT NULL,
    can_change boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_recover_page boolean NOT NULL,
    can_add boolean NOT NULL,
    user_id integer,
    can_delete boolean NOT NULL,
    can_move_page boolean NOT NULL,
    id integer NOT NULL,
    can_change_advanced_settings boolean DEFAULT false NOT NULL,
    can_view boolean NOT NULL
);


ALTER TABLE public.cms_globalpagepermission OWNER TO django_login;

--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_globalpagepermission_id_seq OWNER TO django_login;

--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_globalpagepermission_id_seq OWNED BY cms_globalpagepermission.id;


--
-- Name: cms_globalpagepermission_sites; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.cms_globalpagepermission_sites OWNER TO django_login;

--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_globalpagepermission_sites_id_seq OWNER TO django_login;

--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_globalpagepermission_sites_id_seq OWNED BY cms_globalpagepermission_sites.id;


--
-- Name: cms_menu; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_menu (
    id integer NOT NULL,
    menu_id integer,
    menu_title character varying(750) NOT NULL,
    menu_uri character varying(750) NOT NULL,
    menu_parent_id integer,
    visible integer,
    order_by integer,
    module character varying(750) NOT NULL
);


ALTER TABLE public.cms_menu OWNER TO django_login;

--
-- Name: cms_module_clients; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_module_clients (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    announce text NOT NULL,
    body text NOT NULL,
    order_by integer,
    published timestamp with time zone,
    logo character varying(150) NOT NULL
);


ALTER TABLE public.cms_module_clients OWNER TO django_login;

--
-- Name: cms_module_faq; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_module_faq (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    question text NOT NULL,
    published timestamp with time zone,
    answer text NOT NULL,
    updated timestamp with time zone,
    status integer,
    order_by integer
);


ALTER TABLE public.cms_module_faq OWNER TO django_login;

--
-- Name: cms_module_gallery; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_module_gallery (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    description text NOT NULL,
    published timestamp with time zone,
    updated timestamp with time zone,
    order_by integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.cms_module_gallery OWNER TO django_login;

--
-- Name: cms_module_gallerygroups; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_module_gallerygroups (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    order_by integer NOT NULL,
    published timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.cms_module_gallerygroups OWNER TO django_login;

--
-- Name: cms_module_news; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_module_news (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    announce text NOT NULL,
    body text NOT NULL,
    published timestamp with time zone,
    updated timestamp with time zone
);


ALTER TABLE public.cms_module_news OWNER TO django_login;

--
-- Name: cms_module_publications; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_module_publications (
    id integer NOT NULL,
    menu_id integer NOT NULL,
    title character varying(750) NOT NULL,
    announce text NOT NULL,
    body text NOT NULL,
    published timestamp with time zone,
    updated timestamp with time zone,
    vip integer NOT NULL
);


ALTER TABLE public.cms_module_publications OWNER TO django_login;

--
-- Name: cms_module_spo; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_module_spo (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    body text NOT NULL,
    order_by integer,
    published timestamp with time zone
);


ALTER TABLE public.cms_module_spo OWNER TO django_login;

--
-- Name: cms_page; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_page (
    rght integer NOT NULL,
    level integer NOT NULL,
    navigation_extenders character varying(80),
    parent_id integer,
    reverse_id character varying(40),
    login_required boolean NOT NULL,
    soft_root boolean NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    publication_end_date timestamp with time zone,
    template character varying(100) NOT NULL,
    tree_id integer NOT NULL,
    publication_date timestamp with time zone,
    in_navigation boolean NOT NULL,
    id integer NOT NULL,
    moderator_state smallint DEFAULT 1 NOT NULL,
    published boolean DEFAULT false NOT NULL,
    site_id integer DEFAULT 1 NOT NULL,
    changed_by character varying(70) DEFAULT ''::character varying NOT NULL,
    created_by character varying(70) DEFAULT ''::character varying NOT NULL,
    publisher_is_draft boolean DEFAULT true NOT NULL,
    publisher_state smallint DEFAULT 0 NOT NULL,
    publisher_public_id integer,
    limit_visibility_in_menu smallint,
    changed_date timestamp with time zone NOT NULL,
    CONSTRAINT cms_page_level_check CHECK ((level >= 0)),
    CONSTRAINT cms_page_lft_check CHECK ((lft >= 0)),
    CONSTRAINT cms_page_rght_check CHECK ((rght >= 0)),
    CONSTRAINT cms_page_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.cms_page OWNER TO django_login;

--
-- Name: cms_page_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_page_id_seq OWNER TO django_login;

--
-- Name: cms_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_page_id_seq OWNED BY cms_page.id;


--
-- Name: cms_page_placeholders; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);


ALTER TABLE public.cms_page_placeholders OWNER TO django_login;

--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_page_placeholders_id_seq OWNER TO django_login;

--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_page_placeholders_id_seq OWNED BY cms_page_placeholders.id;


--
-- Name: cms_pagemoderator; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_pagemoderator (
    moderate_page boolean NOT NULL,
    moderate_children boolean NOT NULL,
    page_id integer NOT NULL,
    user_id integer NOT NULL,
    id integer NOT NULL,
    moderate_descendants boolean NOT NULL
);


ALTER TABLE public.cms_pagemoderator OWNER TO django_login;

--
-- Name: cms_pagemoderator_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_pagemoderator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_pagemoderator_id_seq OWNER TO django_login;

--
-- Name: cms_pagemoderator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_pagemoderator_id_seq OWNED BY cms_pagemoderator.id;


--
-- Name: cms_pagemoderatorstate; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_pagemoderatorstate (
    created timestamp with time zone NOT NULL,
    page_id integer NOT NULL,
    user_id integer,
    action character varying(3),
    message text NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.cms_pagemoderatorstate OWNER TO django_login;

--
-- Name: cms_pagemoderatorstate_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_pagemoderatorstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_pagemoderatorstate_id_seq OWNER TO django_login;

--
-- Name: cms_pagemoderatorstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_pagemoderatorstate_id_seq OWNED BY cms_pagemoderatorstate.id;


--
-- Name: cms_pagepermission; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_pagepermission (
    group_id integer,
    can_publish boolean NOT NULL,
    page_id integer,
    user_id integer,
    id integer NOT NULL,
    can_delete boolean DEFAULT true NOT NULL,
    can_change_permissions boolean DEFAULT false NOT NULL,
    can_moderate boolean DEFAULT true NOT NULL,
    can_add boolean DEFAULT true NOT NULL,
    grant_on integer DEFAULT 5 NOT NULL,
    can_move_page boolean DEFAULT true NOT NULL,
    can_change boolean DEFAULT true NOT NULL,
    can_change_advanced_settings boolean DEFAULT false NOT NULL,
    can_view boolean NOT NULL
);


ALTER TABLE public.cms_pagepermission OWNER TO django_login;

--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_pagepermission_id_seq OWNER TO django_login;

--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_pagepermission_id_seq OWNED BY cms_pagepermission.id;


--
-- Name: cms_pageuser; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


ALTER TABLE public.cms_pageuser OWNER TO django_login;

--
-- Name: cms_pageusergroup; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


ALTER TABLE public.cms_pageusergroup OWNER TO django_login;

--
-- Name: cms_placeholder; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_placeholder (
    slot character varying(50) NOT NULL,
    id integer NOT NULL,
    default_width smallint,
    CONSTRAINT ck_default_width_pstv_76c57bf26c0a632a CHECK ((default_width >= 0)),
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);


ALTER TABLE public.cms_placeholder OWNER TO django_login;

--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_placeholder_id_seq OWNER TO django_login;

--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_placeholder_id_seq OWNED BY cms_placeholder.id;


--
-- Name: cms_qlinks; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_qlinks (
    id integer NOT NULL,
    title character varying(750) NOT NULL,
    menu_uri character varying(750) NOT NULL,
    order_by integer,
    size integer,
    color character varying(30) NOT NULL
);


ALTER TABLE public.cms_qlinks OWNER TO django_login;

--
-- Name: cms_texts; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_texts (
    id integer NOT NULL,
    text_id integer,
    text_body text NOT NULL
);


ALTER TABLE public.cms_texts OWNER TO django_login;

--
-- Name: cms_title; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cms_title (
    language character varying(15) NOT NULL,
    title character varying(255) NOT NULL,
    page_id integer NOT NULL,
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    slug character varying(255) NOT NULL,
    has_url_overwrite boolean DEFAULT false NOT NULL,
    application_urls character varying(200),
    redirect character varying(255),
    meta_keywords character varying(255),
    meta_description text,
    page_title character varying(255),
    menu_title character varying(255)
);


ALTER TABLE public.cms_title OWNER TO django_login;

--
-- Name: cms_title_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_title_id_seq OWNER TO django_login;

--
-- Name: cms_title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cms_title_id_seq OWNED BY cms_title.id;


--
-- Name: cmsplugin_calendarentriesplugin; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_calendarentriesplugin (
    cmsplugin_ptr_id integer NOT NULL,
    year integer,
    month integer
);


ALTER TABLE public.cmsplugin_calendarentriesplugin OWNER TO django_login;

--
-- Name: cmsplugin_contact; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_contact (
    cmsplugin_ptr_id integer NOT NULL,
    site_email character varying(75) NOT NULL,
    email_label character varying(100) NOT NULL,
    subject_label character varying(200) NOT NULL,
    content_label character varying(100) NOT NULL,
    thanks text NOT NULL,
    submit character varying(30) NOT NULL,
    spam_protection_method smallint NOT NULL,
    akismet_api_key character varying(255) NOT NULL,
    recaptcha_public_key character varying(255) NOT NULL,
    recaptcha_private_key character varying(255) NOT NULL,
    recaptcha_theme character varying(20) NOT NULL
);


ALTER TABLE public.cmsplugin_contact OWNER TO django_login;

--
-- Name: cmsplugin_customcontact; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_customcontact (
    cmsplugin_ptr_id integer NOT NULL,
    site_email character varying(75) NOT NULL,
    email_label character varying(100) NOT NULL,
    subject_label character varying(200) NOT NULL,
    content_label character varying(100) NOT NULL,
    thanks text NOT NULL,
    submit character varying(30) NOT NULL,
    spam_protection_method smallint NOT NULL,
    akismet_api_key character varying(255) NOT NULL,
    recaptcha_public_key character varying(255) NOT NULL,
    recaptcha_private_key character varying(255) NOT NULL,
    recaptcha_theme character varying(20) NOT NULL,
    name_label character varying(100) NOT NULL,
    phone_label character varying(30) NOT NULL,
    town_label character varying(30) NOT NULL
);


ALTER TABLE public.cmsplugin_customcontact OWNER TO django_login;

--
-- Name: cmsplugin_file; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_file (
    cmsplugin_ptr_id integer NOT NULL,
    file character varying(100) NOT NULL,
    title character varying(255)
);


ALTER TABLE public.cmsplugin_file OWNER TO django_login;

--
-- Name: cmsplugin_filer_image_thumbnailoption; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_filer_image_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);


ALTER TABLE public.cmsplugin_filer_image_thumbnailoption OWNER TO django_login;

--
-- Name: cmsplugin_filer_image_thumbnailoption_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cmsplugin_filer_image_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cmsplugin_filer_image_thumbnailoption_id_seq OWNER TO django_login;

--
-- Name: cmsplugin_filer_image_thumbnailoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cmsplugin_filer_image_thumbnailoption_id_seq OWNED BY cmsplugin_filer_image_thumbnailoption.id;


--
-- Name: cmsplugin_filerfolder; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_filerfolder (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255),
    view_option character varying(10) NOT NULL,
    folder_id integer NOT NULL
);


ALTER TABLE public.cmsplugin_filerfolder OWNER TO django_login;

--
-- Name: cmsplugin_filerimage; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_filerimage (
    cmsplugin_ptr_id integer NOT NULL,
    image_id integer,
    alt_text character varying(255),
    caption_text character varying(255),
    use_autoscale boolean NOT NULL,
    width integer,
    height integer,
    alignment character varying(10),
    free_link character varying(255),
    page_link_id integer,
    description text,
    image_url character varying(200),
    thumbnail_option_id integer,
    crop boolean NOT NULL,
    upscale boolean NOT NULL,
    original_link boolean NOT NULL,
    file_link_id integer,
    use_original_image boolean NOT NULL,
    target_blank boolean NOT NULL,
    CONSTRAINT cmsplugin_filerimage_height_check CHECK ((height >= 0)),
    CONSTRAINT cmsplugin_filerimage_width_check CHECK ((width >= 0))
);


ALTER TABLE public.cmsplugin_filerimage OWNER TO django_login;

--
-- Name: cmsplugin_googlemap; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_googlemap (
    city character varying(100) NOT NULL,
    title character varying(100),
    cmsplugin_ptr_id integer NOT NULL,
    zoom smallint DEFAULT 13 NOT NULL,
    content character varying(255) DEFAULT ''::character varying NOT NULL,
    address character varying(150) NOT NULL,
    zipcode character varying(30) NOT NULL,
    lng numeric(10,6),
    lat numeric(10,6),
    route_planer boolean DEFAULT false NOT NULL,
    route_planer_title character varying(150) DEFAULT 'Calculate your fastest way to here'::character varying,
    width character varying(6) NOT NULL,
    height character varying(6) NOT NULL,
    CONSTRAINT ck_zoom_pstv_5fdf4a992e0fd027 CHECK ((zoom >= 0))
);


ALTER TABLE public.cmsplugin_googlemap OWNER TO django_login;

--
-- Name: cmsplugin_latestentriesplugin; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_latestentriesplugin (
    cmsplugin_ptr_id integer NOT NULL,
    subcategories boolean NOT NULL,
    number_of_entries integer NOT NULL,
    template_to_render character varying(250) NOT NULL
);


ALTER TABLE public.cmsplugin_latestentriesplugin OWNER TO django_login;

--
-- Name: cmsplugin_link; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_link (
    url character varying(200),
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(256) NOT NULL,
    page_link_id integer,
    mailto character varying(75),
    target character varying(100) NOT NULL
);


ALTER TABLE public.cmsplugin_link OWNER TO django_login;

--
-- Name: cmsplugin_picture; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_picture (
    url character varying(255),
    image character varying(100) NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    alt character varying(255),
    page_link_id integer,
    "float" character varying(10),
    longdesc character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.cmsplugin_picture OWNER TO django_login;

--
-- Name: cmsplugin_queryentriesplugin; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_queryentriesplugin (
    cmsplugin_ptr_id integer NOT NULL,
    query character varying(250) NOT NULL,
    number_of_entries integer NOT NULL,
    template_to_render character varying(250) NOT NULL
);


ALTER TABLE public.cmsplugin_queryentriesplugin OWNER TO django_login;

--
-- Name: cmsplugin_randomentriesplugin; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_randomentriesplugin (
    cmsplugin_ptr_id integer NOT NULL,
    number_of_entries integer NOT NULL,
    template_to_render character varying(250) NOT NULL
);


ALTER TABLE public.cmsplugin_randomentriesplugin OWNER TO django_login;

--
-- Name: cmsplugin_selectedentriesplugin; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_selectedentriesplugin (
    cmsplugin_ptr_id integer NOT NULL,
    template_to_render character varying(250) NOT NULL
);


ALTER TABLE public.cmsplugin_selectedentriesplugin OWNER TO django_login;

--
-- Name: cmsplugin_snippetptr; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);


ALTER TABLE public.cmsplugin_snippetptr OWNER TO django_login;

--
-- Name: cmsplugin_teaser; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_teaser (
    description text,
    title character varying(255) NOT NULL,
    url character varying(255),
    image character varying(100),
    cmsplugin_ptr_id integer NOT NULL,
    page_link_id integer
);


ALTER TABLE public.cmsplugin_teaser OWNER TO django_login;

--
-- Name: cmsplugin_text; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_text (
    body text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL
);


ALTER TABLE public.cmsplugin_text OWNER TO django_login;

--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_zinnia_latestentriesplugin_authors (
    id integer NOT NULL,
    latestentriesplugin_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.cmsplugin_zinnia_latestentriesplugin_authors OWNER TO django_login;

--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cmsplugin_zinnia_latestentriesplugin_authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cmsplugin_zinnia_latestentriesplugin_authors_id_seq OWNER TO django_login;

--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cmsplugin_zinnia_latestentriesplugin_authors_id_seq OWNED BY cmsplugin_zinnia_latestentriesplugin_authors.id;


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_zinnia_latestentriesplugin_categories (
    id integer NOT NULL,
    latestentriesplugin_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.cmsplugin_zinnia_latestentriesplugin_categories OWNER TO django_login;

--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cmsplugin_zinnia_latestentriesplugin_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cmsplugin_zinnia_latestentriesplugin_categories_id_seq OWNER TO django_login;

--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cmsplugin_zinnia_latestentriesplugin_categories_id_seq OWNED BY cmsplugin_zinnia_latestentriesplugin_categories.id;


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_zinnia_latestentriesplugin_tags (
    id integer NOT NULL,
    latestentriesplugin_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.cmsplugin_zinnia_latestentriesplugin_tags OWNER TO django_login;

--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cmsplugin_zinnia_latestentriesplugin_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cmsplugin_zinnia_latestentriesplugin_tags_id_seq OWNER TO django_login;

--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cmsplugin_zinnia_latestentriesplugin_tags_id_seq OWNED BY cmsplugin_zinnia_latestentriesplugin_tags.id;


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE cmsplugin_zinnia_selectedentriesplugin_entries (
    id integer NOT NULL,
    selectedentriesplugin_id integer NOT NULL,
    entry_id integer NOT NULL
);


ALTER TABLE public.cmsplugin_zinnia_selectedentriesplugin_entries OWNER TO django_login;

--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE cmsplugin_zinnia_selectedentriesplugin_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cmsplugin_zinnia_selectedentriesplugin_entries_id_seq OWNER TO django_login;

--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE cmsplugin_zinnia_selectedentriesplugin_entries_id_seq OWNED BY cmsplugin_zinnia_selectedentriesplugin_entries.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO django_login;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django_login;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    user_id integer NOT NULL,
    comment_id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_comment_flags OWNER TO django_login;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_comment_flags_id_seq OWNER TO django_login;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_pk text NOT NULL,
    site_id integer NOT NULL,
    user_id integer,
    user_name character varying(50) NOT NULL,
    user_email character varying(75) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL
);


ALTER TABLE public.django_comments OWNER TO django_login;

--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_comments_id_seq OWNER TO django_login;

--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django_login;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django_login;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django_login;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO django_login;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO django_login;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: easy_thumbnails_source; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE easy_thumbnails_source (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    storage_hash character varying(40) NOT NULL
);


ALTER TABLE public.easy_thumbnails_source OWNER TO django_login;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_source_id_seq OWNER TO django_login;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE easy_thumbnails_source_id_seq OWNED BY easy_thumbnails_source.id;


--
-- Name: easy_thumbnails_thumbnail; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE easy_thumbnails_thumbnail (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL,
    storage_hash character varying(40) NOT NULL
);


ALTER TABLE public.easy_thumbnails_thumbnail OWNER TO django_login;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnail_id_seq OWNER TO django_login;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE easy_thumbnails_thumbnail_id_seq OWNED BY easy_thumbnails_thumbnail.id;


--
-- Name: filer_clipboard; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.filer_clipboard OWNER TO django_login;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboard_id_seq OWNER TO django_login;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE filer_clipboard_id_seq OWNED BY filer_clipboard.id;


--
-- Name: filer_clipboarditem; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE filer_clipboarditem (
    id integer NOT NULL,
    file_id integer NOT NULL,
    clipboard_id integer NOT NULL
);


ALTER TABLE public.filer_clipboarditem OWNER TO django_login;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboarditem_id_seq OWNER TO django_login;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE filer_clipboarditem_id_seq OWNED BY filer_clipboarditem.id;


--
-- Name: filer_file; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE filer_file (
    id integer NOT NULL,
    folder_id integer,
    file character varying(255),
    _file_size integer,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    owner_id integer,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    description text,
    is_public boolean NOT NULL,
    sha1 character varying(40) NOT NULL,
    polymorphic_ctype_id integer
);


ALTER TABLE public.filer_file OWNER TO django_login;

--
-- Name: filer_file_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_file_id_seq OWNER TO django_login;

--
-- Name: filer_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE filer_file_id_seq OWNED BY filer_file.id;


--
-- Name: filer_folder; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE filer_folder (
    id integer NOT NULL,
    parent_id integer,
    name character varying(255) NOT NULL,
    owner_id integer,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.filer_folder OWNER TO django_login;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folder_id_seq OWNER TO django_login;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE filer_folder_id_seq OWNED BY filer_folder.id;


--
-- Name: filer_folderpermission; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE filer_folderpermission (
    id integer NOT NULL,
    folder_id integer,
    type smallint NOT NULL,
    user_id integer,
    group_id integer,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint
);


ALTER TABLE public.filer_folderpermission OWNER TO django_login;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folderpermission_id_seq OWNER TO django_login;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE filer_folderpermission_id_seq OWNED BY filer_folderpermission.id;


--
-- Name: filer_image; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64)
);


ALTER TABLE public.filer_image OWNER TO django_login;

--
-- Name: menus_cachekey; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);


ALTER TABLE public.menus_cachekey OWNER TO django_login;

--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menus_cachekey_id_seq OWNER TO django_login;

--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE menus_cachekey_id_seq OWNED BY menus_cachekey.id;


--
-- Name: snippet_snippet; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(50) NOT NULL
);


ALTER TABLE public.snippet_snippet OWNER TO django_login;

--
-- Name: snippet_snippet_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.snippet_snippet_id_seq OWNER TO django_login;

--
-- Name: snippet_snippet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE snippet_snippet_id_seq OWNED BY snippet_snippet.id;


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.south_migrationhistory OWNER TO django_login;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.south_migrationhistory_id_seq OWNER TO django_login;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: tagging_tag; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE tagging_tag (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.tagging_tag OWNER TO django_login;

--
-- Name: tagging_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE tagging_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tagging_tag_id_seq OWNER TO django_login;

--
-- Name: tagging_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE tagging_tag_id_seq OWNED BY tagging_tag.id;


--
-- Name: tagging_taggeditem; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE tagging_taggeditem (
    id integer NOT NULL,
    tag_id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_id integer NOT NULL,
    CONSTRAINT tagging_taggeditem_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.tagging_taggeditem OWNER TO django_login;

--
-- Name: tagging_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE tagging_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tagging_taggeditem_id_seq OWNER TO django_login;

--
-- Name: tagging_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE tagging_taggeditem_id_seq OWNED BY tagging_taggeditem.id;


--
-- Name: zinnia_category; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE zinnia_category (
    slug character varying(255) NOT NULL,
    description text NOT NULL,
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    parent_id integer,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    title_ru character varying(255),
    title_en character varying(255),
    description_ru text,
    description_en text,
    title_zh_cn character varying(255),
    description_zh_cn text,
    CONSTRAINT ck_level_pstv_2defc3078550b0a8 CHECK ((level >= 0)),
    CONSTRAINT ck_lft_pstv_5a7e18a2078ca802 CHECK ((lft >= 0)),
    CONSTRAINT ck_rght_pstv_7385a7b3d63fbe70 CHECK ((rght >= 0)),
    CONSTRAINT ck_tree_id_pstv_72d54362966174e0 CHECK ((tree_id >= 0)),
    CONSTRAINT zinnia_category_level_check CHECK ((level >= 0)),
    CONSTRAINT zinnia_category_lft_check CHECK ((lft >= 0)),
    CONSTRAINT zinnia_category_rght_check CHECK ((rght >= 0)),
    CONSTRAINT zinnia_category_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.zinnia_category OWNER TO django_login;

--
-- Name: zinnia_category_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE zinnia_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zinnia_category_id_seq OWNER TO django_login;

--
-- Name: zinnia_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE zinnia_category_id_seq OWNED BY zinnia_category.id;


--
-- Name: zinnia_entry; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE zinnia_entry (
    status integer NOT NULL,
    last_update timestamp with time zone NOT NULL,
    comment_enabled boolean NOT NULL,
    tags character varying(255) NOT NULL,
    image character varying(100) NOT NULL,
    title character varying(255) NOT NULL,
    excerpt text NOT NULL,
    slug character varying(255) NOT NULL,
    content text NOT NULL,
    end_publication timestamp with time zone,
    start_publication timestamp with time zone,
    creation_date timestamp with time zone NOT NULL,
    id integer NOT NULL,
    pingback_enabled boolean DEFAULT true NOT NULL,
    login_required boolean NOT NULL,
    password character varying(50) NOT NULL,
    detail_template character varying(250) NOT NULL,
    featured boolean NOT NULL,
    comment_count integer NOT NULL,
    pingback_count integer NOT NULL,
    trackback_count integer NOT NULL,
    trackback_enabled boolean NOT NULL,
    content_template character varying(250) NOT NULL,
    title_ru character varying(255),
    title_en character varying(255),
    content_ru text,
    content_en text,
    excerpt_ru text,
    excerpt_en text,
    title_zh_cn character varying(255),
    content_zh_cn text,
    excerpt_zh_cn text
);


ALTER TABLE public.zinnia_entry OWNER TO django_login;

--
-- Name: zinnia_entry_authors; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE zinnia_entry_authors (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.zinnia_entry_authors OWNER TO django_login;

--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE zinnia_entry_authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zinnia_entry_authors_id_seq OWNER TO django_login;

--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE zinnia_entry_authors_id_seq OWNED BY zinnia_entry_authors.id;


--
-- Name: zinnia_entry_categories; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE zinnia_entry_categories (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.zinnia_entry_categories OWNER TO django_login;

--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE zinnia_entry_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zinnia_entry_categories_id_seq OWNER TO django_login;

--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE zinnia_entry_categories_id_seq OWNED BY zinnia_entry_categories.id;


--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE zinnia_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zinnia_entry_id_seq OWNER TO django_login;

--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE zinnia_entry_id_seq OWNED BY zinnia_entry.id;


--
-- Name: zinnia_entry_related; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE zinnia_entry_related (
    id integer NOT NULL,
    from_entry_id integer NOT NULL,
    to_entry_id integer NOT NULL
);


ALTER TABLE public.zinnia_entry_related OWNER TO django_login;

--
-- Name: zinnia_entry_related_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE zinnia_entry_related_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zinnia_entry_related_id_seq OWNER TO django_login;

--
-- Name: zinnia_entry_related_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE zinnia_entry_related_id_seq OWNED BY zinnia_entry_related.id;


--
-- Name: zinnia_entry_sites; Type: TABLE; Schema: public; Owner: django_login; Tablespace: 
--

CREATE TABLE zinnia_entry_sites (
    id integer NOT NULL,
    entry_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.zinnia_entry_sites OWNER TO django_login;

--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: django_login
--

CREATE SEQUENCE zinnia_entry_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zinnia_entry_sites_id_seq OWNER TO django_login;

--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_login
--

ALTER SEQUENCE zinnia_entry_sites_id_seq OWNED BY zinnia_entry_sites.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('cms_cmsplugin_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_page ALTER COLUMN id SET DEFAULT nextval('cms_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('cms_page_placeholders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagemoderator ALTER COLUMN id SET DEFAULT nextval('cms_pagemoderator_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagemoderatorstate ALTER COLUMN id SET DEFAULT nextval('cms_pagemoderatorstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('cms_pagepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_placeholder ALTER COLUMN id SET DEFAULT nextval('cms_placeholder_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_title ALTER COLUMN id SET DEFAULT nextval('cms_title_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_filer_image_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('cmsplugin_filer_image_thumbnailoption_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_authors ALTER COLUMN id SET DEFAULT nextval('cmsplugin_zinnia_latestentriesplugin_authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_categories ALTER COLUMN id SET DEFAULT nextval('cmsplugin_zinnia_latestentriesplugin_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_tags ALTER COLUMN id SET DEFAULT nextval('cmsplugin_zinnia_latestentriesplugin_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_selectedentriesplugin_entries ALTER COLUMN id SET DEFAULT nextval('cmsplugin_zinnia_selectedentriesplugin_entries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_source_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_clipboard ALTER COLUMN id SET DEFAULT nextval('filer_clipboard_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('filer_clipboarditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_file ALTER COLUMN id SET DEFAULT nextval('filer_file_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_folder ALTER COLUMN id SET DEFAULT nextval('filer_folder_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('filer_folderpermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY menus_cachekey ALTER COLUMN id SET DEFAULT nextval('menus_cachekey_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY snippet_snippet ALTER COLUMN id SET DEFAULT nextval('snippet_snippet_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY tagging_tag ALTER COLUMN id SET DEFAULT nextval('tagging_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY tagging_taggeditem ALTER COLUMN id SET DEFAULT nextval('tagging_taggeditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_category ALTER COLUMN id SET DEFAULT nextval('zinnia_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_authors ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_authors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_categories ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_related ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_related_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_sites ALTER COLUMN id SET DEFAULT nextval('zinnia_entry_sites_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add log entry	7	add_logentry
20	Can change log entry	7	change_logentry
21	Can delete log entry	7	delete_logentry
22	Can add migration history	8	add_migrationhistory
23	Can change migration history	8	change_migrationhistory
24	Can delete migration history	8	delete_migrationhistory
25	Can add comment	9	add_comment
26	Can change comment	9	change_comment
27	Can delete comment	9	delete_comment
28	Can moderate comments	9	can_moderate
29	Can add comment flag	10	add_commentflag
30	Can change comment flag	10	change_commentflag
31	Can delete comment flag	10	delete_commentflag
32	Can add tag	11	add_tag
33	Can change tag	11	change_tag
34	Can delete tag	11	delete_tag
35	Can add tagged item	12	add_taggeditem
36	Can change tagged item	12	change_taggeditem
37	Can delete tagged item	12	delete_taggeditem
38	Can add cms content	13	add_cmscontent
39	Can change cms content	13	change_cmscontent
40	Can delete cms content	13	delete_cmscontent
41	Can add cms en content	14	add_cmsencontent
42	Can change cms en content	14	change_cmsencontent
43	Can delete cms en content	14	delete_cmsencontent
44	Can add cms en form serviceorder	15	add_cmsenformserviceorder
45	Can change cms en form serviceorder	15	change_cmsenformserviceorder
46	Can delete cms en form serviceorder	15	delete_cmsenformserviceorder
47	Can add cms en menu	16	add_cmsenmenu
48	Can change cms en menu	16	change_cmsenmenu
49	Can delete cms en menu	16	delete_cmsenmenu
50	Can add cms en module publications	17	add_cmsenmodulepublications
51	Can change cms en module publications	17	change_cmsenmodulepublications
52	Can delete cms en module publications	17	delete_cmsenmodulepublications
53	Can add cms en texts	18	add_cmsentexts
54	Can change cms en texts	18	change_cmsentexts
55	Can delete cms en texts	18	delete_cmsentexts
56	Can add cms form serviceorder	19	add_cmsformserviceorder
57	Can change cms form serviceorder	19	change_cmsformserviceorder
58	Can delete cms form serviceorder	19	delete_cmsformserviceorder
59	Can add cms form serviceorder2	20	add_cmsformserviceorder2
60	Can change cms form serviceorder2	20	change_cmsformserviceorder2
61	Can delete cms form serviceorder2	20	delete_cmsformserviceorder2
62	Can add cms menu	21	add_cmsmenu
63	Can change cms menu	21	change_cmsmenu
64	Can delete cms menu	21	delete_cmsmenu
65	Can add cms module clients	22	add_cmsmoduleclients
66	Can change cms module clients	22	change_cmsmoduleclients
67	Can delete cms module clients	22	delete_cmsmoduleclients
68	Can add cms module faq	23	add_cmsmodulefaq
69	Can change cms module faq	23	change_cmsmodulefaq
70	Can delete cms module faq	23	delete_cmsmodulefaq
71	Can add cms module gallery	24	add_cmsmodulegallery
72	Can change cms module gallery	24	change_cmsmodulegallery
73	Can delete cms module gallery	24	delete_cmsmodulegallery
74	Can add cms module gallerygroups	25	add_cmsmodulegallerygroups
75	Can change cms module gallerygroups	25	change_cmsmodulegallerygroups
76	Can delete cms module gallerygroups	25	delete_cmsmodulegallerygroups
77	Can add cms module news	26	add_cmsmodulenews
78	Can change cms module news	26	change_cmsmodulenews
79	Can delete cms module news	26	delete_cmsmodulenews
80	Can add cms module publications	27	add_cmsmodulepublications
81	Can change cms module publications	27	change_cmsmodulepublications
82	Can delete cms module publications	27	delete_cmsmodulepublications
83	Can add cms module spo	28	add_cmsmodulespo
84	Can change cms module spo	28	change_cmsmodulespo
85	Can delete cms module spo	28	delete_cmsmodulespo
86	Can add cms qlinks	29	add_cmsqlinks
87	Can change cms qlinks	29	change_cmsqlinks
88	Can delete cms qlinks	29	delete_cmsqlinks
89	Can add cms texts	30	add_cmstexts
90	Can change cms texts	30	change_cmstexts
91	Can delete cms texts	30	delete_cmstexts
92	Can add placeholder	31	add_placeholder
93	Can change placeholder	31	change_placeholder
94	Can delete placeholder	31	delete_placeholder
95	Can add cms plugin	32	add_cmsplugin
96	Can change cms plugin	32	change_cmsplugin
97	Can delete cms plugin	32	delete_cmsplugin
98	Can add page	33	add_page
99	Can change page	33	change_page
100	Can delete page	33	delete_page
101	Can view page	33	view_page
102	Can add PageModerator	34	add_pagemoderator
103	Can change PageModerator	34	change_pagemoderator
104	Can delete PageModerator	34	delete_pagemoderator
105	Can add Page moderator state	35	add_pagemoderatorstate
106	Can change Page moderator state	35	change_pagemoderatorstate
107	Can delete Page moderator state	35	delete_pagemoderatorstate
108	Can add Page global permission	36	add_globalpagepermission
109	Can change Page global permission	36	change_globalpagepermission
110	Can delete Page global permission	36	delete_globalpagepermission
111	Can add Page permission	37	add_pagepermission
112	Can change Page permission	37	change_pagepermission
113	Can delete Page permission	37	delete_pagepermission
114	Can add User (page)	38	add_pageuser
115	Can change User (page)	38	change_pageuser
116	Can delete User (page)	38	delete_pageuser
117	Can add User group (page)	39	add_pageusergroup
118	Can change User group (page)	39	change_pageusergroup
119	Can delete User group (page)	39	delete_pageusergroup
120	Can add title	40	add_title
121	Can change title	40	change_title
122	Can delete title	40	delete_title
123	Can add text	41	add_text
124	Can change text	41	change_text
125	Can delete text	41	delete_text
126	Can add Snippet	42	add_snippet
127	Can change Snippet	42	change_snippet
128	Can delete Snippet	42	delete_snippet
129	Can add Snippet	43	add_snippetptr
130	Can change Snippet	43	change_snippetptr
131	Can delete Snippet	43	delete_snippetptr
132	Can add picture	44	add_picture
133	Can change picture	44	change_picture
134	Can delete picture	44	delete_picture
135	Can add link	45	add_link
136	Can change link	45	change_link
137	Can delete link	45	delete_link
138	Can add google map	46	add_googlemap
139	Can change google map	46	change_googlemap
140	Can delete google map	46	delete_googlemap
141	Can add file	47	add_file
142	Can change file	47	change_file
143	Can delete file	47	delete_file
144	Can add teaser	48	add_teaser
145	Can change teaser	48	change_teaser
146	Can delete teaser	48	delete_teaser
147	Can add cache key	49	add_cachekey
148	Can change cache key	49	change_cachekey
149	Can delete cache key	49	delete_cachekey
150	Can change status	50	can_change_status
151	Can add author	3	add_author
152	Can change author	3	change_author
153	Can delete author	3	delete_author
154	Can add category	51	add_category
155	Can change category	51	change_category
156	Can delete category	51	delete_category
157	Can add entry	50	add_entry
158	Can change entry	50	change_entry
159	Can delete entry	50	delete_entry
160	Can view all entries	50	can_view_all
161	Can change author(s)	50	can_change_author
162	Can add latest entries plugin	53	add_latestentriesplugin
163	Can change latest entries plugin	53	change_latestentriesplugin
164	Can delete latest entries plugin	53	delete_latestentriesplugin
165	Can add selected entries plugin	54	add_selectedentriesplugin
166	Can change selected entries plugin	54	change_selectedentriesplugin
167	Can delete selected entries plugin	54	delete_selectedentriesplugin
168	Can add random entries plugin	55	add_randomentriesplugin
169	Can change random entries plugin	55	change_randomentriesplugin
170	Can delete random entries plugin	55	delete_randomentriesplugin
171	Can add query entries plugin	56	add_queryentriesplugin
172	Can change query entries plugin	56	change_queryentriesplugin
173	Can delete query entries plugin	56	delete_queryentriesplugin
174	Can add calendar entries plugin	57	add_calendarentriesplugin
175	Can change calendar entries plugin	57	change_calendarentriesplugin
176	Can delete calendar entries plugin	57	delete_calendarentriesplugin
177	Can add contact	58	add_contact
178	Can change contact	58	change_contact
179	Can delete contact	58	delete_contact
180	Can add source	59	add_source
181	Can change source	59	change_source
182	Can delete source	59	delete_source
183	Can add thumbnail	60	add_thumbnail
184	Can change thumbnail	60	change_thumbnail
185	Can delete thumbnail	60	delete_thumbnail
186	Can add Folder	61	add_folder
187	Can change Folder	61	change_folder
188	Can delete Folder	61	delete_folder
189	Can use directory listing	61	can_use_directory_listing
190	Can add folder permission	62	add_folderpermission
191	Can change folder permission	62	change_folderpermission
192	Can delete folder permission	62	delete_folderpermission
193	Can add file	63	add_file
194	Can change file	63	change_file
195	Can delete file	63	delete_file
196	Can add clipboard	64	add_clipboard
197	Can change clipboard	64	change_clipboard
198	Can delete clipboard	64	delete_clipboard
199	Can add clipboard item	65	add_clipboarditem
200	Can change clipboard item	65	change_clipboarditem
201	Can delete clipboard item	65	delete_clipboarditem
202	Can add image	66	add_image
203	Can change image	66	change_image
204	Can delete image	66	delete_image
205	Can add filer folder	67	add_filerfolder
206	Can change filer folder	67	change_filerfolder
207	Can delete filer folder	67	delete_filerfolder
208	Can add filer image	68	add_filerimage
209	Can change filer image	68	change_filerimage
210	Can delete filer image	68	delete_filerimage
211	Can add thumbnail option	69	add_thumbnailoption
212	Can change thumbnail option	69	change_thumbnailoption
213	Can delete thumbnail option	69	delete_thumbnailoption
214	Can add custom contact	70	add_customcontact
215	Can change custom contact	70	change_customcontact
216	Can delete custom contact	70	delete_customcontact
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_permission_id_seq', 216, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
1	picasso			picasso75@yandex.ru	pbkdf2_sha256$10000$wiMXlvIXAgsx$mIIKoAg0iL+5BhRl7K6T0KgHFiEqFK1axPWbk5/xg3o=	t	t	t	2013-03-17 01:21:26.603835+04	2013-03-07 14:18:54.264245+04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: cms_cmsplugin; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_cmsplugin (language, "position", creation_date, id, plugin_type, parent_id, tree_id, lft, rght, level, placeholder_id, changed_date) FROM stdin;
zh-cn	0	2013-03-13 11:38:48.348151+04	31	FilerGalleryPlugin	\N	16	1	2	0	38	2013-03-13 15:25:47.935358+04
en	0	2013-03-13 15:35:09.087259+04	35	PlainTextPlugin	\N	18	1	2	0	39	2013-03-13 15:36:15.161109+04
ru	0	2013-03-13 15:35:09.087259+04	34	PlainTextPlugin	\N	17	1	2	0	39	2013-03-13 15:37:02.294463+04
zh-cn	0	2013-03-13 15:35:09.087259+04	36	PlainTextPlugin	\N	19	1	2	0	39	2013-03-13 15:38:02.456718+04
ru	0	2013-03-14 09:44:37.621361+04	37	PlainTextPlugin	\N	20	1	2	0	12	2013-03-14 09:44:51.666359+04
ru	0	2013-03-14 16:30:13.597805+04	38	PlainTextPlugin	\N	21	1	2	0	42	2013-03-14 16:31:00.748953+04
ru	1	2013-03-14 16:31:32.387599+04	39	CustomContactPlugin	\N	22	1	2	0	42	2013-03-14 16:40:02.449187+04
ru	0	2013-03-15 14:16:51.865524+04	40	CMSCategoryEntriesPlugin	\N	23	1	2	0	46	2013-03-15 14:17:03.926703+04
ru	0	2013-03-12 12:59:44.196282+04	20	PlainTextPlugin	\N	8	1	2	0	15	2013-03-12 12:59:54.788943+04
ru	0	2013-03-15 15:14:39.360099+04	42	PlainTextPlugin	\N	24	1	2	0	8	2013-03-15 15:15:12.480988+04
en	0	2013-03-12 12:59:44.196282+04	21	PlainTextPlugin	\N	9	1	2	0	15	2013-03-12 13:00:40.84681+04
en	0	2013-03-15 15:14:39.360099+04	43	PlainTextPlugin	\N	25	1	2	0	8	2013-03-15 15:15:38.48065+04
zh-cn	0	2013-03-12 12:59:44.196282+04	22	PlainTextPlugin	\N	10	1	2	0	15	2013-03-12 13:01:13.531079+04
zh-cn	0	2013-03-15 15:14:39.360099+04	44	PlainTextPlugin	\N	26	1	2	0	8	2013-03-15 15:15:51.982708+04
ru	0	2013-03-12 14:38:28.110029+04	25	PlainTextPlugin	\N	11	1	2	0	17	2013-03-12 14:38:35.76956+04
en	0	2013-03-12 14:38:28.110029+04	26	PlainTextPlugin	\N	12	1	2	0	17	2013-03-12 14:39:17.984282+04
zh-cn	0	2013-03-12 14:38:28.110029+04	27	PlainTextPlugin	\N	13	1	2	0	17	2013-03-12 14:39:44.062055+04
ru	0	2013-03-13 11:38:48.348151+04	29	FilerGalleryPlugin	\N	14	1	2	0	38	2013-03-13 15:21:48.821728+04
en	0	2013-03-13 11:38:48.348151+04	30	FilerGalleryPlugin	\N	15	1	2	0	38	2013-03-13 15:25:09.634163+04
ru	0	2013-03-15 15:25:11.241913+04	47	PlainTextPlugin	\N	29	1	2	0	5	2013-03-15 15:30:32.806577+04
en	0	2013-03-15 15:21:39.573724+04	46	PlainTextPlugin	\N	28	1	2	0	5	2013-03-15 15:32:32.704043+04
zh-cn	0	2013-03-15 15:21:39.573724+04	48	PlainTextPlugin	\N	30	1	2	0	5	2013-03-15 15:32:48.494774+04
zh-cn	1	2013-03-17 19:31:54.97269+04	92	TextPlugin	\N	61	1	2	0	24	2013-03-17 19:31:54.974393+04
ru	1	2013-03-17 21:44:02.90453+04	93	TextPlugin	\N	62	1	2	0	77	2013-03-17 21:44:02.906454+04
en	1	2013-03-17 21:44:02.969661+04	94	TextPlugin	\N	63	1	2	0	77	2013-03-17 21:44:02.971477+04
zh-cn	1	2013-03-17 21:44:03.028102+04	95	TextPlugin	\N	64	1	2	0	77	2013-03-17 21:44:03.029829+04
ru	1	2013-03-17 21:45:30.916236+04	96	TextPlugin	\N	65	1	2	0	81	2013-03-17 21:45:30.91798+04
ru	1	2013-03-17 13:50:00.204677+04	58	TextPlugin	\N	31	1	2	0	50	2013-03-17 13:50:00.206458+04
en	1	2013-03-17 13:50:00.265513+04	59	TextPlugin	\N	32	1	2	0	50	2013-03-17 13:50:00.267189+04
zh-cn	1	2013-03-17 13:50:00.323835+04	60	TextPlugin	\N	33	1	2	0	50	2013-03-17 13:50:00.325597+04
ru	1	2013-03-17 13:58:27.662328+04	61	TextPlugin	\N	34	1	2	0	53	2013-03-17 13:58:27.664219+04
en	1	2013-03-17 13:58:27.716081+04	62	TextPlugin	\N	35	1	2	0	53	2013-03-17 13:58:27.717785+04
zh-cn	1	2013-03-17 13:58:27.774444+04	63	TextPlugin	\N	36	1	2	0	53	2013-03-17 13:58:27.776232+04
ru	1	2013-03-17 16:29:18.192673+04	64	TextPlugin	\N	37	1	2	0	57	2013-03-17 16:29:18.194605+04
en	1	2013-03-17 16:29:18.253385+04	65	TextPlugin	\N	38	1	2	0	57	2013-03-17 16:29:18.255076+04
ru	1	2013-03-17 18:10:39.913254+04	69	TextPlugin	\N	39	1	2	0	61	2013-03-17 18:10:39.915078+04
en	1	2013-03-17 18:10:39.96589+04	70	TextPlugin	\N	40	1	2	0	61	2013-03-17 18:10:39.967707+04
zh-cn	1	2013-03-17 18:10:40.029225+04	71	TextPlugin	\N	41	1	2	0	61	2013-03-17 18:10:40.030913+04
ru	1	2013-03-17 18:19:47.893582+04	72	TextPlugin	\N	42	1	2	0	65	2013-03-17 18:19:47.895546+04
en	1	2013-03-17 18:19:47.96136+04	73	TextPlugin	\N	43	1	2	0	65	2013-03-17 18:19:47.963231+04
zh-cn	1	2013-03-17 18:19:48.019504+04	74	TextPlugin	\N	44	1	2	0	65	2013-03-17 18:19:48.021159+04
ru	0	2013-03-17 18:27:20.153239+04	75	PlainTextPlugin	\N	45	1	2	0	55	2013-03-17 18:27:38.590492+04
ru	0	2013-03-17 18:28:40.840076+04	76	PlainTextPlugin	\N	46	1	2	0	26	2013-03-17 18:28:47.307286+04
ru	1	2013-03-17 18:34:30.46129+04	77	TextPlugin	\N	47	1	2	0	69	2013-03-17 18:34:30.463106+04
en	1	2013-03-17 18:34:30.563883+04	78	TextPlugin	\N	48	1	2	0	69	2013-03-17 18:34:30.56571+04
zh-cn	1	2013-03-17 18:34:30.62198+04	79	TextPlugin	\N	49	1	2	0	69	2013-03-17 18:34:30.623755+04
ru	1	2013-03-17 18:43:14.428179+04	81	TextPlugin	\N	50	1	2	0	32	2013-03-17 18:43:14.430104+04
en	1	2013-03-17 18:43:14.484896+04	82	TextPlugin	\N	51	1	2	0	32	2013-03-17 18:43:14.486551+04
zh-cn	1	2013-03-17 18:43:14.543193+04	83	TextPlugin	\N	52	1	2	0	32	2013-03-17 18:43:14.54487+04
ru	1	2013-03-17 18:45:05.161328+04	84	TextPlugin	\N	53	1	2	0	20	2013-03-17 18:45:05.163212+04
en	1	2013-03-17 18:45:05.21476+04	85	TextPlugin	\N	54	1	2	0	20	2013-03-17 18:45:05.216572+04
zh-cn	1	2013-03-17 18:45:05.272987+04	86	TextPlugin	\N	55	1	2	0	20	2013-03-17 18:45:05.27483+04
ru	1	2013-03-17 18:48:58.930724+04	87	TextPlugin	\N	56	1	2	0	73	2013-03-17 18:48:58.932654+04
zh-cn	1	2013-03-17 18:48:59.050107+04	89	TextPlugin	\N	58	1	2	0	73	2013-03-17 18:48:59.051926+04
en	1	2013-03-17 21:45:30.976903+04	97	TextPlugin	\N	66	1	2	0	81	2013-03-17 21:45:30.978588+04
en	1	2013-03-17 18:48:58.991868+04	88	TextPlugin	\N	57	1	2	0	73	2013-03-17 18:51:54.652781+04
ru	1	2013-03-17 19:31:54.85321+04	90	TextPlugin	\N	59	1	2	0	24	2013-03-17 19:31:54.855102+04
en	1	2013-03-17 19:31:54.914345+04	91	TextPlugin	\N	60	1	2	0	24	2013-03-17 19:31:54.916267+04
zh-cn	1	2013-03-17 21:45:31.034819+04	98	TextPlugin	\N	67	1	2	0	81	2013-03-17 21:45:31.03651+04
ru	1	2013-03-17 21:47:59.603095+04	99	TextPlugin	\N	68	1	2	0	85	2013-03-17 21:47:59.604954+04
en	1	2013-03-17 21:47:59.668394+04	100	TextPlugin	\N	69	1	2	0	85	2013-03-17 21:47:59.670162+04
zh-cn	1	2013-03-17 21:47:59.726577+04	101	TextPlugin	\N	70	1	2	0	85	2013-03-17 21:47:59.72837+04
ru	1	2013-03-17 21:53:05.197745+04	102	TextPlugin	\N	71	1	2	0	89	2013-03-17 21:53:05.199702+04
en	1	2013-03-17 21:53:05.271625+04	103	TextPlugin	\N	72	1	2	0	89	2013-03-17 21:53:05.273461+04
zh-cn	1	2013-03-17 21:53:05.337945+04	104	TextPlugin	\N	73	1	2	0	89	2013-03-17 21:53:05.339723+04
en	1	2013-03-18 00:24:38.224978+04	112	TextPlugin	\N	79	1	2	0	28	2013-03-18 00:24:38.226687+04
zh-cn	1	2013-03-18 00:24:38.333172+04	113	TextPlugin	\N	80	1	2	0	28	2013-03-18 00:24:38.335069+04
ru	1	2013-03-17 21:54:28.845891+04	105	FilerGalleryPlugin	\N	74	1	2	0	89	2013-03-17 22:47:24.821689+04
en	1	2013-03-17 22:56:30.735593+04	106	FilerGalleryPlugin	\N	75	1	2	0	89	2013-03-17 22:56:42.313352+04
zh-cn	1	2013-03-17 22:56:54.934328+04	107	FilerGalleryPlugin	\N	76	1	2	0	89	2013-03-17 22:57:05.310728+04
ru	1	2013-03-18 00:15:38.060064+04	108	TextPlugin	\N	77	1	2	0	93	2013-03-18 00:15:38.062005+04
ru	1	2013-03-18 00:24:38.11349+04	111	TextPlugin	\N	78	1	2	0	28	2013-03-18 00:24:38.115291+04
en	0	2013-03-14 16:30:13.597805+04	114	PlainTextPlugin	\N	81	1	2	0	42	2013-03-18 00:33:14.990649+04
zh-cn	0	2013-03-14 16:30:13.597805+04	116	PlainTextPlugin	\N	83	1	2	0	42	2013-03-18 00:33:36.649242+04
en	1	2013-03-14 16:31:32.387599+04	115	CustomContactPlugin	\N	82	1	2	0	42	2013-03-18 00:38:46.264573+04
zh-cn	1	2013-03-14 16:31:32.387599+04	117	CustomContactPlugin	\N	84	1	2	0	42	2013-03-18 00:37:45.451118+04
en	0	2013-03-17 18:28:40.840076+04	118	PlainTextPlugin	\N	85	1	2	0	26	2013-03-18 00:42:46.919336+04
zh-cn	0	2013-03-17 18:28:40.840076+04	119	PlainTextPlugin	\N	86	1	2	0	26	2013-03-18 00:42:54.946967+04
en	0	2013-03-17 18:27:20.153239+04	120	PlainTextPlugin	\N	87	1	2	0	55	2013-03-18 00:43:09.585183+04
zh-cn	0	2013-03-17 18:27:20.153239+04	121	PlainTextPlugin	\N	88	1	2	0	55	2013-03-18 00:43:16.297072+04
ru	0	2013-03-18 00:43:39.09685+04	122	PlainTextPlugin	\N	89	1	2	0	95	2013-03-18 00:43:42.533544+04
en	0	2013-03-18 00:43:39.09685+04	123	PlainTextPlugin	\N	90	1	2	0	95	2013-03-18 00:43:52.677635+04
ru	1	2013-03-18 00:44:24.793093+04	125	TextPlugin	\N	92	1	2	0	97	2013-03-18 00:44:24.794978+04
en	1	2013-03-18 00:44:24.863025+04	126	TextPlugin	\N	93	1	2	0	97	2013-03-18 00:44:24.864861+04
\.


--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_cmsplugin_id_seq', 126, true);


--
-- Data for Name: cms_content; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_content (id, menu_id, title, keywords, description, h1, body, published, updated, tags) FROM stdin;
\.


--
-- Data for Name: cms_en_content; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_en_content (id, menu_id, title, keywords, description, h1, body, published, updated, tags) FROM stdin;
\.


--
-- Data for Name: cms_en_form_serviceorder; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_en_form_serviceorder (id, title, type, params, order_by, required) FROM stdin;
\.


--
-- Data for Name: cms_en_menu; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_en_menu (id, menu_id, menu_title, menu_uri, menu_parent_id, visible, order_by, module) FROM stdin;
\.


--
-- Data for Name: cms_en_module_publications; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_en_module_publications (id, menu_id, title, announce, body, published, updated, vip) FROM stdin;
\.


--
-- Data for Name: cms_en_texts; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_en_texts (id, text_id, text_body) FROM stdin;
\.


--
-- Data for Name: cms_form_serviceorder; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_form_serviceorder (id, title, type, params, order_by, required) FROM stdin;
\.


--
-- Data for Name: cms_form_serviceorder2; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_form_serviceorder2 (id, title, type, params, order_by, required) FROM stdin;
\.


--
-- Data for Name: cms_globalpagepermission; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_globalpagepermission (can_publish, group_id, can_moderate, can_change, can_change_permissions, can_recover_page, can_add, user_id, can_delete, can_move_page, id, can_change_advanced_settings, can_view) FROM stdin;
\.


--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_globalpagepermission_id_seq', 1, false);


--
-- Data for Name: cms_globalpagepermission_sites; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
\.


--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_globalpagepermission_sites_id_seq', 1, false);


--
-- Data for Name: cms_menu; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_menu (id, menu_id, menu_title, menu_uri, menu_parent_id, visible, order_by, module) FROM stdin;
\.


--
-- Data for Name: cms_module_clients; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_module_clients (id, title, announce, body, order_by, published, logo) FROM stdin;
\.


--
-- Data for Name: cms_module_faq; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_module_faq (id, title, question, published, answer, updated, status, order_by) FROM stdin;
\.


--
-- Data for Name: cms_module_gallery; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_module_gallery (id, title, description, published, updated, order_by, group_id) FROM stdin;
\.


--
-- Data for Name: cms_module_gallerygroups; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_module_gallerygroups (id, title, order_by, published, updated, description) FROM stdin;
\.


--
-- Data for Name: cms_module_news; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_module_news (id, title, announce, body, published, updated) FROM stdin;
\.


--
-- Data for Name: cms_module_publications; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_module_publications (id, menu_id, title, announce, body, published, updated, vip) FROM stdin;
\.


--
-- Data for Name: cms_module_spo; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_module_spo (id, title, body, order_by, published) FROM stdin;
\.


--
-- Data for Name: cms_page; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_page (rght, level, navigation_extenders, parent_id, reverse_id, login_required, soft_root, creation_date, lft, publication_end_date, template, tree_id, publication_date, in_navigation, id, moderator_state, published, site_id, changed_by, created_by, publisher_is_draft, publisher_state, publisher_public_id, limit_visibility_in_menu, changed_date) FROM stdin;
19	1		4	\N	f	f	2013-03-12 16:45:38.692118+04	14	\N	INHERIT	5	2013-03-12 16:45:44.323116+04	t	7	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-18 00:42:56.58946+04
27	1		4	\N	f	f	2013-03-17 16:28:05.513912+04	20	\N	INHERIT	5	2013-03-17 16:30:24.349316+04	t	13	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-18 00:43:17.939634+04
2	0		\N	\N	f	f	2013-03-18 00:43:30.549413+04	1	\N	page.html	6	2013-03-18 00:45:46.266559+04	t	23	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-18 00:47:07.935489+04
2	0		\N	\N	f	f	2013-03-14 16:29:25.697125+04	1	\N	page.html	8	2013-03-14 16:29:34.795+04	t	10	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-18 00:38:51.871891+04
2	0		\N	\N	f	f	2013-03-17 21:52:02.213772+04	1	\N	page.html	7	2013-03-17 21:53:18.803492+04	t	21	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-18 00:47:10.351027+04
2	0		\N	\N	f	f	2013-03-12 09:19:35.98308+04	1	\N	base.html	4	\N	f	3	0	f	1	picasso	picasso	t	1	\N	\N	2013-03-12 09:20:45.204417+04
6	2		5	\N	f	f	2013-03-12 16:46:53.118189+04	5	\N	INHERIT	5	2013-03-12 16:47:03.952403+04	t	8	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 18:43:10.622365+04
2	0		\N	\N	f	f	2013-03-15 14:11:14.288251+04	1	\N	page.html	2	2013-03-15 14:11:19.935284+04	t	11	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-15 14:11:35.749685+04
4	2		5	\N	f	f	2013-03-12 14:53:02.693313+04	3	\N	INHERIT	5	2013-03-12 14:53:10.165457+04	t	6	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 19:31:18.835093+04
8	2		5	\N	f	f	2013-03-17 21:43:18.982469+04	7	\N	INHERIT	5	2013-03-17 21:43:36.795986+04	t	18	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 21:43:36.800541+04
26	2		13	\N	f	f	2013-03-17 18:09:07.346961+04	25	\N	INHERIT	5	2013-03-17 18:10:30.983027+04	t	14	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 18:10:30.987526+04
24	2		13	\N	f	f	2013-03-17 18:19:02.221306+04	23	\N	INHERIT	5	2013-03-17 18:20:36.044087+04	t	15	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 18:20:36.048064+04
28	0		\N	service	f	f	2013-03-12 12:53:14.650307+04	1	\N	page.html	5	2013-03-12 12:53:30.893605+04	t	4	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-18 00:08:59.267096+04
13	1		4	\N	f	f	2013-03-12 14:44:42.828826+04	2	\N	INHERIT	5	2013-03-12 14:45:33.580223+04	t	5	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-14 09:31:29.614247+04
2	0		\N	\N	f	f	2013-03-07 16:12:02.709618+04	1	\N	page.html	1	2013-03-07 16:12:44.408524+04	t	1	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 13:53:51.778311+04
2	0		\N	global_placeholder	f	f	2013-03-07 16:15:34.624996+04	1	\N	global_placeholder.html	9	\N	f	2	0	f	1	picasso	picasso	t	1	\N	\N	2013-03-18 00:29:33.15753+04
2	0		\N	\N	f	f	2013-03-17 13:24:44.587289+04	1	\N	page.html	3	2013-03-17 13:24:55.910545+04	t	12	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 13:58:04.007001+04
12	2		5	\N	f	f	2013-03-18 00:15:04.903075+04	11	\N	INHERIT	5	2013-03-18 00:16:44.52305+04	t	22	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-18 00:16:44.528776+04
10	2		5	\N	f	f	2013-03-17 21:44:56.21816+04	9	\N	INHERIT	5	2013-03-17 21:45:12.812088+04	t	19	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 21:45:12.817668+04
18	2		7	\N	f	f	2013-03-17 18:48:41.069427+04	17	\N	INHERIT	5	2013-03-17 18:49:32.576919+04	t	17	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 18:51:56.319885+04
22	2		13	\N	f	f	2013-03-17 18:33:58.445298+04	21	\N	INHERIT	5	2013-03-17 18:34:03.578377+04	t	16	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-17 18:34:37.238725+04
16	2		7	\N	f	f	2013-03-17 21:47:26.193817+04	15	\N	INHERIT	5	2013-03-17 21:49:40.859394+04	t	20	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-18 00:13:40.454939+04
\.


--
-- Name: cms_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_page_id_seq', 23, true);


--
-- Data for Name: cms_page_placeholders; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	2	5
6	2	6
7	2	7
8	2	8
9	1	9
10	3	10
11	4	11
12	4	12
13	4	13
14	4	14
15	2	15
16	4	16
17	2	17
18	5	18
19	5	19
20	5	20
21	5	21
22	6	22
23	6	23
24	6	24
25	6	25
26	7	26
27	7	27
28	7	28
29	7	29
30	8	30
31	8	31
32	8	32
33	8	33
38	2	38
39	2	39
40	10	40
41	10	41
42	10	42
43	10	43
44	11	44
45	11	45
46	11	46
47	11	47
48	1	48
49	1	49
50	1	50
51	12	51
52	12	52
53	12	53
54	12	54
55	13	55
56	13	56
57	13	57
58	13	58
59	14	59
60	14	60
61	14	61
62	14	62
63	15	63
64	15	64
65	15	65
66	15	66
67	16	67
68	16	68
69	16	69
70	16	70
71	17	71
72	17	72
73	17	73
74	17	74
75	18	75
76	18	76
77	18	77
78	18	78
79	19	79
80	19	80
81	19	81
82	19	82
83	20	83
84	20	84
85	20	85
86	20	86
87	21	87
88	21	88
89	21	89
90	21	90
91	22	91
92	22	92
93	22	93
94	22	94
95	23	95
96	23	96
97	23	97
98	23	98
\.


--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_page_placeholders_id_seq', 98, true);


--
-- Data for Name: cms_pagemoderator; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_pagemoderator (moderate_page, moderate_children, page_id, user_id, id, moderate_descendants) FROM stdin;
\.


--
-- Name: cms_pagemoderator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_pagemoderator_id_seq', 1, false);


--
-- Data for Name: cms_pagemoderatorstate; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_pagemoderatorstate (created, page_id, user_id, action, message, id) FROM stdin;
\.


--
-- Name: cms_pagemoderatorstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_pagemoderatorstate_id_seq', 1, false);


--
-- Data for Name: cms_pagepermission; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_pagepermission (group_id, can_publish, page_id, user_id, id, can_delete, can_change_permissions, can_moderate, can_add, grant_on, can_move_page, can_change, can_change_advanced_settings, can_view) FROM stdin;
\.


--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_pagepermission_id_seq', 1, false);


--
-- Data for Name: cms_pageuser; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
\.


--
-- Data for Name: cms_pageusergroup; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
\.


--
-- Data for Name: cms_placeholder; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_placeholder (slot, id, default_width) FROM stdin;
bigpromo-title	1	\N
bigpromo-text	2	\N
press-releases	3	\N
news	4	\N
adresses	5	\N
liveinternet	6	\N
zinnia-entries-press	7	\N
get-copyright	8	\N
big-phones	9	\N
big-phones	10	\N
bigpromo-title	11	\N
custom-title	12	\N
page-content	13	\N
big-phones	14	\N
big-phones	15	\N
header-image	16	\N
header-image	17	\N
header-image	18	\N
custom-title	19	\N
page-content	20	\N
bigpromo-title	21	\N
header-image	22	\N
custom-title	23	\N
page-content	24	\N
bigpromo-title	25	\N
header-image	26	\N
custom-title	27	\N
page-content	28	\N
bigpromo-title	29	\N
header-image	30	\N
custom-title	31	\N
page-content	32	\N
bigpromo-title	33	\N
banners	38	\N
banners-title	39	\N
header-image	40	\N
custom-title	41	\N
page-content	42	\N
bigpromo-title	43	\N
header-image	44	\N
custom-title	45	\N
page-content	46	\N
bigpromo-title	47	\N
header-image	48	\N
custom-title	49	\N
page-content	50	\N
header-image	51	\N
custom-title	52	\N
page-content	53	\N
bigpromo-title	54	\N
header-image	55	\N
custom-title	56	\N
page-content	57	\N
bigpromo-title	58	\N
header-image	59	\N
custom-title	60	\N
page-content	61	\N
bigpromo-title	62	\N
header-image	63	\N
custom-title	64	\N
page-content	65	\N
bigpromo-title	66	\N
header-image	67	\N
custom-title	68	\N
page-content	69	\N
bigpromo-title	70	\N
header-image	71	\N
custom-title	72	\N
page-content	73	\N
bigpromo-title	74	\N
header-image	75	\N
custom-title	76	\N
page-content	77	\N
bigpromo-title	78	\N
header-image	79	\N
custom-title	80	\N
page-content	81	\N
bigpromo-title	82	\N
header-image	83	\N
custom-title	84	\N
page-content	85	\N
bigpromo-title	86	\N
header-image	87	\N
custom-title	88	\N
page-content	89	\N
bigpromo-title	90	\N
header-image	91	\N
custom-title	92	\N
page-content	93	\N
bigpromo-title	94	\N
header-image	95	\N
custom-title	96	\N
page-content	97	\N
bigpromo-title	98	\N
\.


--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_placeholder_id_seq', 98, true);


--
-- Data for Name: cms_qlinks; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_qlinks (id, title, menu_uri, order_by, size, color) FROM stdin;
\.


--
-- Data for Name: cms_texts; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_texts (id, text_id, text_body) FROM stdin;
\.


--
-- Data for Name: cms_title; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cms_title (language, title, page_id, id, path, creation_date, slug, has_url_overwrite, application_urls, redirect, meta_keywords, meta_description, page_title, menu_title) FROM stdin;
ru	Блог	3	5	blog	2013-03-12 09:19:36.241085+04	blog	f	ZinniaApphook					
zh-cn	Blog	3	7	blog	2013-03-12 09:20:27.423741+04	blog	f	ZinniaApphook					
en	Blog	3	6	blog	2013-03-12 09:20:20.586805+04	blog	f	ZinniaApphook					
ru	Global Placeholder	2	2	global-placeholde	2013-03-07 16:15:34.632001+04	global-placeholde	f						
en	Global Placeholder	2	10	global-placeholde	2013-03-12 14:39:05.029971+04	global-placeholde	f						
en	Services	4	9	services	2013-03-12 14:34:02.241738+04	services	f	\N	\N				
zh-cn	我们的服务	4	19	services	2013-03-14 09:34:05.867145+04	services	f	\N	\N				
zh-cn	Global Placeholder	2	11	global-placeholde	2013-03-12 14:39:38.187057+04	global-placeholde	f						
ru	Статьи	11	21	news	2013-03-15 14:11:14.462394+04	news	f	\N	\N	\N	\N	\N	\N
zh-cn	中国工厂和俄罗斯及独联体客户"门"到"门"货物运送	1	3		2013-03-11 11:17:25.153934+04	home	f					中国工厂和俄罗斯及独联体客户"门"到"门"货物运送	家
ru	Заявка	10	20	order	2013-03-14 16:29:25.894698+04	order	f						
ru	 Доставка контейнеров из Китая - GCS-CHINA	1	1		2013-03-07 16:12:02.774966+04	home	f			доставка контейнеров из китая, ваш представитель в китае, бизнес услуги в китае	Доставка контейнеров из Китая в Россию морским и железнодорожным транспортом, представительство и бизнес услуги в Китае	доставка контейнеров из китая, ваш представитель в китае, бизнес услуги в китае	Главная
ru	Доставка контейнеров из Китая – один из приоритетов ГКС	12	22	company	2013-03-17 13:24:44.614863+04	company	f	\N	\N	доставка грузов из китая	Доставка грузов из Китая	доставка грузов из китая	Компания
en	Group of companies «Global Container Service»	12	23	company	2013-03-17 13:57:56.840339+04	company	f	\N	\N				Company
en	About our company	1	4		2013-03-11 13:54:00.372902+04	home	f					Доставка грузов от завода в КНР «до двери» Клиента в России и странах СНГ	Home
zh-cn	关于公司	12	24	company	2013-03-17 13:58:04.030756+04	company	f	\N	\N				关于公司
en	 INTEGRATED DELIVERY OF GOODS	5	17	services/kompleksnaya_dostavka_gruzov	2013-03-14 09:29:16.772314+04	kompleksnaya_dostavka_gruzov	f						THROUGH DELIVERIES
zh-cn	全方位货物运输服务	5	18	services/kompleksnaya_dostavka_gruzov	2013-03-14 09:31:29.652319+04	kompleksnaya_dostavka_gruzov	f	\N	\N				全方位货物运输服务
en	On-line inquiry	10	61	order	2013-03-18 00:30:57.647012+04	order	f						
ru	Инспектирование грузов/Сюрвейерские услуги	22	56	services/kompleksnaya_dostavka_gruzov/inspektirovanie	2013-03-18 00:15:04.949596+04	inspektirovanie	f	\N	\N				Инспектирование грузов
zh-cn	网页申请表	10	62	order	2013-03-18 00:33:53.770691+04	order	f						
ru	Наши Клиенты и Партнеры	21	53	clients_and_partners	2013-03-17 21:52:02.246288+04	clients_and_partners	f			доставка контейнера из китая, перевозки контейнеров из китая	Перевозка контейнеров из Китая - наш главный профиль	Перевозка контейнеров из Китая	Партнеры
en	Our Clients and Partners	21	54	clients_and_partners	2013-03-17 21:52:06.465358+04	clients_and_partners	f						Clients and Partners
zh-cn	Наши Клиенты и Партнеры	21	55	clients_and_partners	2013-03-17 21:52:10.357102+04	clients_and_partners	f						客户与合作伙伴
ru	Морские перевозки из Китая	6	13	services/kompleksnaya_dostavka_gruzov/morskie_perevozki	2013-03-12 14:53:02.718893+04	morskie_perevozki	f	\N	\N	доставка контейнеров из китая морем, морские грузоперевозки из китая	Група компаний ГКС осуществляет морские перевозки из Китая	доставка контейнеров из китая морем	Морские перевозки из Китая
en	SHIPPING FROM CHINA BY DEEP SEA	6	42	services/kompleksnaya_dostavka_gruzov/morskie_perevozki	2013-03-17 19:31:14.938383+04	morskie_perevozki	f	\N	\N				SEA
ru	Комплексная доставка контейнеров из Китая	5	12	services/kompleksnaya_dostavka_gruzov	2013-03-12 14:44:42.868086+04	kompleksnaya_dostavka_gruzov	f			комплексная доставка контейнеров из китая, ваш представитель в китае, бизнес услуги в китае	Комплексная доставка контейнеров из Китая	Комплексная доставка контейнеров из Китая	Доставка контейнеров
zh-cn	中国海运出口	6	43	services/kompleksnaya_dostavka_gruzov/morskie_perevozki	2013-03-17 19:31:18.864034+04	morskie_perevozki	f	\N	\N				中国海运出口
ru	Железнодорожные перевозки из Китая	8	15	services/kompleksnaya_dostavka_gruzov/zheleznodorozhnye_perevozki	2013-03-12 16:46:53.144034+04	zheleznodorozhnye_perevozki	f	\N	\N	железнодорожные перевозки из китая, доставка грузов из китая жд	Группа компаний "ГКС" выполняет железнодорожные перевозки из Китая	Железнодорожные перевозки из Китая	Железнодорожные перевозки из Китая
en	RAIL TRANSPORTATION	8	37	services/kompleksnaya_dostavka_gruzov/zheleznodorozhnye_perevozki	2013-03-17 18:43:07.092367+04	zheleznodorozhnye_perevozki	f	\N	\N				RAILWAY
zh-cn	铁路运输服务	8	38	services/kompleksnaya_dostavka_gruzov/zheleznodorozhnye_perevozki	2013-03-17 18:43:10.653533+04	zheleznodorozhnye_perevozki	f	\N	\N				铁路运输服务
ru	Наземная доставка по России	18	44	services/kompleksnaya_dostavka_gruzov/nazemnaya_dostavka_po_rossii	2013-03-17 21:43:19.035075+04	nazemnaya_dostavka_po_rossii	f						Наземная доставка по России
zh-cn	俄罗斯陆路运输	18	46	services/kompleksnaya_dostavka_gruzov/nazemnaya_dostavka_po_rossii	2013-03-17 21:43:28.84702+04	nazemnaya_dostavka_po_rossii	f	\N	\N				俄罗斯陆路运输
en	ON-CARRIAGE IN RUSSIA	18	45	services/kompleksnaya_dostavka_gruzov/nazemnaya_dostavka_po_rossii	2013-03-17 21:43:25.597825+04	nazemnaya_dostavka_po_rossii	f	\N	\N				ON-CARRIAGE IN RUSSIA
en	TERMINALS AND WAREHOUSES	19	48	services/kompleksnaya_dostavka_gruzov/terminalnye_i_skladskie_uslugi	2013-03-17 21:45:00.503951+04	terminalnye_i_skladskie_uslugi	f	\N	\N				TERMINALS AND WAREHOUSES
ru	Терминальные и складские услуги	19	47	services/kompleksnaya_dostavka_gruzov/terminalnye_i_skladskie_uslugi	2013-03-17 21:44:56.267022+04	terminalnye_i_skladskie_uslugi	f	\N	\N				Терминальные и складские услуги
zh-cn	码头及仓储服务	19	49	services/kompleksnaya_dostavka_gruzov/terminalnye_i_skladskie_uslugi	2013-03-17 21:45:05.962989+04	terminalnye_i_skladskie_uslugi	f	\N	\N				码头及仓储服务
ru	Таможенная очистка грузов из Китая	7	14	services/tamozhennoe_oformlenie	2013-03-12 16:45:38.717986+04	tamozhennoe_oformlenie	f			таможенная очистка грузов из китая	Таможенная очистка грузов из Китая	Таможенная очистка грузов из Китая	Таможенная очистка
zh-cn	Услуги по таможенному оформлению импорта из КНР	20	52	services/tamozhennoe_oformlenie/tamozhennaya_ochstka_importa_iz_knr	2013-03-17 21:47:34.561834+04	tamozhennaya_ochstka_importa_iz_knr	f	\N	\N				来自中国货物的海关通关进口手续
zh-cn	来自中国货物的海关通关进口手续	7	60	services/tamozhennoe_oformlenie	2013-03-18 00:18:17.43815+04	tamozhennoe_oformlenie	f						清关服务
ru	Бизнес услуги в Китае	13	25	services/soprovozhdenie_biznesa	2013-03-17 16:28:05.557247+04	soprovozhdenie_biznesa	f			бизнес услуги в китае, ваш представитель в китае	Группа компаний ГКС окажет вам бинес услуги в Китае	бизнес услуги в китае, ваш представитель в китае	Бизнес услуги в Китае
ru	Услуги	4	8	services	2013-03-12 12:53:14.804523+04	services	f					Доставка грузов из Китая, морские и железнодорожные перевозки из Китая	
ru	Поиск производителей в Китае	23	63	goods	2013-03-18 00:43:30.591467+04	goods	f			поиск производителей в китае	Поиск производителей в Китае	Поиск производителей в Китае	Товары
en	BUSINESS SUPPORT	13	26	services/soprovozhdenie_biznesa	2013-03-17 16:28:11.278012+04	soprovozhdenie_biznesa	f						BUSINESS SUPPORT
en	YOUR REPRESENTATIVE IN CHINA	16	35	services/soprovozhdenie_biznesa/predstavitel_v_kitae	2013-03-17 18:34:07.939849+04	predstavitel_v_kitae	f	\N	\N				REPRESENTATION IN CHINA
zh-cn	您的驻中国代表处	16	36	services/soprovozhdenie_biznesa/predstavitel_v_kitae	2013-03-17 18:34:11.20265+04	predstavitel_v_kitae	f	\N	\N				您的驻中国代表处
ru	Ваш представитель в Китае	16	34	services/soprovozhdenie_biznesa/predstavitel_v_kitae	2013-03-17 18:33:58.496261+04	predstavitel_v_kitae	f			ваш представитель в китае	Ваш представитель в Китае	ваш представитель в китае	Ваш представитель в Китае
ru	Юридические и финансовые услуги	15	31	services/soprovozhdenie_biznesa/yuridicheskie_i_finansovye_uslugi	2013-03-17 18:19:02.272718+04	yuridicheskie_i_finansovye_uslugi	f	\N	\N				Юридические и финансовые услуги
en	 LEGAL AND FINANCIAL SERVICES	15	32	services/soprovozhdenie_biznesa/yuridicheskie_i_finansovye_uslugi	2013-03-17 18:19:09.421736+04	yuridicheskie_i_finansovye_uslugi	f	\N	\N				LEGAL AND FINANCIAL SERVICES
zh-cn	法律及金融服务	15	33	services/soprovozhdenie_biznesa/yuridicheskie_i_finansovye_uslugi	2013-03-17 18:19:13.236326+04	yuridicheskie_i_finansovye_uslugi	f	\N	\N				法律及金融服务
ru	Консолидация грузов из Китая	14	28	services/soprovozhdenie_biznesa/konsolidaciya_gruzov	2013-03-17 18:09:07.382132+04	konsolidaciya_gruzov	f	\N	\N	Консолидация грузов из китая	Консолидация грузов из Китая	Консолидация грузов из китая	Консолидация грузов из Китая
en	CARGO CONSOLIDATION	14	29	services/soprovozhdenie_biznesa/konsolidaciya_gruzov	2013-03-17 18:09:11.915271+04	konsolidaciya_gruzov	f	\N	\N				CARGO CONSOLIDATION
zh-cn	从中国拼柜	14	30	services/soprovozhdenie_biznesa/konsolidaciya_gruzov	2013-03-17 18:09:15.620172+04	konsolidaciya_gruzov	f						从中国拼柜
zh-cn	在中国的商务服务	13	27	services/soprovozhdenie_biznesa	2013-03-17 16:28:14.94086+04	soprovozhdenie_biznesa	f						
en	 CUSTOMS	7	59	services/tamozhennoe_oformlenie	2013-03-18 00:18:11.937639+04	tamozhennoe_oformlenie	f						CUSTOMS
en	CLEARANCE OF GOODS	20	51	services/tamozhennoe_oformlenie/tamozhennaya_ochstka_importa_iz_knr	2013-03-17 21:47:30.720922+04	tamozhennaya_ochstka_importa_iz_knr	f	\N	\N				CLEARANCE OF GOODS
ru	Таможенное оформление грузов из Китая	20	50	services/tamozhennoe_oformlenie/tamozhennaya_ochstka_importa_iz_knr	2013-03-17 21:47:26.246897+04	tamozhennaya_ochstka_importa_iz_knr	f	\N	\N	таможенное оформление грузов из китая	Таможенное оформление грузов из Китая	Таможенное оформление грузов из Китая	Услуги по таможенной очистке импорта из Китая
en	CUSTOMS CONSULTING	17	40	services/tamozhennoe_oformlenie/konsultirovanie_po_voprosam_tamozhennogo_oformleniya	2013-03-17 18:48:44.986247+04	konsultirovanie_po_voprosam_tamozhennogo_oformleniya	f						CUSTOMS CONSULTING
zh-cn	海关清关咨询顾问	17	41	services/tamozhennoe_oformlenie/konsultirovanie_po_voprosam_tamozhennogo_oformleniya	2013-03-17 18:48:48.683635+04	konsultirovanie_po_voprosam_tamozhennogo_oformleniya	f	\N	\N				海关清关咨询顾问
ru	Консультирование по вопросам таможенного оформления	17	39	services/tamozhennoe_oformlenie/konsultirovanie_po_voprosam_tamozhennogo_oformleniya	2013-03-17 18:48:41.116194+04	konsultirovanie_po_voprosam_tamozhennogo_oformleniya	f	\N	\N	таможенное оформление грузов из китая, таможенная очистка грузов из китая	Таможенное оформление грузов из Китая	Таможенное оформление грузов из Китая	Консультирование по вопросам таможенного оформления
en	 COMMODITIES	23	64	goods	2013-03-18 00:43:54.403544+04	goods	f						Commodities
\.


--
-- Name: cms_title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_title_id_seq', 65, true);


--
-- Data for Name: cmsplugin_calendarentriesplugin; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_calendarentriesplugin (cmsplugin_ptr_id, year, month) FROM stdin;
\.


--
-- Data for Name: cmsplugin_contact; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_contact (cmsplugin_ptr_id, site_email, email_label, subject_label, content_label, thanks, submit, spam_protection_method, akismet_api_key, recaptcha_public_key, recaptcha_private_key, recaptcha_theme) FROM stdin;
\.


--
-- Data for Name: cmsplugin_customcontact; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_customcontact (cmsplugin_ptr_id, site_email, email_label, subject_label, content_label, thanks, submit, spam_protection_method, akismet_api_key, recaptcha_public_key, recaptcha_private_key, recaptcha_theme, name_label, phone_label, town_label) FROM stdin;
39	it-support2@ruscon.gcs-group.ru	Email *	Тема	Сообщение *		Отправить	0				clean	Ваше имя *	Телефон	Компания
117	it-support2@ruscon.gcs-group.ru	电子邮箱 *	您的主题标题	查询内容 *		Отправить	0				clean	您的名字 *	电话	公司名称及地址
115	it-support2@ruscon.gcs-group.ru	Email *	Subject	Message *		Отправить	0				clean	Name *	Phone	Company
\.


--
-- Data for Name: cmsplugin_file; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_file (cmsplugin_ptr_id, file, title) FROM stdin;
\.


--
-- Data for Name: cmsplugin_filer_image_thumbnailoption; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_filer_image_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
\.


--
-- Name: cmsplugin_filer_image_thumbnailoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cmsplugin_filer_image_thumbnailoption_id_seq', 1, false);


--
-- Data for Name: cmsplugin_filerfolder; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_filerfolder (cmsplugin_ptr_id, title, view_option, folder_id) FROM stdin;
29		simplelist	2
30		simplelist	3
31		simplelist	4
105		slideshow	2
106		slideshow	3
107		slideshow	4
\.


--
-- Data for Name: cmsplugin_filerimage; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_filerimage (cmsplugin_ptr_id, image_id, alt_text, caption_text, use_autoscale, width, height, alignment, free_link, page_link_id, description, image_url, thumbnail_option_id, crop, upscale, original_link, file_link_id, use_original_image, target_blank) FROM stdin;
\.


--
-- Data for Name: cmsplugin_googlemap; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_googlemap (city, title, cmsplugin_ptr_id, zoom, content, address, zipcode, lng, lat, route_planer, route_planer_title, width, height) FROM stdin;
\.


--
-- Data for Name: cmsplugin_latestentriesplugin; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_latestentriesplugin (cmsplugin_ptr_id, subcategories, number_of_entries, template_to_render) FROM stdin;
\.


--
-- Data for Name: cmsplugin_link; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_link (url, cmsplugin_ptr_id, name, page_link_id, mailto, target) FROM stdin;
\.


--
-- Data for Name: cmsplugin_picture; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_picture (url, image, cmsplugin_ptr_id, alt, page_link_id, "float", longdesc) FROM stdin;
\.


--
-- Data for Name: cmsplugin_queryentriesplugin; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_queryentriesplugin (cmsplugin_ptr_id, query, number_of_entries, template_to_render) FROM stdin;
40	1	0	includes/news_style.html
\.


--
-- Data for Name: cmsplugin_randomentriesplugin; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_randomentriesplugin (cmsplugin_ptr_id, number_of_entries, template_to_render) FROM stdin;
\.


--
-- Data for Name: cmsplugin_selectedentriesplugin; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_selectedentriesplugin (cmsplugin_ptr_id, template_to_render) FROM stdin;
\.


--
-- Data for Name: cmsplugin_snippetptr; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
\.


--
-- Data for Name: cmsplugin_teaser; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_teaser (description, title, url, image, cmsplugin_ptr_id, page_link_id) FROM stdin;
\.


--
-- Data for Name: cmsplugin_text; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_text (body, cmsplugin_ptr_id) FROM stdin;
<ul class="clients_animation_change">\n\t<li>\n\t\t<p>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a> | телефон в Шанхае\n\t\t</p>\n\t\t<p>\n\t\t\t<b>\n\t\t\t</b></p><p><b>\n\t\t\t\t+86-13601785570\n\t\t\t</b></p><b>\n\t\t\t<p>\n\t\t\t\t+86-21-58766741\n\t\t\t</p></b>\n\t\t<p></p>\n\t</li>\n\t<li>\n\t\t<p>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a> | телефон в Москве\n\t\t</p>\n\t\t<p>\n\t\t\t<b>\n\t\t\t</b></p><p><b>\n\t\t\t\t+7 495 740 1660\n\t\t\t</b></p>\n\t\t<p></p>\n\t</li>\n</ul>	20
我们的客户	36
<ul class="clients_animation_change">\n\t<li>\n\t\t<p>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a> | phone in Shanhai\n\t\t</p>\n\t\t<p>\n\t\t\t<b>\n\t\t\t</b></p><p><b>\n\t\t\t\t+86-13601785570\n\t\t\t</b></p><b>\n\t\t\t<p>\n\t\t\t\t+86-21-58766741\n\t\t\t</p></b>\n\t\t<p></p>\n\t</li>\n\t<li>\n\t\t<p>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a> | phone in Moscow\n\t\t</p>\n\t\t<p>\n\t\t\t<b>\n\t\t\t</b></p><p><b>\n\t\t\t\t+7 495 740 1660\n\t\t\t</b></p>\n\t\t<p></p>\n\t</li>\n</ul>\n	21
Наши услуги	37
<ul class="clients_animation_change">\n\t<li>\n\t\t<p>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a> | 上海电话\n\t\t</p>\n\t\t<p>\n\t\t\t<b>\n\t\t\t</b></p><p><b>\n\t\t\t\t+86-13601785570\n\t\t\t</b></p><b>\n\t\t\t<p>\n\t\t\t\t+86-21-58766741\n\t\t\t</p></b>\n\t\t<p></p>\n\t</li>\n\t<li>\n\t\t<p>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a> | 莫斯科电话\n\t\t</p>\n\t\t<p>\n\t\t\t<b>\n\t\t\t</b></p><p><b>\n\t\t\t\t+7 495 740 1660\n\t\t\t</b></p>\n\t\t<p></p>\n\t</li>\n</ul>\n	22
header_default.jpg	25
header_default.jpg	26
header_default.jpg	27
Our clients	35
Наши клиенты	34
<p>Просим Вас заполнить нижеуказанную форму запроса в нашу компанию. \nДля качественной, оперативной подготовки ответа по Вашему обращению просим максимально полно отразить информацию в соответствующих полях.</p>	38
GCS China	42
GCS China	43
GCS China	44
<table border="0" cellpadding="0" cellspacing="0">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td class="office1"><b>Офис в Шанхае:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t200120, Shanghai\n\t\t\t<br>\n\t\t\tEast LuJiaZui Rd 161,of 2312\n\t\t\t<br>\n\t\t\ttel. 0086-21-58766741\n\t\t\t<br>\n\t\t\tmobile 0086-13601785570\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office1"><b>Головной офис в России:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t353900, г.Новороссийск\n\t\t\t<br>\n\t\t\tул.Новороссийской Республики 14а \n\t\t\t<br>\n\t\t\tтел.+7 8617 676037,+7 8617 676047\n\t\t\t<br>\n\t\t\tфакс. +7 8617 678066\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office2"><b>Офис в Москве:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t119049, г.Москва\n\t\t\t<br>\n\t\t\tул.Донская 15\n\t\t\t<br>\n\t\t\tтел.+7 495 740 1660\n\t\t\t<br>\n\t\t\tфакс. +7 495 740 1660\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office2"><b>Офис в Санкт-Петербурге:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t190020, г.Санкт-Петербург\n\t\t\t<br>\n\t\t\tул.Бумажная 18,б/ц "Портал" офис 313\n\t\t\t<br>\n\t\t\tтел. +7 812 335 00 20\n\t\t\t<br>\n\t\t\tфакс.+7 812 335 00 21\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office2"><b>Представительство в г.Алматы (Казахстан)</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\tРеспублика Казахстан, 050009 г. Алматы\n\t\t\t<br>\n\t\t\tпр. Абая (уг. Радостовца) 151/115\n\t\t\t<br>\n\t\t\tБизнес Центр "Алатау", офис 810, 8 этаж\n\t\t\t<br>\n\t\t\tтел: +77272665645, \n\t\t\t<br>\n\t\t\tфакс: :+77272662864\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td>\n\t\t</tr>\n\t</tbody>\n</table>	47
<table border="0" cellpadding="0" cellspacing="0">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td class="office1"><b>Office in Shanghai:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t200120, Shanghai\n\t\t\t<br>\n\t\t\tEast LuJiaZui Rd 161,of 2312\n\t\t\t<br>\n\t\t\ttel. 0086-21-58766741\n\t\t\t<br>\n\t\t\tmobile 0086-13601785570\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office1"><b>Head Office in Russia:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t14a, Novorossiyskoy resp. str.,\n\t\t\t<br>\n\t\t\t353900, Novorossiysk, Russia\n\t\t\t<br>\n\t\t\ttel: +7(8617)676037, 678000(ext.432),\n\t\t\t<br>\n\t\t\tfax:+7(8617)678066\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office2"><b>Office in Moscow:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t15, Donskaya str.,\n\t\t\t<br>\n\t\t\t119049, Moscow, Russia\n\t\t\t<br>\n\t\t\ttel: +7 495 740 1660\n\t\t\t<br>\n\t\t\tfax: +7 495 740 1660\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office2"><b>Office in Saint Petersburg</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\toff 313,\n\t\t\t<br>\n\t\t\t18, Bumazhnaya str.,\n\t\t\t<br>\n\t\t\t190020, Saint Petersburg, Russia\n\t\t\t<br>\n\t\t\ttel.: +7 812 3350020\n\t\t\t<br>\n\t\t\tfax: +7 812 335 0021\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office2"> </td>\n\t\t</tr>\n\t</tbody>\n</table>	46
<table border="0" cellpadding="0" cellspacing="0">\n\t<tbody>\n\t\t<tr>\n\t\t\t<td class="office1"><b>Office in Shanghai:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t200120, Shanghai\n\t\t\t<br>\n\t\t\tEast LuJiaZui Rd 161,of 2312\n\t\t\t<br>\n\t\t\ttel. 0086-21-58766741\n\t\t\t<br>\n\t\t\tmobile 0086-13601785570\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office1"><b>Head Office in Russia:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t14a, Novorossiyskoy resp. str.,\n\t\t\t<br>\n\t\t\t353900, Novorossiysk, Russia\n\t\t\t<br>\n\t\t\ttel: +7(8617)676037, 678000(ext.432),\n\t\t\t<br>\n\t\t\tfax:+7(8617)678066\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office2"><b>Office in Moscow:</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\t15, Donskaya str.,\n\t\t\t<br>\n\t\t\t119049, Moscow, Russia\n\t\t\t<br>\n\t\t\ttel: +7 495 740 1660\n\t\t\t<br>\n\t\t\tfax: +7 495 740 1660\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office2"><b>Office in Saint Petersburg</b>\n\t\t\t<br>\n\t\t\t<br>\n\t\t\toff 313,\n\t\t\t<br>\n\t\t\t18, Bumazhnaya str.,\n\t\t\t<br>\n\t\t\t190020, Saint Petersburg, Russia\n\t\t\t<br>\n\t\t\ttel.: +7 812 3350020\n\t\t\t<br>\n\t\t\tfax: +7 812 335 0021\n\t\t\t<br>\n\t\t\t<a href="mailto:info@gcschina.ru">info@gcschina.ru</a></td><td width="20"> </td><td class="office2"> </td>\n\t\t</tr>\n\t</tbody>\n</table>	48
<p style="text-align: justify">While working with Chinese partners it is very important to know not only the nuances of the proposed draft of the contract,  but all possible  circumstances that will affect its performance by the Chinese side. Our company based on the knowledge of experienced professionals will help you to:<br />\n&bull; prepare and implement the conclusion of legal support to optimally meet your requirements of foreign trade contract<br />\n&bull; select and propose the most suitable tool for the financial transactions ofof your trade<br />\n&bull; register contracts in Russian Chamber of Commerce in China</p>\n<p style="text-align: justify">We look forward to working with you!<br />\nIf you have any queries please fill out a formal inquiry or call us by phone +86 21 58766741<br />\n</p>	73
header_default2.jpg	76
<p>&ldquo;全球集装箱服务&rdquo;集团公司（GCS）自1995年以来始终成功运作在国际物流市场。始建第一个俄罗斯南部集装箱航线及Forcon船代，今天我们已进入业内前十位，每年运输 200，000TEU。GCS是运输集团&ldquo;DELO&rdquo;在俄罗斯最大和增长最快的集团，并自2006年以来运作它的集装箱资产。GCS 7家代理中，物流和运输公司遍布在俄罗斯各主要港口和地区，国内外均有分部。</p>\n<p>GCS已经在中国物流市场有多年丰富经验，完成货物从中国工厂&ldquo;门口&rdquo;交付至俄罗斯和独联体客户&ldquo;门口&rdquo;的全方位的服务。</p>\n<p>自2008年11月在上海设立自己的分部&ndash; &ldquo;GCS-CHINA&rdquo;后，公司主要任务是为俄罗斯客户在中国提供包括全套货物运输，通关，外贸业务支持等一系列的完整服务。</p>\n<p>大家都知道有全能的合作伙伴这有多么重要，能够接受所有可能的挑战，与客户一同解决在中国遇到的外贸业务难题。任何参与外贸项目的成员都必须能够紧快地解决问题，以降低成本，尽量减少合同履约风险。</p>\n<p>我们的任务是 &mdash; 提供最完善的质量服务给你，从研究客户感兴趣的中国市场上的制造商到在俄罗斯指定仓库交货。我们提供有效的工具，以确保中国在合同，物流和财务领域对客户有利。</p>\n<p>国际物流领域15年的工作，我们始终致力于为客户开启国际贸易新平台。致力于在人们，公司和国家商务交往间建造桥梁。</p>	63
<p style="text-align: justify">Group of companies &laquo;Global Container Service&raquo; (GCS) has been successfully operating in the international freight market since 1995. Having started with the creation of the first container and liner agency &ldquo;Forcon&rdquo; in the South of Russia, today we have entered into top ten industry leaders with the volume of up to 200 thousand TEU per year. GCS is a daughter of one of the largest and fastest growing transportation companies in Russia - &quot;Delo&quot;, and since 2006 manages its container assets. As part of GCS there are 7 agencies, logistics and transportation companies represented in all major Russian ports and regions, and countries near and far abroad.GCS has a long experience in the Chinese logistics market, carrying a full range of services for the delivery of goods from a factory in China to clients in Russia and CIS countries.Since November 2008 in Shanghai is functioning own division - &quot;GCS-CHINA&quot;, whose main objective is to provide a complete package of services to Russian clients in China, including the integrated delivery of goods, customs clearance, full service of FEA-support in China. Everyone knows how important for customers to have a universal partner to perform the full range of challenges facing foreign company doing business with China. Any participant has to solve FEA problems as to reduce costs and to minimize risks in the execution of contracts. Our task is to provide you with the most complete and high quality crafted package of services ranging from studying the Chinese market and ending with the delivery of cargo to a warehouse in Russia. We offer effective tools to ensure FEA customers in China in the contract, logistics and financial agency services. Operating for 15 years on the international transport market, we strive to continuously open up new horizons for international trade, building bridges of cooperation and mutually beneficial business between people, companies and countries.</p>	62
<p>Консолидация грузов из Китая необходима, когда вам надо отправить в Россию контейнер с товарами, произведенными разными поставщиками. Компания GCS-CHINA имеет большой практический опыт предоставления этой услуги.<br />\nПодготовка всех необходимых документов и выполнение других формальностей по консолидации грузов проводится на наших складах в Китае.<br />\nУслуга осуществляется в несколько этапов:<br />\n- согласование с нами параметров вашего груза (масса, размер, содержание);<br />\n- расчет сроков и стоимости услуги;<br />\n- оформление необходимых товаросопроводительных документов;<br />\n- при необходимости мы организуем упаковку, переупаковку груза;<br />\n- организация непосредственно перевозки груза на наш склад в России;<br />\n- таможенная очистка груза.<br />\nПоручая нашей компании консолидацию грузов из Китая, вы сокращаете расходы на перевозку в сравнении с отправками курьерскими службами, экономите время и усилия на оформление сертификатов и разрешительных документов и получаете конкурентную стоимость услуги.<br />\nПо прибытии консолидированного груза из Китая во Владивосток, Новороссийск, Санкт-Петербург вы можете самостоятельно забрать его со склада или поручить нам доставку этого груза на ваш склад в любом городе России.<br />\n&nbsp;</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	69
<p style="text-align: justify">If you need to send the goods produced by different suppliers, we can offer you consolidation service in our warehouse in China. Upon cargo  arrival, you can either pick it up yourself from the warehouse or entrust us to handle inland delivery directly to your warehouse. <br />\nTransportation service of the consolidated cargoes are carried out in several stages <br />\n- Coordination with us the parameters of your goods (weight, size, content); <br />\n- Calculation of the time and cost of services; <br />\n- Registration of the necessary shipping documents; <br />\n- If necessary we will arrange packing, repacking goods;<br />\n- Organization of the consignment directly to our warehouse in Russia; <br />\n- Customs clearance. <br />\nEntrusting our company to ship your consolidated cargo, you reduce the cost of transport compared to those couriers companies, save time and effort on the issue of certificates and permits.</p>\n<p style="text-align: justify">We look forward to working with you! <br />\nIf you have any queries please fill out a formal inquiry or call us by phone +86 21 58766741<br />\n&nbsp;</p>	70
<p>如果您必须从不同的供应商处发货，我司可以建议在中国自有仓库组货拼柜至圣彼得堡。 货物抵达后您即可自行从仓库取货，也可由我司安排送货上门。</p>\n<p>散货运输服务由以下几项组成：</p>\n<ul>\n    <li>与您确认货物数据（重量，尺寸，内容）；</li>\n    <li>列出运输周期和报价；</li>\n    <li>制作相应货物运输文件单证；</li>\n    <li>如必须，我司可组织包装及重装；</li>\n    <li>组织货物运输至我司俄罗斯仓库；</li>\n    <li>货物清关手续。</li>\n</ul>\n<p>我司收到散货运输拖单后，您可减少在速递方面花的时间和精力，节省了在制作证书和许可证上花的时间和精力，获得有竞争力的报价与服务。</p>\n<p>我们欢迎与您携手合作！</p>\n<p>如果您有信息咨询，请填写&ldquo;申请表格&rdquo;或者致电______________________</p>	71
<p>В работе с китайскими партнерами весьма важно знать не только все нюансы предполагаемого к заключению торгового контракта, и возможные объективные обстоятельства, которые будут влиять на его исполнение китайской стороной. Наша компания, опираясь на знания опытных специалистов, поможет Вам:</p>\n<ul>\n    <li>подготовить к заключению и осуществить юридическое сопровождение оптимально отвечающего Вашим требованиям внешнеторгового контракта</li>\n    <li>подобрать и предложить наиболее подходящий Вам инструмент финансового осуществления сделки</li>\n    <li>осуществить регистрацию контрактов в представительствах ТПП Росии в Китае</li>\n</ul>\n<p>Будем рады сотрудничеству с Вами!</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	72
<p>Ваш представитель в Китае должен в совершенстве владеть китайским и английским языками, уметь вести переговоры и добиваться поставленных целей, разбираться в технологиях и контролировать качество товаров, знать правила ВЭД и законы КНР, хорошо разбираться в логистике и т. д.<br />\nПольза от такого сотрудника большая, но велики и расходы на его содержание &ndash; виза, съем квартиры и аренда офиса, оплата каналов связи, командировочные, наконец, его денежное вознаграждение.  На практике же первоначально запланированные расходы на содержание такого сотрудника в Китае увеличиваются еще &ndash; приходится нанимать секретаря и водителя с автомобилем.<br />\nОсобенно накладно постоянно содержать такого сотрудника, если необходимость в его услугах нерегулярная. И как вам поступить, чтобы не пострадали интересы дела?<br />\nВ таком случае более целесообразно поручить функции вашего представительства в Китае компании, подобной нашей. <br />\nПреимущества такого варианта для вас очевидны. <br />\nВо-первых, ваше представительство в Китае будет лишено влияния человеческого фактора - юридическое лицо, в отличие от физического, не заболеет, не попросится в отпуск и пр.<br />\nВо-вторых, в штате транспортной компании достаточно высококвалифицированных специалистов узкого профиля, которые выполнят ваши задания лучше, чем один специалист-универсал. <br />\nИ, в-третьих, сотрудничающая с вами транспортная компания заинтересована в успешном развитии вашего бизнеса. Доставляя ваши контейнеры в Россию, она увеличивает объемы своих грузоперевозок. <br />\nGCS-CHINA предлагает компаниям и бизнесменам из России и стран СНГ следующие услуги по представлению их интересов на территории КНР для осуществления надежного и эффективного взаимодействия с китайскими контрагентами:<br />\n- проведение маркетинговых исследований интересующих клиента сегментов китайского рынка;<br />\n- поиск потенциальных партнеров в Китае и всесторонняя оценка найденных предприятий;<br />\n- проведение коммерческих переговоров с производителем и достижение рамочных соглашений;<br />\n- получение от производителя и отправка клиенту требуемых образцов продукции;<br />\n- организация и участие в основных переговорах между клиентом с производителем;<br />\n- инспектирование китайских предприятий на предмет качества товара и упаковки;<br />\n- контроль сроков производства и отгрузки товара в адрес клиента;<br />\n- подготовка и проверка сопроводительной технической и грузовой документации;<br />\n- консультирование клиента по вопросам логистики, финансовых расчетов и законодательства КНР.<br />\nGCS-CHINA - ваш представитель в Китае.<br />\n&nbsp;</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	77
<p>Доставка контейнеров из Китая &ndash; главный профиль компании GCS-CHINA. Высокий профессиональный уровень наших сотрудников направлен на то, чтобы для отправки грузов выбирались самые оптимальные (значит, недорогие) транспортные схемы. Мы принципиально используем только белую растаможку грузов.&nbsp;<br />\nМы осуществляем доставку грузов контейнерами из Китая морским транспортом через порты Владивосток, Новороссийск и Санкт-Петербург и далее железнодорожным и автомобильным транспортом по России, с таможенной очисткой в этих и других городах, где есть таможенные посты. <br />\nОсновной задачей GCS-CHINA является предоставление полного пакета услуг для клиентов на территории Китая, включая комплексную доставку грузов, таможенное оформление, услуги по сопровождению ВЭД и бизнеса в Китае для российских и иностранных компаний.<br />\nДоставляя контейнеры из Китая, мы прилагаем все усилия для того, чтобы наши заказчики получали свои грузы в оговоренные сроки и в полной сохранности. И это нам, судя по постоянному увеличению числа клиентов и стабильному росту грузоперевозок, удается.<br />\nНашими услугами пользуются известные компании, названия которых сами по себе уже являются для нас отличными рекомендациями.<br />\nЕсли вам надо доставить контейнер из Китая, обращайтесь к нам &ndash; это будет верное решение. Ваш груз мы доставим от двери склада поставщика в Китае до двери вашего склада в России. <br />\nЧтобы узнать о нас более подробно и убедиться в нашей надежности, перейдите на страницу этого сайта, где рассказывается о группе компаний &laquo;Глобальный Контейнерный Сервис&raquo; (ГКС). Это &ndash; один из российских лидеров в отрасли грузоперевозок, китайским подразделением которого мы являемся. <br />\n</p>\n<p>Также будем вашим представителем, окажем бизнес услуги в Китае.</p>\n<p><a href="/company/">Далее о компании...</a></p>	58
<p style="text-align: justify">&ldquo;GCS CHINA&rdquo; is a daughter company of container holding corporation &ldquo;GLOBAL CONTAINER SERVICE&rdquo; which has been working in the transportation industry since the year of 1995. &ldquo;GCS&rdquo; Holding Company is a member of &ldquo;DELO GROUP&rdquo; &ndash; one of 10 biggest enterprises in the transportation industry in Russia. There are seven agencies, logistics and transportation companies as part of GCS represented in all major Russian ports and regions. GCS has a long experience in the Chinese logistics market, carrying a full range of services for the delivering goods &ldquo;from door to door&rdquo; for clients in Russia and CIS countries. Since November 2008, in Shanghai own division of the holding - &quot;GCS-CHINA&quot; was opened with the main purpose to provide a complete package of services to Russian clients in China, including the integrated delivery of goods, customs clearance, full service for support business in China. Our main task is to provide you with the most complete and high quality package of services ranging from studying the Chinese market and producers and ending with the delivery of cargo to a warehouse in Russia. We offer effective instruments to ensure FEA customers in China in the contract, logistics and financial agency aspects.Operating for 15 years on the international transport market, we strive to continuously open up new horizons for international trade, building bridges of cooperation and mutually beneficial business between people, companies and countries.</p>	59
<p>&ldquo;全球集装箱服务&rdquo;集团公司（GCS）自1995年以来始终成功运作在国际物流市场。始建第一个俄罗斯南部集装箱航线及Forcon船代，今天我们已进入业内前十位，每年运输 200，000TEU。GCS是运输集团&ldquo;DELO&rdquo;在俄罗斯最大和增长最快的集团，并自2006年以来运作它的集装箱资产。GCS 7家代理中，物流和运输公司遍布在俄罗斯各主要港口和地区，国内外均有分部。</p>\n<p>GCS已经在中国物流市场有多年丰富经验，完成货物从中国工厂&ldquo;门口&rdquo;交付至俄罗斯和独联体客户&ldquo;门口&rdquo;的全方位的服务。</p>\n<p>自2008年11月在上海设立自己的分部&ndash; &ldquo;GCS-CHINA&rdquo;后，公司主要任务是为俄罗斯客户在中国提供包括全套货物运输，通关，外贸业务支持等一系列的完整服务。</p>\n<p>大家都知道有全能的合作伙伴这有多么重要，能够接受所有可能的挑战，与客户一同解决在中国遇到的外贸业务难题。任何参与外贸项目的成员都必须能够紧快地解决问题，以降低成本，尽量减少合同履约风险。</p>\n<p>我们的任务是 &mdash; 提供最完善的质量服务给你，从研究客户感兴趣的中国市场上的制造商到在俄罗斯指定仓库交货。我们提供有效的工具，以确保中国在合同，物流和财务领域对客户有利。 国际物流领域15年的工作，我们始终致力于为客户开启国际贸易新平台。致力于在人们，公司和国家商务交往间建造桥梁。</p>	60
<p>\n\tДоставка контейнеров из Китая и других стран дальнего и ближнего зарубежья, а также грузоперевозки внутри России &ndash; главный профиль группы компаний &laquo;Глобальный Контейнерный Сервис&raquo; (ГКС).&nbsp;<br />\n\tГКС успешно работает на международном рынке грузоперевозок с 1995 года. Начав свой путь с создания первой на юге России контейнерной линии и линейного агентства Forcon, сегодня ГКС уверенно входит в российскую десятку лидеров отрасли. Годовые объемы грузоперевозок ГКС достигают 200 тыс. TEU (эквивалент двадцатифутового контейнера).<br />\n\tГКС входит в один из крупнейших и динамично растущих транспортных холдингов России &ndash; &laquo;Дело&raquo;, и с 2006 года управляет его контейнерными активами.<br />\n\tВ составе ГКС &ndash; 7-мь агентских и транспортных компаний, представленных во всех крупнейших российских портах и регионах, а также в странах ближнего и дальнего зарубежья.<br />\n\tГКС имеет собственную портовую инфраструктуру в Новороссийске, арендует склады и оборудование в портах Владивосток и Санкт-Петербург, располагает большим парком автомобилей-контейнеровозов.<br />\n\tГКС имеет многолетний опыт работы на китайском направлении. Доставка грузов из Китая стала еще более востребованной в связи с ростом торгово-экономических отношений между РФ и КНР и имеет устойчивую тенденцию к росту.<br />\n\tУвеличение объемов доставки грузов из Китая привело ГКС к решению, создать в КНР собственное подразделение. В ноябре 2008 года в Шанхае было зарегистрировано представительство ГКС &ndash; GCS-CHINA (на чьем сайте Вы сейчас находитесь).<br />\n\tВыбор места дислокации GCS-CHINA не случаен. Шанхайский порт &ndash; самый большой в Китае. Вместе с тем агенты GCS-CHINA находятся во всех крупных портах КНР, что придает деятельности этого подразделения ГКС всекитайский размах.<br />\n\tБудучи дочерней компанией, GCS-CHINA пользуется всеми широкими возможностями группы компаний &laquo;Глобальный Контейнерный Сервис&raquo; - лидера грузоперевозок, входящего в десятку самых крупных предприятий этой отрасли в России.<br />\n\tGCS-CHINA приобрела репутацию одного из лучших предприяти, осуществляющих доставку грузов из Китая в Россию. Причем не на каком-то одном направлении, а с охватом практически всех регионов и больших городов Российской Федерации.</p>\n<p>\n\t<a href="http://gcschina.ru">Вернуться на главную страницу сайта</a></p>\n<p>\n\t&nbsp;</p>\n<p>\n\t&nbsp;</p>\n	61
<p>&nbsp;Бизнес услуги в Китае</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	64
<p style="text-align: justify">&nbsp;The modern nature of business requires a range of services, providing maximum convenience for the customer dealing with foreign economic activity. Therefore, we offer to our partners not only complete logistics solutions, but carry a number of additional tasks that one can be learn if  he clicks on sections of interest</p>	65
<p>在与中国伙伴的合作中非常重要的不仅需要知道所有缔结贸易协定的要素，还需了解相关的客观情况，这将影响中方的执行。</p>\n<p>我司依托经验丰富的专业人员，就以下几方面向您提供帮助：</p>\n<ul>\n    <li>外贸合同缔结准备和法律支持；</li>\n    <li>筛选并提供您最合适的金融交易工具；</li>\n    <li>在俄罗斯工商会驻中国办事处进行合同登记。</li>\n</ul>\n<p>我们欢迎与您携手合作！</p>\n<p>如果您有信息咨询，请填写&ldquo;申请表格&rdquo;或者请致电__________________</p>	74
header_default3.jpg	75
<p style="text-align: justify">Our company offers services to represent your business in China and implement full and effective cooperation with their Chinese counterparts:<br />\n<br />\n&bull; Implementation of marketing research for client in targeted segments of the Chinese market<br />\n&bull; Search for potential partners in China and comprehensive assessment of enterprises<br />\n&bull; Conducting commercial negotiations with manufacturers and the achievement of the framework agreements<br />\n&bull; Obtaining required product samples<br />\n&bull; Organization and participation in the negotiations between clients and manufacturers<br />\n&bull; Inspection of Chinese enterprises for product quality and packaging<br />\n&bull; Control over the timing of production and shipment to the customer<br />\n&bull; Preparation and verification of accompanying technical documentation and freight<br />\n&bull; Consulting clients on logistics, financial settlement and legislation of the PRC</p>\n<p style="text-align: justify">We look forward to working with you!<br />\nIf you have any queries please fill out a formal request or call us by phone +86 21 58766741<br />\n&nbsp;&nbsp;</p>	78
<p>我司可向贵司提供在中华人民共和国境内设立代表处的服务，以便于充分有效地与中国同行及合作伙伴进行业务合作与发展：</p>\n<ul>\n    <li>针对客户感兴趣的领域进行市场营销调查分析；</li>\n    <li>寻找并评价在中国的潜在合作伙伴；</li>\n    <li>与供应商进行商业谈判，建立框架协议；</li>\n    <li>获取供货商样品和向客户递送产品样本；</li>\n    <li>为客户和供货商组织商务谈判；</li>\n    <li>对中国企业执行产品质量和包装验货；</li>\n    <li>监督生产周期，监督货物起运；</li>\n    <li>随同技术，货物文件的准备和检查；</li>\n    <li>为客户提供运输，财务和中国法规的顾问服务。</li>\n</ul>\n<p>我们欢迎与您携手合作！</p>\n<p>如果您有信息咨询，请填写&ldquo;申请表格&rdquo;或者请致电</p>	79
<p>Компнаия &laquo;Рускон&raquo; оказывает полный спектр услуг по организации железнодорожных отправок из Китая в Россию, применяя оптимальные логистические схемы, позволяющие клиентам получить свой груз в кратчайшие сроки. Наше премущество основывается на наличии большого парка собственных железнодорожных платформ, прямые договоры с жд операторами в Китае и РЖД, штат опытных сотрудников и широкая сеть представительств на территории России, Казахстана и КНР.</p>\n<p>Важным шагом по развитию железнодорожных маршрутов доставки грузов из Китая в Россию стало приобретение нами в 2008 году в собственность контейнерного терминала в Подмосковье (45 км от МКАД), принимающего и обрабатывающего все типы контейнеров. Емкость терминала в настоящее время &ndash; около 1000 TEU. На терминале располагаются крытые склады класса Б, в том чсиле СВХ, имеется протяженный железнодорожный фронт.</p>\n<p>C 2006 года ГКС развивает собственный парк железнодорожных фитинговых платформ. Сегодня он включает 336 едниц, работающих в составе маршрутных контейнерных поездов на направлениях из/в порты Новороссийска и Санкт-Петербурга. В наших планах стоит увеличение парка платформ до более 500 едениц.</p>\n<p>Если вам нужны железнодорожные перевозки из Китая, группа компаний ГКС выполнит ваш заказ быстро и качественно.</p>\n<p>Будем Вашим представителем в Китае, окажем бизнес услуги в Китае.</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	81
<p style="text-align: justify">Company &quot;Ruscon&quot; integrated in GCS holding provides a full range of services in rail shipments from China to Russia, using the best logistics solutions that enable customers to get their goods in the shortest possible time. Our advantage is based on the possession of a large fleet of own railway platforms, direct agreements with train operators in Chinese and Russian Railways, experienced staff and wide network of representative offices in Russia, Kazakhstan and China. An important step in the development of rail routes of delivery of goods from China to Russia was the acquisition by &ldquo;GCS&rdquo; in 2008 of container yard in the Moscow area (45 km from Moscow), receiving and processing all types of containers. The capacity of the terminal at the present time is about 1,000 TEU. There are covered warehouses of class B including bonded warehouses at the container yard. It has also a long rail front. Since 2006 GCS develops its own fleet of rail flatcars. Today it includes 336 units working in the container trains on the routes to / from the ports of Novorossiysk and St. Petersburg. Our plan is to increase fleet of platforms more than 500 units.</p>	82
<p>鲁斯科公司有能力提供中国到俄罗斯全程铁路运输服务，最佳的物流解决方案，使客户能够在最短时间里得到他们的货物。我们拥有自己的一个火车站月台和运输平台，在中国和俄罗斯与铁路运营商直接签约，拥有经验丰富的员工团队，在俄罗斯，哈萨克斯坦和中国都有 自己的代表处分布。</p>\n<p>针对来自中国的货物运送到俄罗斯铁路业务而发展的重要一步，是我们在2008年拥有了自己的集装箱站台和堆场，莫斯科地区的集装箱码头（距莫斯科45公里），接收和处理所有类型的集装箱。目前容量是 1000 TEU。在堆场室内仓库为B级，包括临时仓库，专用铁路轨道和站台。</p>\n<p>从2006年GCS公司发展了自己的车皮。今天，它拥有336 个单位的集装箱火车运输平台服务在新罗西斯克和圣彼得堡站点。在我们的计划里，运输平台将增加至500多个单位。</p>	83
<p>GCS 集团公司是俄罗斯鲁斯科最大一家运输代理，负责俄境内铁路运输。员工队伍有300多位专家分别位于9家地区分部，负责每年150 000 TEU的运输工作。</p>\n<p>依托我们自己的GCS运输资产，以及与领先的运输组织建立的伙伴关系，这为我们提供了一个集装箱进出口货物运输的俄中广泛专业服务范畴。</p>\n<p>在港口卸船货物理货后， 我们提供下一步交付到客户接收仓库或集装箱货车及拖卡服务。</p>\n<p>我们保证每个客户具有自己的解决方案，提供服务专员主管负责从A至Z的全程业务，和24小时业务回复。   以合理的价格提供可靠的交货，我们力求为客户提供运输解决方案，满足您的业务需求。</p>	95
<p>Если вы давно знакомы с контейнерными перевозками, либо только собираетесь отправить свой первый контейнер из Китая, то уже наверняка знаете, как важно иметь надежного и проверенного траспортного партнера. Международная торговля не терпит случайностей и ошибок. Сегодня ГКС - это компания, которой вы можете доверить доставку контейнера из Китая. Наша команда - это более 400 лучших специалистов транспортной отрасли России, работающих в крупнейших городах и портах нашей страны и за рубежом. <br />\nМы осуществляем мультимодальные перевозки грузов из любой точки Китая в любую точку России по согласованному с вами маршруту морским, железнодорожным, автомобильным транспортом. Мы оперируем обширными парками собственных автоконтейнеровозов и фитинговых платформ, минимизируя издержки и неоправданные расходы по сквозным доставкам. Помимо транспортировки складские подразделения нашего холдинга предлагают качественный сервис по сортировке, перевеске, переупаковке и маркировке грузовых мест.<br />\nМы можем в кратчайшие сроки подать контейнер под погрузку в любой точке Китая и обеспечить подробное информирование Клиента о маршруте движения и месте нахождения груза.<br />\nВ вашем бизнесе принципиальны сроки доставки контейнера из Китая?  Мы предлагаем наиболее оптимальные решения ваших задач. <br />\nНаправьте нам запрос и убедитесь сами.<br />\nТакже будем вашим представителем, окажем бизнес услуги в Китае.<br />\n</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	84
<p style="text-align: justify">If you have been familiar with container business or just want to ship your first container, you must have known how important it is to have a reliable and trusted partner in this case. International trade business is not tolerant to faults and carelessness. Today, &quot;GCS&quot; &ndash;is the company you can trust. Our team - it's more than 700 top professionals of the transport industry in Russia, operating in major cities and ports of our country and abroad. As one of the largest logistics operators in the Russian market, we constantly seek new solutions for our customers based on their priority requirements and conditions. Container shipping from China to Russia is one of the priorities of our company. We carry out multimodal transportation from all over China to anywhere in Russia by sea, rail and road. We operate an extensive park of our own container platforms, trucs, minimizing the risk of an unnecessary costs on deliveries. We can promptly provide a container for shipment anywhere in China and inform clients about its traffic route and location of cargo. We offer the best solutions to your problems. Send us a request and see yourself!</p>	85
<p>不管您是早已熟悉集装箱运输，还是准备发送第一个集装箱，你肯定知道，一个可靠和值得信赖的运输代理有多麽重要。国际贸易不允许意外和错误的发生。今天，&ldquo; GCS&rdquo; 公司&mdash; 这是一家您可以信赖的公司。我们的团队 &ndash; 一个拥有超过</p>\n<p>400名俄罗斯运输业专家，在各大城市和国内外主要港口工作。</p>\n<p>作为在俄罗斯市场最大的物流运营商之一，我们始终不断地为我们客户的需求寻求新的优先解决方案。</p>\n<p>我司主业是中俄之间集装箱运输业务。 我们从中国任何地方起运，以海铁陆多式联运送达至俄罗斯的任一网点。我们经营全方位自有运输车队，减少因间接运输而产生的成本和的风险。除了仓储运输服务，我们的物流团队还可为您提供高质量的分票，称重，重新包装和标签封装服务。</p>\n<p>我们可以在最短的时限里在中国境内为客人提柜至网点，并时刻将流转信息通报给客户。</p>\n<p>您的商务里交货时限是最重要原则？ 针对询问及时的反馈对您重要与否？我们为你的任务提供最佳解决方案。 发送您的询问至: ___________您将得到答案（邮箱地址）。</p>	86
<p>Таможенная очистка товаров &ndash; это обязательное и самое непростое условие осуществления торговых импортно-экспортных операций для всех участников ВЭД (Внешне-экономической деятельности) на территории Российской Федерации. Компании, сотрудничающие с китайскими партнерами, заключающие международные контракты, открывающие паспорта сделки в своих банках знают, что таможенная очистка грузов6 произведенных в КНР, - это один из наиболее сложных процессов при организации международных прямых и мультимодальных перевозок независимо от типа растамаживаемого груза. Чтобы осуществить услугу таможенного оформления (растаможить груз) с минимальными затратами и максимально быстро требуются знания не только таможенного законодательства, но и все нюансы, возникающие при таможенной очистке в различных таможенных режимах и органах. Если Вам необходимы услуги таможенного оформления для ввоза товаров и оборудования, доставке и растаможке грузов и товаров или есть вопросы, Вы можете заполнить форму заявки или позвонить по телефону.</p>\n<p>Наша компания поможет растаможить ваш груз и наши менеджеры ответят на все Ваши вопросы применительно к Вашей поставке.</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	87
<p>海关货物通关 - 是强制性的，是从事贸易进口和出口业务的各贸易商在俄罗斯联邦（外国经济活动）最困难的条件。公司与中方合作伙伴合作，签订国际合同，在他们开设银行账户知道，为中国制造的货物清关。这是一个最复杂的过程，无论是国际直运还是多模式运输方式的货物类型。为贯彻落实海关通关以最少的成本（报关货物）和最快的服务，需要的不仅是海关法规知识，还有所有在各海关通关制度和机构里可能出现的细节，如您需要进口商品及设备海关清关手续服务或有任何疑问，请您填写申请表格或致电______________.我司将全权负责此业务并为您提供专员负责您的货物。</p>\n<p>请致电电话专线_________________或直接在网站填写资料_________________</p>	89
<p>Компании ГКС обслуживают контейнерные перевозки крупнейших российских и международных компаний.</p>\n<p>Перевозка контейнеров из Китая - наш главный профиль</p>	102
<p>GCS renders various transportation services to multiple Russian and international accounts</p>	103
<p>Компании ГКС обслуживают контейнерные перевозки крупнейших российских и международных компаний.</p>	104
<p>Customs clearance is a mandatory and most difficult procedure of trade import and export operations for all participants of foreign trade activity in the Russian Federation. Companies which cooperate with Chinese partners, entering into international contracts, making banking transactions know that the clearance of goods made in China - is one of the most complex processes in the organization of international transportation regardless of types of cargo to be cleared. To carry out the customs clearance with minimal cost and as quickly as possible requires knowledge not only of the customs legislation, but all the nuances that arise when customs clearance is going on in the different customs regimes and institutions. If you require the services of customs clearance for import of goods and equipment or have any questions, please fill the application form or call + 86 21 58766741. Our company can help your with customs clearance and our managers will answer all your questions with regard to your case.Call us + 86 21 58766741 or make a request directly by filling the on-line inquiry.</p>	88
<p>Группа компаний ГКС является совладельцем ряда агентских компаний, представляющих интересы ведущих международных контейнерных линий. Прямые контракты с широким кругом ведущих океанских линий позволяют нам тщательно подбирать уровень цены и качества, оптимально отвечающего индивидуальным требованиям каждого заказчика перевозки.</p>\n<p>Мы организуем доставку грузов из любого порта Китая в порты&nbsp;Новороссийска, Санкт-Петербурга и Дальнего Востока, откуда далее груз доставлятся до двери клиента.</p>\n<p>Помимо стандартного набора услуг по перевозке контейнеров от порта до порта мы предлагаем широкий спектр дополнительных возможностей по планированию сроков и маршрутов доставки, использованию собственных международных транспортных документов, контролю отправок в китайских портах и в процессе перевозки. Благодаря использованию наших передовых информационных систем, наши клиенты в любое время могут отследить движение своих контейнеров.</p>\n<p>Неоспоримым преимуществом ГКС является солидная репутация надежного линейного агента, высокая деловая этика, а также передовые стандарты качества, полностью отвечающие, как высоким запросам наших партнёров, так и местным условиям транспортного бизнеса.</p>\n<p>Опираясь на свой богатый опыт и давние деловые связи с ведущими участниками внешней торговли, линейные агентства ГКС открывают своим принципалам возможности прямого взаимовыгодного диалога с крупнейшими российскими экспедиторами и грузовладельцами.</p>\n<p>Если вам нужна доставка контейнеров из Китая морем, группа компаний ГКС выполнит ваш заказ быстро и качественно.</p>\n<p>Перевозка контейнеров из Китая - наш главный профиль. Будем Вашим представителем, окажем бизнес услуги в Китае.</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	90
<p style="text-align: justify">Group of Companies &quot;GCS&quot; is a co-owner of several agency companies, representing the world's leading container lines. Direct contracts with a wide range of leading ocean lines allow us to carefully select the level of quality and price that meets the individual requirements of each customer. We will arrange delivery of goods from any port of China to the ports of Novorossiysk, St. Petersburg and the Far East, and furthercargois delivered to the customer's warehouse inland Russia. In addition to the standard set of services for the transportation of containers from port to port, we offer a wide range of additional features for planning the timing and routes of delivery, using own international transportation documents, control of shipments of Chinese ports and in transit. Through the use of our advanced information systems, our customers can track the movement of their containers at any time. The undeniable advantage of GCS is a solid reputation as a reliable line agent, high business ethics, as well as high standards of quality, which completely meet the high demands of our partners. Relying on its vast experience and longstanding business relationships with leading participants in foreign trade, line agencies GCS opens to its principals the possibility of direct and mutually beneficial dialogue with Russia's largest freight forwarders and shippers.</p>	91
<p>&ldquo;GCS&rdquo; 集团公司是一些国际主要航运公司的船代。与多家领先船公司的独家合约让我们有条件仔细选择价格和质量档次，可以最好地满足每个客户的个性化需求。</p>\n<p>我们组织运送货物从任何中国港口至新罗西斯克，圣彼得堡和远东地区，那里的中转港站将货物转运至最终客户。</p>\n<p>除了集装箱运输港口到港口的服务，我们还有规划时间和制定送货路线等广泛附加功能，使用自己的国际运输单证，中国港口起运和交通运输监督。我们通过先进的信息系统的使用，客户可随时跟踪其集装箱的流转。</p>\n<p>GCS无可否认是一个可靠的班轮代理，高商业道德，以及先进的质量标准，全面具有作为我们合作伙伴和当地运输条件的高要求，良好声誉。</p>\n<p>以雄厚经验和工作阅历在对外贸易中处于领先者，GCS船代拥有与俄罗斯最大货运代理及付货人直接对话的可能性。</p>	92
<p>В состав группы компаний ГКС входит компания &laquo;Рускон&raquo; - один из крупнейших транспортных экспедиторов и операторов контейнерных перевозок на территории России. Профессиональная команда компании наcчитывает более 300 специалистов в 9-ти региональных офисах и обслуживает ежегодно до 150 000 TEU.</p>\n<p>Опираясь на собственные транспортные активы ГКС, а также на партнерские связи с ведущими траснпортными организациями, мы оказываем широкий спектр профессиональных услуг по доставке и перевалке контейнеров как по импортным, так и по экспортным грузопотокам на российско-китайском направлении.</p>\n<p>После выгрузки и обработки грузов в портах мы осуществляем дальнейшую их доставку до склада клиента собственными автоконтейнеровозами или контейнерными поездами</p>\n<p>Мы гарантируем индивидуальный подход к каждому клиенту, предоставляя персональных менеджеров, курирующих перевозки от А до Я и круглосуточно доступных для решения всех оперативных вопросов. Предлагая надежную доставку по оптимальным ценам, мы стремимся обеспечить транспортные решения, максимально отвечающие специфике Вашего бизнеса.</p>\n\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	93
<p style="text-align: justify">GCS group of companies includes the company &quot;Ruscon&quot; - one of the largest freight forwarders and container operators in Russia. A professional team of more than 400 experts working in 9 regional offices and handles annually up to 150 000 TEU. Relying on its own transportation assets as well as on partnerships with leading logistic organizations, we provide a wide range of professional services for the delivery and transshipment of containers as for import and export cargoes at the Russian-Chinese transportation routes. After unloading and handling of containers at the ports we carry themout further to customers&rsquo; own warehouses. We guarantee individual approach to each client, providing a personal manager in charge of transport from A to Z and available around the clock to resolve all operational issues. Offering reliable delivery at reasonable prices, we strive to provide transport solutions fully meet the specifics of your business.</p>	94
<p>Холдинг ГКС выступает крупнейшим партнером и совладельцем ряда ведущих российских портовых операторов. Опираясь на обширный опыт тесной работы и сотрудничества с портовиками, компании, входящие в состав ГКС, гарантирует своим клиентам высокий уровень сервиса и предлагают самые широкие возможности по обработке контейнеров в портах Новороссийска, Санкт-Петербурга, Восточного.</p>\n<p>Мы предлагаем услуги более, чем 60-ти внепортовых контейнерных терминалов по всей территории России и азиатской части СНГ. В Новороссийске наша компания располагает единственным в России специализированным припортовым контейнерным терминалом мощностью 60 тысяч TEU/год.</p>\n<p>C 2008 года ГКС запустал в работу собственный контейнерно-логистический терминал в ближнем Помосковье. Терминал полностью оборудован для обработки автоконтейнеровозов и поездов, а также располагает складом временного хранения для размещения грузов в контейнерах и на паллетах под таможенным контролем.</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	96
<p style="text-align: justify">GCS is a major partner and co-owner of a number of leading Russian port operators. Relying on extensive experience of working closely and co-operation with ports, companies of the GCS group provide their clients with the highest level of service and offer the best opportunities for container handling in ports of Novorossiysk, St. Petersburg and portVostochny. We offer services in more than 60 container outportterminals throughout Russia and CIS counties. In Novorossiysk our company has Russia's only specialized port container terminal with capacity of 60 000 TEU / year. Since 2008 GCS- owned container terminal in Moscow&rsquo;s suburban Lvovo started fuctioning. The terminal is fully equipped to handle trucks and block-trains, also has a warehouse for temporary storage for cargo in containers and on pallets under customs supervision.</p>	97
<p>GCS控股公司是俄罗斯几个主要港口运营商最大的合作伙伴和合伙人。以广泛的工作经验，密切与港口运营商，公司合作，以保证给客户提供高质量服务水准和提供在新罗西斯克，圣彼得堡，东方港的港口货柜服务。</p>\n<p>我们提供共计超过60个的俄罗斯及独联体国家港外集装箱堆场。在新罗西斯克，我们公司有俄罗斯唯一的私有集装箱码头，港口集装箱码头能力在60,000 TEU /年，。</p>\n<p>自2008始GCS在莫斯科近郊建立了自己的专用集装箱物流码头。码头堆场设施齐全，完全适合汽运和货车物流工作需要。  并且同样可以进行临时仓储，完成海关监管装柜及上托盘。</p>	98
<p>Таможенный сервис группы ГКС динамично развивается с 2005 года. Наша компания имеет лицензию общероссийского таможенного брокера, таможенного перевозчика и СВХ, и осуществляет процедуры по таможенному оформлению товаров в портах Новороссйска, Санкт-Петербурга, Дальнего Востока и в Мосвке. Опираясь на богатый многолетний опыт работы в этой сфере, мы предлагаем полный спектр услуг декларирования грузов, импортируемых из Китая.</p>\n<p>Мы работаем со всей номенклатурой импортных товаров, доставляемых в контейнерах, оптимизируя затраты грузополучателей, сокращая время нахождения грузов на территории потровых и таможенных терминалов. При необходимости выполняется сертификация товаров.</p>\n<p>Наши аттестованные декларанты всегда готовы проконсультировать Вас по вопросам оформления и предложить оптимальные решения по доставке и таможенной очиске Ваших грузов.</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	99
<p style="text-align: justify">Customs clearance service of GCS has been dynamically growing since 2005. Our company hasthe nationwide licence of customs broker, customs carrier and bonded warehouses operator, and carries out procedures for customs clearance of goods at ports of Novorossiysk, St. Petersburg, the Far East and in Moscow. Having many years of experience in this area, we offer a full range of services for the declaration of goods imported from China. We deal with all kinds of imported goods to be delivered in containers, optimizing costs for consignees, reducing the cargo storagetime at the customs terminals. If necessary, certification of products is performed. Our certified staff is always ready to advise you on declaration issues and offer the best solutions for the delivery and customs clearance of your goods.</p>	100
<p>Таможенный сервис группы ГКС динамично развивается с 2005 года. Наша компания имеет лицензию общероссийского таможенного брокера, таможенного перевозчика и СВХ, и осуществляет процедуры по таможенному оформлению товаров  в портах Новороссйска, Санкт-Петербурга, Дальнего Востока и в Мосвке. Опираясь на богатый многолетний опыт работы в этой сфере, мы предлагаем полный спектр услуг декларирования грузов, импортируемых из Китая.\n   <p>  Мы работаем со всей номенклатурой импортных товаров, доставляемых в контейнерах, оптимизируя затраты грузополучателей, сокращая время нахождения грузов на территории потровых и таможенных терминалов. При необходимости выполняется сертификация товаров.\n<p>     Наши аттестованные декларанты всегда готовы проконсультировать Вас по вопросам оформления и предложить оптимальные решения по доставке и таможенной очиске Ваших грузов.\n	101
<p>\n\tКомпания&nbsp; &laquo;Global&nbsp; Container Service China&raquo; &nbsp;предлагает&nbsp; профессиональные&nbsp; сюрвейерские услуги&nbsp; в Китае.&nbsp; Мы осуществляем различные виды проверок грузов:</p>\n<ol>\n\t<li>\n\t\tПроверка товара перед отгрузкой в соответствии &nbsp;требованиями ISO 2859 - Qality Standart</li>\n</ol>\n<ul>\n\t<li>\n\t\tИнспекция контейнера (плохое состояние, дыры, водотечность и т.п.) на предмет пригодности к перевозке;</li>\n\t<li>\n\t\tИнспекция содержимого коробки каждого наименования товара и счет единиц товара внутри упаковки;</li>\n\t<li>\n\t\tСчет количества упаковок каждого наименования товара в соответствии с отгрузочными документами;</li>\n\t<li>\n\t\tВзвешивание каждого наименования (Брутто, Тара);</li>\n\t<li>\n\t\tПроверка качеств товара в соответствии с тех.заданием;</li>\n\t<li>\n\t\tОсмотр состояния&nbsp; упаковки во время загрузки в контейнер;</li>\n\t<li>\n\t\tФотофиксация укладки товара, пломб на загруженном контейнере;</li>\n\t<li>\n\t\tПроверка считываемости штрих-кодов специальным сканнером.</li>\n</ul>\n<p>\n\tПо окончании всех работ мы предоставляем сюрвейерский отчет с подробным описанием состояния груза на момент проведения инспекции, а также все необходимые фотографии.</p>\n<ol>\n\t<li value="2">\n\t\tПроверка товара перед отгрузкой с промежуточными выездами на фабрику ( инлайн проверка ).</li>\n</ol>\n<ul>\n\t<li value="2">\n\t\tВыезд на фабрику до начало производстава и проверка комплектующих ( соответствия материалов &nbsp;с утвержденными образцами)</li>\n\t<li value="2">\n\t\tФинальная проверка перед отгрузкой &nbsp;</li>\n</ul>\n<p>\n\tВсе наши сотрудники обладают высоким уровнем китайского языка, имеют опыт работы с ведущими российскими компаниями, осуществляющими внешнеэкономическую деятельность с КНР.&nbsp;</p>\n	108
<p>Таможенная очистка грузов из Китая &nbsp;</p>\n<p>Если у Вас есть к нам запрос, то просим заполнить <a href="/order/">формализованную заявку</a>.</p>	111
<p style="text-align: justify">Customs clearance service of GCS has been dynamically growing since 2005. Our company hasthe nationwide licence of customs broker, customs carrier and bonded warehouses operator, and carries out procedures for customs clearance of goods at ports of Novorossiysk, St. Petersburg, the Far East and in Moscow. Having many years of experience in this area, we offer a full range of services for the declaration of goods imported from China. We deal with all kinds of imported goods to be delivered in containers, optimizing costs for consignees, reducing the cargo storagetime at the customs terminals. If necessary, certification of products is performed. Our certified staff is always ready to advise you on declaration issues and offer the best solutions for the delivery and customs clearance of your goods.</p>	112
<p>GCS集团 海关服务是从2005年开始发展的。我司拥有全俄罗斯海关特许经营许可证，海关承运人和临时仓库， 在新罗西斯克港口，圣彼得堡港口，远东和莫斯科合法办理货物通关手续 。依托多年业内工作丰富经验， 我司可提供全套从中国进口货物的报关相关业务服务。</p>\n<p>我们经营所有类别集装箱运载的进口货物，优化收货人的支出成本，减少货物在码头和海关仓库的堆放时间。在必须的情况下，还可为您提供相关货物的商品认证。</p>\n<p>我们的认证报关部门随时准备为您提供建议，设计解决方案；为您的货物快速通关提供便利。</p>	113
<p>Please fill in the form below</p>	114
<p>请您在电脑里填写下列申请表格。\n为了保证质量，及时对您的咨询进行反馈，请在相应空格内填写完整的信息。</p>	116
header_default2.jpg	118
header_default2.jpg	119
header_default3.jpg	120
header_default3.jpg	121
header_default4.jpg	122
header_default4.jpg	123
<p><br />\nНаша компания поможет вам в поиске производителей в Китае на всей его территории. Известно, что производителей одного и того же наименования товара в Китае огромное количество. По вашим критериям мы подберем для вас оптимального партнера и организуем логистику его поставок на ваш склад в России.&nbsp;<br />\nПеречень уже отработанных нами товарных поставок довольно широк. Вот некоторые из них:<br />\n- радиаторы отопления алюминиевые<br />\n- фитинги латунные и прочие изделия сантехнические <br />\n- смесители для воды<br />\n- пленка ПВХ<br />\n- запчасти для легковых и грузовых авто<br />\n- гардины для штор<br />\n- аксессуары для сотовых телефонов <br />\n- аккумуляторные батареи<br />\n- осветительное оборудование<br />\n- антенны<br />\n- автомобильные фары<br />\n- ламинат<br />\n- обувь<br />\n- сувенирная продукция<br />\n- ручной инструмент<br />\n- душевые кабины без насосов<br />\n- сварочное оборудование<br />\n- металлообрабатывающее оборудование<br />\n- термопластавтоматы<br />\n- экструзионное оборудование<br />\n- металлические двери<br />\n- керамогранит, натуральный камень <br />\n- детские игрушки и т.д.</p>\n<p>При обработке полных контейнерных партий указанных наименований мы добиваемся от китайских производитетелей наиболее оптимальных цен.</p>\n<p>Будем рады сотрудничеству с вами, поможем в поиске производителей в Китае.&nbsp;<br />\nПросим заполнить формализованный запрос или позвонить нам по телефонам, указанным на сайте.</p>	125
<p style="text-align: justify">Our company will help you in finding manufacturers in China throughout its territory. It is known that there are many producers of the same name of goods in China. According to your criteria we will select the best partner for you and arrange logistics of its delivery to your warehouse in Russia. There is a wide list of items we have already worked out. Here are some of them:  aluminum radiators, brass fittings, taps for water , PVC film,  spare parts for cars and trucks,  curtains, cell phone accessories, batteries, lighting equipment, car headlights, laminate, shoes, souvenirs, hand tools, shower cabins,  welding equipment, metalworking equipment, molding - extrusion equipment, metal doors, granite tiles, natural stone, toys, etc.<br />\nWhen handling full container lots of these items we manage to have best prices for.<br />\nWe look forward to working with you, help you in finding manufacturers in China. Please fill out a formal inquiry or call us at phone numbers listed on the site.<br />\n<br />\n</p>	126
\.


--
-- Data for Name: cmsplugin_zinnia_latestentriesplugin_authors; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_zinnia_latestentriesplugin_authors (id, latestentriesplugin_id, user_id) FROM stdin;
\.


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cmsplugin_zinnia_latestentriesplugin_authors_id_seq', 1, false);


--
-- Data for Name: cmsplugin_zinnia_latestentriesplugin_categories; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_zinnia_latestentriesplugin_categories (id, latestentriesplugin_id, category_id) FROM stdin;
\.


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cmsplugin_zinnia_latestentriesplugin_categories_id_seq', 1, false);


--
-- Data for Name: cmsplugin_zinnia_latestentriesplugin_tags; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_zinnia_latestentriesplugin_tags (id, latestentriesplugin_id, tag_id) FROM stdin;
\.


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cmsplugin_zinnia_latestentriesplugin_tags_id_seq', 1, false);


--
-- Data for Name: cmsplugin_zinnia_selectedentriesplugin_entries; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY cmsplugin_zinnia_selectedentriesplugin_entries (id, selectedentriesplugin_id, entry_id) FROM stdin;
\.


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cmsplugin_zinnia_selectedentriesplugin_entries_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2013-03-07 16:12:02.790176+04	1	33	1	Компания	1	
2	2013-03-07 16:12:44.447655+04	1	33	1	Компания	2	Изменен published,in_navigation и moderator_state.
3	2013-03-07 16:15:34.643429+04	1	33	2	Global Placeholder	1	
4	2013-03-07 16:15:43.054932+04	1	33	2	Global Placeholder	2	Изменен template и moderator_state.
5	2013-03-07 16:15:53.002881+04	1	33	2	Global Placeholder	2	Изменен reverse_id и moderator_state.
6	2013-03-11 11:17:25.207143+04	1	33	1	Компания	2	Изменен title,slug,language и moderator_state.
7	2013-03-11 13:24:54.655913+04	1	33	1	Компания	2	Изменен moderator_state.
8	2013-03-11 13:30:28.567906+04	1	42	1	phone_ru	1	
9	2013-03-11 13:30:35.292298+04	1	33	1	Компания	2	Изменен moderator_state.
10	2013-03-11 13:43:48.127116+04	1	33	1	Компания	2	Изменен moderator_state.
11	2013-03-11 13:49:42.781103+04	1	42	1	phone_ru	2	Ни одно поле не изменено.
12	2013-03-11 13:50:56.784248+04	1	42	2	phone_en	1	
13	2013-03-11 13:51:40.274271+04	1	42	3	phone_cn	1	
14	2013-03-11 13:52:50.61127+04	1	42	3	phone_cn	2	Изменен html.
15	2013-03-11 13:54:00.382609+04	1	33	1	Компания	2	Изменен title,slug,language и moderator_state.
16	2013-03-11 13:57:37.769892+04	1	33	1	中国工厂和俄罗斯及独联体客户"门"到"门"货物运送	2	Изменен language и moderator_state.
17	2013-03-11 17:44:22.516992+04	1	33	1	Компания	2	Изменен moderator_state.
18	2013-03-11 17:45:48.448726+04	1	33	1	Company	2	Изменен language и moderator_state.
19	2013-03-11 17:47:03.521295+04	1	33	1	Компания	2	Изменен moderator_state.
20	2013-03-11 17:47:12.959344+04	1	42	3	phone_cn	3	
21	2013-03-11 17:47:12.962318+04	1	42	2	phone_en	3	
22	2013-03-11 17:47:12.964051+04	1	42	1	phone_ru	3	
23	2013-03-11 17:50:07.978408+04	1	33	1	Компания	2	Изменен moderator_state.
24	2013-03-12 09:19:36.29305+04	1	33	3	Блог	1	
25	2013-03-12 09:19:52.989111+04	1	33	3	Блог	2	Изменен application_urls и moderator_state.
26	2013-03-12 09:20:20.597496+04	1	33	3	Блог	2	Изменен title,slug,language и moderator_state.
27	2013-03-12 09:20:27.435062+04	1	33	3	Блог	2	Изменен title,slug,language и moderator_state.
28	2013-03-12 09:20:34.450931+04	1	33	3	Blog	2	Изменен application_urls,language и moderator_state.
29	2013-03-12 09:20:45.22144+04	1	33	3	Blog	2	Изменен application_urls,language и moderator_state.
30	2013-03-12 12:43:23.784092+04	1	33	1	中国工厂和俄罗斯及独联体客户"门"到"门"货物运送	2	Изменен title,language и moderator_state.
31	2013-03-12 12:43:52.848374+04	1	33	1	Company	2	Изменен title,language и moderator_state.
32	2013-03-12 12:44:04.898121+04	1	33	1	Компания	2	Изменен title и moderator_state.
33	2013-03-12 12:53:14.915911+04	1	33	4	Услуги	1	
34	2013-03-12 12:53:30.929572+04	1	33	4	Услуги	2	Изменен published,in_navigation и moderator_state.
35	2013-03-12 13:03:50.26742+04	1	33	1	Home	2	Изменен language и moderator_state.
36	2013-03-12 14:34:02.285182+04	1	33	4	Услуги	2	Изменен title,slug,language и moderator_state.
37	2013-03-12 14:38:16.850325+04	1	33	4	Услуги	2	Изменен moderator_state.
38	2013-03-12 14:39:05.040035+04	1	33	2	Global Placeholder	2	Изменен title,slug,language и moderator_state.
39	2013-03-12 14:39:22.300793+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
40	2013-03-12 14:39:38.20106+04	1	33	2	Global Placeholder	2	Изменен title,slug,language и moderator_state.
41	2013-03-12 14:39:46.271694+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
42	2013-03-12 14:41:12.690717+04	1	33	4	Услуги	2	Изменен moderator_state.
43	2013-03-12 14:41:53.752774+04	1	33	4	Услуги	2	Изменен moderator_state.
44	2013-03-12 14:42:18.480592+04	1	33	4	Услуги	2	Изменен moderator_state.
45	2013-03-12 14:44:42.874766+04	1	33	5	Комплексная доставка контейнеров из Китая	1	
46	2013-03-12 14:45:21.830209+04	1	33	5	Комплексная доставка контейнеров из Китая	2	Изменен title и moderator_state.
47	2013-03-12 14:53:02.725982+04	1	33	6	Морские перевозки из Китая	1	
48	2013-03-12 15:00:01.228153+04	1	33	4	Услуги	2	Изменен reverse_id и moderator_state.
49	2013-03-12 16:45:38.72474+04	1	33	7	Таможенная очистка	1	
50	2013-03-12 16:46:53.151872+04	1	33	8	Железнодорожные перевозки из Китая	1	
51	2013-03-13 08:41:18.059787+04	1	33	9	Услуги по таможенной очистке импорта из Китая	1	
52	2013-03-13 15:24:44.365352+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
53	2013-03-13 15:25:51.088456+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
54	2013-03-13 15:38:05.46488+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
55	2013-03-13 15:39:47.240454+04	1	66	21	Pepsi	2	Изменен name.
56	2013-03-13 15:42:04.655133+04	1	66	3	PepsiCo	2	Изменен name.
57	2013-03-14 09:29:16.819123+04	1	33	5	Доставка контейнеров	2	Изменен title,slug,language и moderator_state.
58	2013-03-14 09:29:52.346255+04	1	33	5	Through Deliveries	2	Изменен title,language и moderator_state.
59	2013-03-14 09:31:29.662777+04	1	33	5	Доставка контейнеров	2	Изменен title,slug,language и moderator_state.
60	2013-03-14 09:34:05.886744+04	1	33	4	Услуги	2	Изменен title,slug,language и moderator_state.
61	2013-03-14 09:35:20.009625+04	1	33	1	Home	2	Изменен title,language и moderator_state.
62	2013-03-14 09:44:55.010677+04	1	33	4	Услуги	2	Изменен moderator_state.
63	2013-03-14 16:29:25.906766+04	1	33	10	Заявка	1	
64	2013-03-14 16:30:28.93878+04	1	33	10	Заявка	2	Изменен moderator_state.
65	2013-03-14 16:31:02.276549+04	1	33	10	Заявка	2	Изменен moderator_state.
66	2013-03-14 16:32:38.782181+04	1	33	10	Заявка	2	Изменен moderator_state.
67	2013-03-14 16:35:46.716084+04	1	33	10	Заявка	2	Изменен moderator_state.
68	2013-03-14 16:36:47.349059+04	1	33	10	Заявка	2	Изменен moderator_state.
69	2013-03-14 16:40:04.094224+04	1	33	10	Заявка	2	Изменен moderator_state.
70	2013-03-15 14:11:14.51503+04	1	33	11	Статьи	1	
71	2013-03-15 14:15:02.949708+04	1	51	1	Статьи	1	
72	2013-03-15 14:15:54.228671+04	1	50	1	123: draft	1	
73	2013-03-15 15:15:17.434714+04	1	33	2	Global Placeholder	2	Изменен moderator_state.
74	2013-03-15 15:15:43.388159+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
75	2013-03-15 15:15:56.194222+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
76	2013-03-15 15:21:53.593887+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
77	2013-03-15 15:22:03.826805+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
78	2013-03-15 15:25:28.142573+04	1	33	2	Global Placeholder	2	Изменен moderator_state.
79	2013-03-15 15:30:37.87319+04	1	33	2	Global Placeholder	2	Изменен moderator_state.
80	2013-03-15 15:32:34.989504+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
81	2013-03-15 15:32:51.971684+04	1	33	2	Global Placeholder	2	Изменен language и moderator_state.
82	2013-03-17 13:10:22.960605+04	1	33	1	Компания	2	Изменен template и moderator_state.
83	2013-03-17 13:12:51.17374+04	1	33	1	Компания	2	Изменен title и moderator_state.
84	2013-03-17 13:20:28.057438+04	1	33	1	Компания	2	Изменен title,slug и moderator_state.
85	2013-03-17 13:22:12.672143+04	1	33	1	Компания	2	Изменен moderator_state.
86	2013-03-17 13:22:36.366836+04	1	33	1	Компания	2	Изменен menu_title и moderator_state.
87	2013-03-17 13:24:44.631182+04	1	33	12	Компания	1	
88	2013-03-17 13:25:28.128348+04	1	33	1	Главная	2	Изменен moderator_state.
89	2013-03-17 13:51:30.366399+04	1	33	1	Компания	2	Изменен menu_title,slug и moderator_state.
90	2013-03-17 13:51:47.273701+04	1	33	1	Company	2	Изменен menu_title,slug,language и moderator_state.
91	2013-03-17 13:52:06.980102+04	1	33	1	Home	2	Изменен title,language и moderator_state.
92	2013-03-17 13:52:28.080651+04	1	33	1	Home	2	Изменен title,language и moderator_state.
93	2013-03-17 13:53:51.823886+04	1	33	1	关于公司	2	Изменен menu_title,slug,language и moderator_state.
94	2013-03-17 13:57:56.855192+04	1	33	12	Компания	2	Изменен title,slug,language и moderator_state.
95	2013-03-17 13:58:04.043953+04	1	33	12	Компания	2	Изменен title,slug,language и moderator_state.
96	2013-03-17 16:28:05.571183+04	1	33	13	rrr	1	
97	2013-03-17 16:28:11.289277+04	1	33	13	rrr	2	Изменен title,slug,language и moderator_state.
98	2013-03-17 16:28:14.951743+04	1	33	13	rrr	2	Изменен title,slug,language и moderator_state.
99	2013-03-17 16:30:24.398079+04	1	33	13	BUSINESS SUPPORT	2	Изменен published,in_navigation,language и moderator_state.
100	2013-03-17 18:07:26.518818+04	1	33	13	rrr	2	Изменен title,language и moderator_state.
101	2013-03-17 18:07:35.674351+04	1	33	13	在中国的商务服务	2	Изменен slug,language и moderator_state.
102	2013-03-17 18:09:07.396355+04	1	33	14	www	1	
103	2013-03-17 18:09:11.926231+04	1	33	14	www	2	Изменен title,slug,language и moderator_state.
104	2013-03-17 18:09:15.631365+04	1	33	14	www	2	Изменен title,slug,language и moderator_state.
105	2013-03-17 18:10:31.031064+04	1	33	14	从中国拼柜	2	Изменен title,menu_title,slug,published,in_navigation,language и moderator_state.
106	2013-03-17 18:19:02.287815+04	1	33	15	www	1	
107	2013-03-17 18:19:09.433749+04	1	33	15	www	2	Изменен title,slug,language и moderator_state.
108	2013-03-17 18:19:13.252484+04	1	33	15	www	2	Изменен title,slug,language и moderator_state.
109	2013-03-17 18:27:42.248715+04	1	33	13	Бизнес услуги в Китае	2	Изменен moderator_state.
110	2013-03-17 18:28:49.639717+04	1	33	7	Таможенная очистка	2	Изменен moderator_state.
111	2013-03-17 18:33:58.512408+04	1	33	16	www	1	
112	2013-03-17 18:34:03.630022+04	1	33	16	www	2	Изменен published,in_navigation и moderator_state.
113	2013-03-17 18:34:07.951442+04	1	33	16	www	2	Изменен title,slug,language и moderator_state.
114	2013-03-17 18:34:11.216436+04	1	33	16	www	2	Изменен title,slug,language и moderator_state.
115	2013-03-17 18:43:07.100102+04	1	33	8	Железнодорожные перевозки из Китая	2	Изменен title,slug,language и moderator_state.
116	2013-03-17 18:43:10.663495+04	1	33	8	Железнодорожные перевозки из Китая	2	Изменен title,slug,language и moderator_state.
117	2013-03-17 18:48:41.131456+04	1	33	17	www	1	
118	2013-03-17 18:48:45.004784+04	1	33	17	www	2	Изменен title,slug,language и moderator_state.
119	2013-03-17 18:48:48.702232+04	1	33	17	www	2	Изменен title,slug,language и moderator_state.
120	2013-03-17 18:50:23.11565+04	1	33	17	CUSTOMS CONSULTING	2	Изменен language и moderator_state.
121	2013-03-17 18:51:56.364088+04	1	33	17	CUSTOMS CONSULTING	2	Изменен language и moderator_state.
122	2013-03-17 19:31:14.951746+04	1	33	6	Морские перевозки из Китая	2	Изменен title,slug,language и moderator_state.
123	2013-03-17 19:31:18.878247+04	1	33	6	Морские перевозки из Китая	2	Изменен title,slug,language и moderator_state.
124	2013-03-17 21:43:19.050351+04	1	33	18	www	1	
125	2013-03-17 21:43:25.610468+04	1	33	18	www	2	Изменен title,slug,language и moderator_state.
126	2013-03-17 21:43:28.860801+04	1	33	18	www	2	Изменен title,slug,language и moderator_state.
127	2013-03-17 21:43:36.845906+04	1	33	18	www	2	Изменен published,in_navigation и moderator_state.
128	2013-03-17 21:44:56.282225+04	1	33	19	www	1	
129	2013-03-17 21:45:00.51752+04	1	33	19	www	2	Изменен title,slug,language и moderator_state.
130	2013-03-17 21:45:05.97907+04	1	33	19	www	2	Изменен title,slug,language и moderator_state.
131	2013-03-17 21:47:26.263691+04	1	33	20	www	1	
132	2013-03-17 21:47:30.73407+04	1	33	20	www	2	Изменен title,slug,language и moderator_state.
133	2013-03-17 21:47:34.576779+04	1	33	20	www	2	Изменен title,slug,language и moderator_state.
134	2013-03-17 21:49:37.452205+04	1	33	9	Услуги по таможенной очистке импорта из Китая	3	
135	2013-03-17 21:52:02.267818+04	1	33	21	www	1	
136	2013-03-17 21:52:06.483236+04	1	33	21	www	2	Изменен title,slug,language и moderator_state.
137	2013-03-17 21:52:10.379192+04	1	33	21	www	2	Изменен title,slug,language и moderator_state.
138	2013-03-17 21:55:00.030647+04	1	33	21	Партнеры	2	Изменен moderator_state.
139	2013-03-17 22:56:46.898695+04	1	33	21	Clients and Partners	2	Изменен language и moderator_state.
140	2013-03-17 22:57:07.451451+04	1	33	21	客户与合作伙伴	2	Изменен language и moderator_state.
141	2013-03-18 00:08:59.978024+04	1	33	4	Услуги	2	Изменен page_title и moderator_state.
142	2013-03-18 00:15:04.965866+04	1	33	22	www	1	
143	2013-03-18 00:15:08.784752+04	1	33	22	www	2	Изменен title,slug,language и moderator_state.
144	2013-03-18 00:15:12.583991+04	1	33	22	www	2	Изменен title,slug,language и moderator_state.
145	2013-03-18 00:16:31.586087+04	1	40	57	www (www)	2	Заголовок и плагин на English удалён
146	2013-03-18 00:16:39.31114+04	1	40	58	www (www)	2	Заголовок и плагин на 简体中文 удалён
147	2013-03-18 00:18:11.976888+04	1	33	7	Таможенная очистка	2	Изменен title,slug,language и moderator_state.
148	2013-03-18 00:18:17.481054+04	1	33	7	Таможенная очистка	2	Изменен title,slug,language и moderator_state.
149	2013-03-18 00:30:57.660661+04	1	33	10	Заявка	2	Изменен title,slug,language и moderator_state.
150	2013-03-18 00:33:17.387125+04	1	33	10	On-line inquiry	2	Изменен language и moderator_state.
151	2013-03-18 00:33:53.786772+04	1	33	10	Заявка	2	Изменен title,slug,language и moderator_state.
152	2013-03-18 00:37:50.880484+04	1	33	10	网页申请表	2	Изменен language и moderator_state.
153	2013-03-18 00:38:49.737393+04	1	33	10	On-line inquiry	2	Изменен language и moderator_state.
154	2013-03-18 00:38:51.91898+04	1	33	10	On-line inquiry	2	Изменен language и moderator_state.
155	2013-03-18 00:42:50.137405+04	1	33	7	CUSTOMS	2	Изменен language и moderator_state.
156	2013-03-18 00:42:56.747385+04	1	33	7	清关服务	2	Изменен language и moderator_state.
157	2013-03-18 00:43:11.229048+04	1	33	13	BUSINESS SUPPORT	2	Изменен language и moderator_state.
158	2013-03-18 00:43:18.157473+04	1	33	13	在中国的商务服务	2	Изменен language и moderator_state.
159	2013-03-18 00:43:30.613537+04	1	33	23	www	1	
160	2013-03-18 00:43:44.263708+04	1	33	23	www	2	Изменен moderator_state.
161	2013-03-18 00:43:54.42647+04	1	33	23	www	2	Изменен title,slug,language и moderator_state.
162	2013-03-18 00:44:02.60452+04	1	33	23	www	2	Изменен title,slug,language и moderator_state.
163	2013-03-18 00:45:22.204365+04	1	40	65	www (www)	2	Заголовок и плагин на 简体中文 удалён
164	2013-03-18 00:45:46.313106+04	1	33	23	Commodities	2	Изменен published,in_navigation,language и moderator_state.
165	2013-03-18 01:03:12.750264+04	1	50	1	123: опубликован	3	
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 165, true);


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY django_comment_flags (id, user_id, comment_id, flag, flag_date) FROM stdin;
\.


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY django_comments (id, content_type_id, object_pk, site_id, user_id, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed) FROM stdin;
\.


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('django_comments_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	session	sessions	session
6	site	sites	site
7	log entry	admin	logentry
8	migration history	south	migrationhistory
9	comment	comments	comment
10	comment flag	comments	commentflag
11	tag	tagging	tag
12	tagged item	tagging	taggeditem
13	cms content	transferapp	cmscontent
14	cms en content	transferapp	cmsencontent
15	cms en form serviceorder	transferapp	cmsenformserviceorder
16	cms en menu	transferapp	cmsenmenu
17	cms en module publications	transferapp	cmsenmodulepublications
18	cms en texts	transferapp	cmsentexts
19	cms form serviceorder	transferapp	cmsformserviceorder
20	cms form serviceorder2	transferapp	cmsformserviceorder2
21	cms menu	transferapp	cmsmenu
22	cms module clients	transferapp	cmsmoduleclients
23	cms module faq	transferapp	cmsmodulefaq
24	cms module gallery	transferapp	cmsmodulegallery
25	cms module gallerygroups	transferapp	cmsmodulegallerygroups
26	cms module news	transferapp	cmsmodulenews
27	cms module publications	transferapp	cmsmodulepublications
28	cms module spo	transferapp	cmsmodulespo
29	cms qlinks	transferapp	cmsqlinks
30	cms texts	transferapp	cmstexts
31	placeholder	cms	placeholder
32	cms plugin	cms	cmsplugin
33	page	cms	page
34	PageModerator	cms	pagemoderator
35	Page moderator state	cms	pagemoderatorstate
36	Page global permission	cms	globalpagepermission
37	Page permission	cms	pagepermission
38	User (page)	cms	pageuser
39	User group (page)	cms	pageusergroup
40	title	cms	title
41	text	text	text
42	Snippet	snippet	snippet
43	Snippet	snippet	snippetptr
44	picture	picture	picture
45	link	link	link
46	google map	googlemap	googlemap
47	file	file	file
48	teaser	teaser	teaser
49	cache key	menus	cachekey
50		zinnia	entry
51	category	zinnia	category
52	author	zinnia	author
53	latest entries plugin	cmsplugin_zinnia	latestentriesplugin
54	selected entries plugin	cmsplugin_zinnia	selectedentriesplugin
55	random entries plugin	cmsplugin_zinnia	randomentriesplugin
56	query entries plugin	cmsplugin_zinnia	queryentriesplugin
57	calendar entries plugin	cmsplugin_zinnia	calendarentriesplugin
58	contact	cmsplugin_contact	contact
59	source	easy_thumbnails	source
60	thumbnail	easy_thumbnails	thumbnail
61	Folder	filer	folder
62	folder permission	filer	folderpermission
63	file	filer	file
64	clipboard	filer	clipboard
65	clipboard item	filer	clipboarditem
66	image	filer	image
67	filer folder	cmsplugin_filer_folder	filerfolder
68	filer image	cmsplugin_filer_image	filerimage
69	thumbnail option	cmsplugin_filer_image	thumbnailoption
70	custom contact	cms_helper	customcontact
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('django_content_type_id_seq', 70, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
00630574f365dc9a9ad24ccc0c484522	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 11:55:16.271652+04
1ccc0bd2403706d3d3f29dd0d0a572f9	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:09:10.480654+04
1bbbb446e6f4a0f7e9df0d98057af8c9	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:14:14.860317+04
863666083167fdaafea6ab5e48166744	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:15:54.554327+04
05cf2cef512557a0d765b615775424f7	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:17:27.583292+04
ffcaf682a694cd36bdd5b6db5734726a	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:13:08.454425+04
664b90bc364656743345b518d96c8e4f	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:15:56.650023+04
0020e5a03db77f3a1d96b8f5cdd4eeb8	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:22:04.284826+04
b62ae8ded0427a9994cfc31617dd9550	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:26:36.33013+04
35618bfbe8a24033533e147d2e70f63d	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:31:15.074671+04
b545c970ca785027025b0bf8dd749685	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:44.860227+04
efd6001ecf94c838295571469f7d385d	ZjliMDJmYzI5Y2Q5ZGU2MjQwYjk4YWFiOGU1Y2NhMjRlMTFiNjAxYjqAAn1xAShVDmNtc19hZG1p\nbl9zaXRlSwFVDV9hdXRoX3VzZXJfaWRLAVUPZGphbmdvX2xhbmd1YWdlVQJydVUSX2F1dGhfdXNl\ncl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHUu\n	2013-03-21 15:15:53.131827+04
41be520fdd37fc921910ba390570a988	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:35:04.283494+04
1f4826012c5aabb60b61faab10b41153	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 11:55:19.236405+04
dd33f151b9adcf589afd3ff53d4ae0ca	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:09:14.277197+04
271e1a97fff687b28e5f1529a74d921d	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:14:34.260115+04
ec23dcc6d0309ea8c737eb78daa73b91	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:16:02.571538+04
7a93348929814add79f8e27320db9c36	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:17:33.269178+04
b0a826b995923e8433088ea912f1796d	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:13:23.723428+04
f1efe29c7fa8406b1f9f9f385a4fe65c	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:16:00.16881+04
8b7f11deea5caeeab58086e23b0d23e1	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:22:46.354902+04
a2b403267a68c7c380d6cb9a9830a730	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:26:40.266288+04
b47573b9bb9320f249149b64b5bc4333	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:31:17.548875+04
e9f38ad4929b8d5d0d3b41b18aeafe61	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:45.477079+04
621c411f68da25db5cce32d0b5760d58	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 11:55:28.261234+04
090281e1c16cdd07094fe0d49f5cdd39	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:10:20.411285+04
d0df2ac8991a71ffc4b964e1a872cbec	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:14:37.052431+04
c4af205e36df93a6da00be30d445ae11	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:16:08.487275+04
b44a142aa4f5f7247f987c3f379cb97f	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:20:26.906734+04
987d8f889c72feda29725ea917b49534	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:13:29.288585+04
73292b4a2c86c681df28d3233b1cb1bb	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:16:05.139287+04
d891f182880a922467198cdd1d73432d	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:22:48.818856+04
54f0e4e5473fc2c96173f2ddbe485efd	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:27:25.685307+04
1520cf3dcde975e10769489fba4d15e7	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:32:32.8121+04
602cb488577e2a4763ccc5e7c81692bf	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:46.807931+04
2f48874d0285f0996c7c93832a3dea6d	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 11:55:30.404038+04
7c4666c279f1eba7b92b2670725fdf40	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:10:45.981158+04
d4b896e072ac1b50c9df13381c61ef3a	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:14:38.836942+04
156032b2f68e3f049afcd8540783c93a	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:16:12.059993+04
6b121b6d8a591259f935936427727d15	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:20:50.757951+04
8f7aae238437c1d4e5fe8645f9ebf706	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:13:31.217313+04
a7e773abe8340025f24e3f0fe4879b3f	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:16:07.3665+04
a616b16e380a493bb3d741e614a3b44f	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:24:17.102645+04
dacf591c4066348249248e8680dcd52a	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:28:08.533742+04
8571bcb99b9123142a23ec070389e63e	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:32:35.45622+04
f4c9a9b7043a66ba060182c7e9cda3d0	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:48.284925+04
5034449ee92600920f1e5e4ead535209	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 11:55:33.641739+04
a9714a26d186a6a320275c1dd6951ab6	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:10:49.154306+04
29ddec794ad17651c5f081e82423a641	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:15:03.179708+04
da7b37486ad5f9478bf782d6e59a2513	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:16:14.505518+04
90d0ca484fa14c99c3cc7ac1eb1f354a	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:20:52.959811+04
1dc4a057faa88046147a62c15f1f1ae6	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:13:48.785342+04
e16de650c75ccd4126a5f12687882168	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:16:09.511175+04
bbbb57dd7fd36a1b9d9e6a02a7802cfd	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:24:22.401273+04
dfdbead248ac6bd6f0d76e3f99bad464	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:28:13.984249+04
c707044d7c1abda6aca678ca9c069182	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:32:37.016311+04
0be8afdbdc3d5834c9efc5d680d96e24	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:49.827556+04
daab553c0a42e637826f595abd254e98	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 11:55:35.366429+04
78d8a4ff31e7f66516b493d863922c5f	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:11:14.914571+04
ad09ca4725eac0119e26b8ff5f28393c	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:15:15.750117+04
74a813f2cd627bb71f48df04f379a9dc	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:16:18.05397+04
679a6a5658ed3c2de61331218604a7bc	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:20:55.304188+04
05ee2a2271f3de244a0ffabee28655b1	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:13:56.050489+04
f21812e5a4a91a03afc2170939dd9500	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:16:11.833335+04
62e25574a114f170bc33ba0b84e7f0b2	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:25:05.274223+04
d49423f11a56509ff1ef5fca95ec946f	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:28:15.672149+04
074e1de02a4a048be79ca9435fb4e2f1	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:32:52.359394+04
8cd160cab5364c87008e96703b60b404	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:34:25.268971+04
8206f09abcda55b76f31fd32060accb3	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 11:55:36.959477+04
4c15919d61f0c23291093df5f56f0dd9	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:11:28.551078+04
e7887e00060d0e5cbfcb4443e0639b31	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:15:17.356557+04
407ad6f564697eab618394f27abc7e7e	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:16:52.194124+04
9d7b03413df8e6c1f95d94dc6e63d170	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:05:22.47456+04
07e9c0d423aeb35b5465211a43c647c3	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:14:39.614797+04
722b4c4d7c4c81d57632ac0a2f18777c	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:16:24.379915+04
d899e4bc99a870819dabbef9563af423	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:25:11.440467+04
115ae6b05b99f653a035ed3f3c107aa3	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:30:32.919232+04
4dcad33c053ab242b45fbc096d55d57d	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:21.978954+04
00a2b23b1a495e767372918a4147199b	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:34:32.997027+04
700d034ac4f5f9d08ad99f9fec3e39d2	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 11:55:39.313737+04
65d805d96bdff12bf74b9b3724474724	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:11:40.234279+04
e4930fd843e63f93c0a2b013e50a7711	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:15:19.038114+04
48f558818d629fc44427c0595d9a53d3	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:17:04.058839+04
ea73790b5e1e2008f6616fe4c1c86afc	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:06:54.135215+04
9b13aa0fc4818ab980ad01d15ffe318f	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:15:12.615248+04
88fe239799b503bf2081d5d2337262e6	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:18:21.233366+04
875f7475cb236587fcb3c92427b56932	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:25:14.439844+04
b540f3d4f5a757f680eaaf5d61f3a53c	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:36.984653+04
e24fc6a380c46c723b833fc721b8eb0b	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:25:34.243059+04
e120eca5278d9baf471fa4737b4a6374	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:30:53.906083+04
c495ceda2fe0f1c31b37a817062c5108	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:44.432312+04
ebb28efebb9bafa86bde8e8a9261c17a	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:35:01.589731+04
9aef2739b569832bca42d7410109ae45	NzdlMzlhOTZjMmQ2MDY0NWU5NTg0YmJmZDFmZDIxYjE5NGJkYjRlNjqAAn1xAShVDmNtc19hZG1p\nbl9zaXRlSwFVFGZpbGVyX2xhc3RfZm9sZGVyX2lkWAEAAAAyVQ1fYXV0aF91c2VyX2lkSwFVEl9h\ndXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tl\nbmRVCV9tZXNzYWdlc11xAihjZGphbmdvLmNvbnRyaWIubWVzc2FnZXMuc3RvcmFnZS5iYXNlCk1l\nc3NhZ2UKcQMpgXEEfXEFKFUKZXh0cmFfdGFnc3EGTlUHbWVzc2FnZXEHWJgAAADRgdGC0YDQsNC9\n0LjRhtCwICJHbG9iYWwgUGxhY2Vob2xkZXIiINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQ\ntdC90LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7R\ngtGA0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLlUFbGV2ZWxxCEsUdWJoAymBcQl9cQooaAZYAAAA\nAGgHWJgAAADRgdGC0YDQsNC90LjRhtCwICJHbG9iYWwgUGxhY2Vob2xkZXIiINCx0YvQuyDRg9GB\n0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQ\nvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFx\nC31xDChoBlgAAAAAaAdYlgAAAHRleHQgIk9mZmljZSBpbiBTaGFuZ2hhaTogLi4uLi4uIiDQsdGL\n0Lsg0YPRgdC/0LXRiNC90L4g0LTQvtCx0LDQstC70LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQ\ntdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgI\nSxR1YmgDKYFxDX1xDihoBlgAAAAAaAdYmAAAANGB0YLRgNCw0L3QuNGG0LAgIkdsb2JhbCBQbGFj\nZWhvbGRlciIg0LHRi9C7INGD0YHQv9C10YjQvdC+INC40LfQvNC10L3QtdC9LiDQndC40LbQtSDQ\nstGLINC80L7QttC10YLQtSDRgdC90L7QstCwINC10LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+\n0LLQsNGC0YwuaAhLFHViaAMpgXEPfXEQKGgGWAAAAABoB1iYAAAA0YHRgtGA0LDQvdC40YbQsCAi\nR2xvYmFsIFBsYWNlaG9sZGVyIiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0u\nINCd0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB0L3QvtCy0LAg0LXQs9C+INC+0YLRgNC10LTQ\nsNC60YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymBcRF9cRIoaAZYAAAAAGgHWJwAAAB0ZXh0ICLQ\nntGE0LjRgSDQsiDQqNCw0L3RhdCw0LU6IC4uLi4uLiIg0LHRi9C7INGD0YHQv9C10YjQvdC+INC0\n0L7QsdCw0LLQu9C10L0uINCd0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB0L3QvtCy0LAg0LXQ\ns9C+INC+0YLRgNC10LTQsNC60YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymBcRN9cRQoaAZYAAAA\nAGgHWJoAAAB0ZXh0ICLQntGE0LjRgSDQsiDQqNCw0L3RhdCw0LU6IC4uLi4uLiIg0LHRi9C7INGD\n0YHQv9C10YjQvdC+INC40LfQvNC10L3QtdC9LiDQndC40LbQtSDQstGLINC80L7QttC10YLQtSDR\ngdC90L7QstCwINC10LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+0LLQsNGC0YwuaAhLFHViaAMp\ngXEVfXEWKGgGWAAAAABoB1hLAAAA0YHRgtGA0LDQvdC40YbQsCAiR2xvYmFsIFBsYWNlaG9sZGVy\nIiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0uaAhLFHViaAMpgXEXfXEYKGgG\nWAAAAABoB1iaAAAAdGV4dCAi0J7RhNC40YEg0LIg0KjQsNC90YXQsNC1OiAuLi4uLi4iINCx0YvQ\nuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC\n0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1\nYmgDKYFxGX1xGihoBlgAAAAAaAdYmAAAANGB0YLRgNCw0L3QuNGG0LAgIkdsb2JhbCBQbGFjZWhv\nbGRlciIg0LHRi9C7INGD0YHQv9C10YjQvdC+INC40LfQvNC10L3QtdC9LiDQndC40LbQtSDQstGL\nINC80L7QttC10YLQtSDRgdC90L7QstCwINC10LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+0LLQ\nsNGC0YwuaAhLFHViaAMpgXEbfXEcKGgGWAAAAABoB1iUAAAAdGV4dCAiT2ZmaWNlIGluIFNoYW5n\naGFpOiAuLi4uLi4iINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC2\n0LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC4\n0YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxHX1xHihoBlgAAAAAaAdYmAAAANGB0YLRgNCw0L3QuNGG\n0LAgIkdsb2JhbCBQbGFjZWhvbGRlciIg0LHRi9C7INGD0YHQv9C10YjQvdC+INC40LfQvNC10L3Q\ntdC9LiDQndC40LbQtSDQstGLINC80L7QttC10YLQtSDRgdC90L7QstCwINC10LPQviDQvtGC0YDQ\ntdC00LDQutGC0LjRgNC+0LLQsNGC0YwuaAhLFHViaAMpgXEffXEgKGgGWAAAAABoB1hLAAAA0YHR\ngtGA0LDQvdC40YbQsCAiR2xvYmFsIFBsYWNlaG9sZGVyIiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g\n0LjQt9C80LXQvdC10L0uaAhLFHViZVUPZGphbmdvX2xhbmd1YWdlWAIAAABydXEhdS4=\n	2013-03-29 15:34:34.162167+04
ce3f35f77b6b31596d1c50a0ed8b4acf	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:34:34.352477+04
84b52afcb029c3133495400116968abf	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:11:43.037208+04
b25bd6fddf99491975311f5f86448a54	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:15:22.672058+04
c2ad98278101d61e588c27dc3f9578b2	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:17:09.231133+04
0279c097c0bd9347c351a3551055054e	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:07:57.827933+04
b78b6211e9fdccd664ff34466e790b2c	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:15:17.950245+04
aacaaf296916bb68de86aca20a675a39	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:21:39.80032+04
72298cf2bc09356f3cf76b303b53350b	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:25:16.865575+04
ccfd2e07dc6ed39eeceebb916ad21467	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:30:38.419044+04
44a35265d5a28060cc4fdaa10f4f4664	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:39.367278+04
ff02d992f6300dc3179d9335279a32d2	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:34:54.640604+04
e115f00bb1242c178221063d3b50e022	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:12:11.295383+04
036c420a3aee10c9563a69adf02c86ff	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:15:27.536636+04
c97cdd79efccb5f8331fb0e076aae001	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:17:16.599244+04
66cd9d21e45f115dae6de4cc97f7e577	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:08:39.894593+04
4ea6d5fca2d8ac19f9b385f2f3c163b0	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:15:19.556815+04
32488b8d9bf2c8eafe1de0edd6bf5fea	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:21:49.03434+04
14f335e7f7f9801555f8ecdfbc20bc5a	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:25:26.217376+04
ae22534eeb316dfe6ad3b5f8026c7811	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:30:48.806406+04
07bdb14fc2f89e97fb612c9a528bb33a	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:42.301375+04
4f78d9e8f584702027912bd5e7908bbc	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:34:56.206991+04
e820ebcaae5a27d2d08eb71680a6fc3b	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:14:11.872083+04
4cac5f7102be8d1c32843801449089c6	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:15:31.158815+04
9a9fc06755a675be2f93a26db2af76c5	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:17:18.490702+04
fc1edc07c8e040957c4d68825849d919	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:10:35.163282+04
46894f100cfd300ce3c7df6a1752809e	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:15:43.861431+04
5be1dcd6d4c6070036c39800ac94e488	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:21:54.077772+04
72d1864aef87d25cfcfbe2666b6d2535	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:25:28.551184+04
8772f82b9de57e21435085a63569851b	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:30:50.793418+04
5383ed267075b9dc35ceaa3abeed6053	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:44.027358+04
bcd3e05e9d75d9539d9a473b23911d81	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:34:57.926232+04
8a2f6dbede10e00c58b5bc516997a6ce	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:14:13.070588+04
d327cba392aec72f92089bdeea003dfe	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:15:33.552204+04
3ef39a8cc6d70f7e282cd321f707044b	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 14:17:24.433297+04
7b27849eb57b7feb6fd90569655aeb02	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:12:59.658608+04
601a2f2fab4a7b4545889843c5a3ad25	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:15:45.386615+04
17d24be7952d0a655602888034427586	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:21:55.829192+04
1b66614ae10db31ec44e1093e8b55246	NTVjYWQxZGJmZGRiZDdkNGIwM2UxODZiNzQwNzRmMzc3OTQ2MGE5NzqAAn1xAShVDmNtc19hZG1p\nbl9zaXRlSwFVFGZpbGVyX2xhc3RfZm9sZGVyX2lkWAEAAAAxVQ1fYXV0aF91c2VyX2lkSwFVEl9h\ndXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tl\nbmRVCV9tZXNzYWdlc11xAihjZGphbmdvLmNvbnRyaWIubWVzc2FnZXMuc3RvcmFnZS5iYXNlCk1l\nc3NhZ2UKcQMpgXEEfXEFKFUKZXh0cmFfdGFnc3EGWAAAAABVB21lc3NhZ2VxB1iLAAAA0YHRgtGA\n0LDQvdC40YbQsCAid3d3IiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LTQvtCx0LDQstC70LXQvS4g\n0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw\n0LrRgtC40YDQvtCy0LDRgtGMLlUFbGV2ZWxxCEsUdWJoAymBcQl9cQooaAZYAAAAAGgHWIkAAADR\ngdGC0YDQsNC90LjRhtCwICJ3d3ciINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQ\nvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQ\ntNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxC31xDChoBlgAAAAAaAdYPAAAANGB0YLR\ngNCw0L3QuNGG0LAgInd3dyIg0LHRi9C7INGD0YHQv9C10YjQvdC+INC40LfQvNC10L3QtdC9LmgI\nSxR1YmgDKYFxDX1xDihoBlgAAAAAaAdYiwAAANGB0YLRgNCw0L3QuNGG0LAgItCj0YHQu9GD0LPQ\nuCDQv9C+INGC0LDQvNC+0LbQtdC90L3QvtC5INC+0YfQuNGB0YLQutC1INC40LzQv9C+0YDRgtCw\nINC40Lcg0JrQuNGC0LDRjyIg0LHRi9C7INGD0YHQv9C10YjQvdC+INGD0LTQsNC70LXQvS5oCEsU\ndWJoAymBcQ99cRAoaAZYAAAAAGgHWIsAAADRgdGC0YDQsNC90LjRhtCwICJ3d3ciINCx0YvQuyDR\ng9GB0L/QtdGI0L3QviDQtNC+0LHQsNCy0LvQtdC9LiDQndC40LbQtSDQstGLINC80L7QttC10YLQ\ntSDRgdC90L7QstCwINC10LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+0LLQsNGC0YwuaAhLFHVi\naAMpgXERfXESKGgGWAAAAABoB1iJAAAA0YHRgtGA0LDQvdC40YbQsCAid3d3IiDQsdGL0Lsg0YPR\ngdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0uINCd0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB\n0L3QvtCy0LAg0LXQs9C+INC+0YLRgNC10LTQsNC60YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymB\ncRN9cRQoaAZYAAAAAGgHWDwAAADRgdGC0YDQsNC90LjRhtCwICJ3d3ciINCx0YvQuyDRg9GB0L/Q\ntdGI0L3QviDQuNC30LzQtdC90LXQvS5oCEsUdWJoAymBcRV9cRYoaAZYAAAAAGgHWIYAAABmaWxl\nciBmb2xkZXIgInJ1IiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LTQvtCx0LDQstC70LXQvS4g0J3Q\nuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrR\ngtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxF31xGChoBlgAAAAAaAdYlgAAANGB0YLRgNCw0L3Q\nuNGG0LAgItCf0LDRgNGC0L3QtdGA0YsiINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC9\n0LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA\n0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxGX1xGihoBlgAAAAAaAdYhAAAAGZp\nbGVyIGZvbGRlciAicnUiINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3Q\nuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrR\ngtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxG31xHChoBlgAAAAAaAdYhAAAAGZpbGVyIGZvbGRl\nciAicnUiINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC20LUg0LLR\niyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC40YDQvtCy\n0LDRgtGMLmgISxR1YmgDKYFxHX1xHihoBlgAAAAAaAdYhgAAAGZpbGVyIGZvbGRlciAiZW4iINCx\n0YvQuyDRg9GB0L/QtdGI0L3QviDQtNC+0LHQsNCy0LvQtdC9LiDQndC40LbQtSDQstGLINC80L7Q\nttC10YLQtSDRgdC90L7QstCwINC10LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+0LLQsNGC0Ywu\naAhLFHViaAMpgXEffXEgKGgGWAAAAABoB1iaAAAA0YHRgtGA0LDQvdC40YbQsCAiQ2xpZW50cyBh\nbmQgUGFydG5lcnMiINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC2\n0LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC4\n0YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxIX1xIihoBlgAAAAAaAdYhgAAAGZpbGVyIGZvbGRlciAi\nY24iINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQtNC+0LHQsNCy0LvQtdC9LiDQndC40LbQtSDQstGL\nINC80L7QttC10YLQtSDRgdC90L7QstCwINC10LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+0LLQ\nsNGC0YwuaAhLFHViaAMpgXEjfXEkKGgGWAAAAABoB1hOAAAA0YHRgtGA0LDQvdC40YbQsCAi5a6i\n5oi35LiO5ZCI5L2c5LyZ5Ly0IiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0u\naAhLFHViaAMpgXElfXEmKGgGWAAAAABoB1hFAAAA0YHRgtGA0LDQvdC40YbQsCAi0KPRgdC70YPQ\ns9C4IiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0uaAhLFHViaAMpgXEnfXEo\nKGgGWAAAAABoB1iLAAAA0YHRgtGA0LDQvdC40YbQsCAid3d3IiDQsdGL0Lsg0YPRgdC/0LXRiNC9\n0L4g0LTQvtCx0LDQstC70LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQ\nsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxKX1xKiho\nBlgAAAAAaAdYiQAAANGB0YLRgNCw0L3QuNGG0LAgInd3dyIg0LHRi9C7INGD0YHQv9C10YjQvdC+\nINC40LfQvNC10L3QtdC9LiDQndC40LbQtSDQstGLINC80L7QttC10YLQtSDRgdC90L7QstCwINC1\n0LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+0LLQsNGC0YwuaAhLFHViaAMpgXErfXEsKGgGWAAA\nAABoB1iJAAAA0YHRgtGA0LDQvdC40YbQsCAid3d3IiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQ\nt9C80LXQvdC10L0uINCd0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB0L3QvtCy0LAg0LXQs9C+\nINC+0YLRgNC10LTQsNC60YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymBcS19cS4oaAZYAAAAAGgH\nWDwAAADQl9Cw0LPQvtC70L7QstC+0Log0Lgg0L/Qu9Cw0LPQuNC9INC90LAgRW5nbGlzaCDRg9C0\n0LDQu9GR0L1oCEsUdWJoAymBcS99cTAoaAZYAAAAAGgHWEEAAADQl9Cw0LPQvtC70L7QstC+0Log\n0Lgg0L/Qu9Cw0LPQuNC9INC90LAg566A5L2T5Lit5paHINGD0LTQsNC70ZHQvWgISxR1YmgDKYFx\nMX1xMihoBlgAAAAAaAdYqQAAANGB0YLRgNCw0L3QuNGG0LAgItCi0LDQvNC+0LbQtdC90L3QsNGP\nINC+0YfQuNGB0YLQutCwIiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0uINCd\n0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB0L3QvtCy0LAg0LXQs9C+INC+0YLRgNC10LTQsNC6\n0YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymBcTN9cTQoaAZYAAAAAGgHWKkAAADRgdGC0YDQsNC9\n0LjRhtCwICLQotCw0LzQvtC20LXQvdC90LDRjyDQvtGH0LjRgdGC0LrQsCIg0LHRi9C7INGD0YHQ\nv9C10YjQvdC+INC40LfQvNC10L3QtdC9LiDQndC40LbQtSDQstGLINC80L7QttC10YLQtSDRgdC9\n0L7QstCwINC10LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+0LLQsNGC0YwuaAhLFHViaAMpgXE1\nfXE2KGgGWAAAAABoB1iPAAAAdGV4dCAiUGxlYXNlIGZpbGwgaW4gLi4uLi4uIiDQsdGL0Lsg0YPR\ngdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0uINCd0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB\n0L3QvtCy0LAg0LXQs9C+INC+0YLRgNC10LTQsNC60YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymB\ncTd9cTgoaAZYAAAAAGgHWJIAAADRgdGC0YDQsNC90LjRhtCwICLQl9Cw0Y/QstC60LAiINCx0YvQ\nuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC\n0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1\nYmgDKYFxOX1xOihoBlgAAAAAaAdY1QAAAHRleHQgIuivt+aCqOWcqOeUteiEkemHjOWhq+WGmeS4\ni+WIl+eUs+ivt+ihqOagvOOAgiDkuLrkuobkv53or4HotKjph4/vvIzlj4rml7blr7nmgqjnmoTl\nkqjor6IuLi4iINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC20LUg\n0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC40YDQ\nvtCy0LDRgtGMLmgISxR1YmgDKYFxO31xPChoBlgAAAAAaAdYjwAAAHRleHQgIlBsZWFzZSBmaWxs\nIGluIC4uLi4uLiIg0LHRi9C7INGD0YHQv9C10YjQvdC+INC40LfQvNC10L3QtdC9LiDQndC40LbQ\ntSDQstGLINC80L7QttC10YLQtSDRgdC90L7QstCwINC10LPQviDQvtGC0YDQtdC00LDQutGC0LjR\ngNC+0LLQsNGC0YwuaAhLFHViaAMpgXE9fXE+KGgGWAAAAABoB1iVAAAA0YHRgtGA0LDQvdC40YbQ\nsCAiT24tbGluZSBpbnF1aXJ5IiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0u\nINCd0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB0L3QvtCy0LAg0LXQs9C+INC+0YLRgNC10LTQ\nsNC60YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymBcT99cUAoaAZYAAAAAGgHWNUAAAB0ZXh0ICLo\nr7fmgqjlnKjnlLXohJHph4zloavlhpnkuIvliJfnlLPor7fooajmoLzjgIIg5Li65LqG5L+d6K+B\n6LSo6YeP77yM5Y+K5pe25a+55oKo55qE5ZKo6K+iLi4uIiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g\n0LjQt9C80LXQvdC10L0uINCd0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB0L3QvtCy0LAg0LXQ\ns9C+INC+0YLRgNC10LTQsNC60YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymBcUF9cUIoaAZYAAAA\nAGgHWJIAAADRgdGC0YDQsNC90LjRhtCwICLQl9Cw0Y/QstC60LAiINCx0YvQuyDRg9GB0L/QtdGI\n0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQ\nsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxQ31xRCho\nBlgAAAAAaAdYowAAAGN1c3RvbSBjb250YWN0ICJpdC1zdXBwb3J0MkBydXNjb24uZ2NzLWdyb3Vw\nLnJ1IiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0uINCd0LjQttC1INCy0Ysg\n0LzQvtC20LXRgtC1INGB0L3QvtCy0LAg0LXQs9C+INC+0YLRgNC10LTQsNC60YLQuNGA0L7QstCw\n0YLRjC5oCEsUdWJoAymBcUV9cUYoaAZYAAAAAGgHWJUAAADRgdGC0YDQsNC90LjRhtCwICLnvZHp\nobXnlLPor7fooagiINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC2\n0LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC4\n0YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxR31xSChoBlgAAAAAaAdYowAAAGN1c3RvbSBjb250YWN0\nICJpdC1zdXBwb3J0MkBydXNjb24uZ2NzLWdyb3VwLnJ1IiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g\n0LjQt9C80LXQvdC10L0uINCd0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB0L3QvtCy0LAg0LXQ\ns9C+INC+0YLRgNC10LTQsNC60YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymBcUl9cUooaAZYAAAA\nAGgHWJUAAADRgdGC0YDQsNC90LjRhtCwICJPbi1saW5lIGlucXVpcnkiINCx0YvQuyDRg9GB0L/Q\ntdGI0L3QviDQuNC30LzQtdC90LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+\n0LLQsCDQtdCz0L4g0L7RgtGA0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxS31x\nTChoBlgAAAAAaAdYSAAAANGB0YLRgNCw0L3QuNGG0LAgIk9uLWxpbmUgaW5xdWlyeSIg0LHRi9C7\nINGD0YHQv9C10YjQvdC+INC40LfQvNC10L3QtdC9LmgISxR1YmgDKYFxTX1xTihoBlgAAAAAaAdY\njQAAANGB0YLRgNCw0L3QuNGG0LAgIkNVU1RPTVMiINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC3\n0LzQtdC90LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g\n0L7RgtGA0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxT31xUChoBlgAAAAAaAdY\nkgAAANGB0YLRgNCw0L3QuNGG0LAgIua4heWFs+acjeWKoSIg0LHRi9C7INGD0YHQv9C10YjQvdC+\nINC40LfQvNC10L3QtdC9LiDQndC40LbQtSDQstGLINC80L7QttC10YLQtSDRgdC90L7QstCwINC1\n0LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+0LLQsNGC0YwuaAhLFHViaAMpgXFRfXFSKGgGWAAA\nAABoB1iWAAAA0YHRgtGA0LDQvdC40YbQsCAiQlVTSU5FU1MgU1VQUE9SVCIg0LHRi9C7INGD0YHQ\nv9C10YjQvdC+INC40LfQvNC10L3QtdC9LiDQndC40LbQtSDQstGLINC80L7QttC10YLQtSDRgdC9\n0L7QstCwINC10LPQviDQvtGC0YDQtdC00LDQutGC0LjRgNC+0LLQsNGC0YwuaAhLFHViaAMpgXFT\nfXFUKGgGWAAAAABoB1hRAAAA0YHRgtGA0LDQvdC40YbQsCAi5Zyo5Lit5Zu955qE5ZWG5Yqh5pyN\n5YqhIiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0uaAhLFHViaAMpgXFVfXFW\nKGgGWAAAAABoB1g+AAAA0YHRgtGA0LDQvdC40YbQsCAid3d3IiDQsdGL0Lsg0YPRgdC/0LXRiNC9\n0L4g0LTQvtCx0LDQstC70LXQvS5oCEsUdWJoAymBcVd9cVgoaAZYAAAAAGgHWJIAAAB0ZXh0ICJo\nZWFkZXJfZGVmYXVsdDQuanBnLi4uIiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LTQvtCx0LDQstC7\n0LXQvS4g0J3QuNC20LUg0LLRiyDQvNC+0LbQtdGC0LUg0YHQvdC+0LLQsCDQtdCz0L4g0L7RgtGA\n0LXQtNCw0LrRgtC40YDQvtCy0LDRgtGMLmgISxR1YmgDKYFxWX1xWihoBlgAAAAAaAdYiQAAANGB\n0YLRgNCw0L3QuNGG0LAgInd3dyIg0LHRi9C7INGD0YHQv9C10YjQvdC+INC40LfQvNC10L3QtdC9\nLiDQndC40LbQtSDQstGLINC80L7QttC10YLQtSDRgdC90L7QstCwINC10LPQviDQvtGC0YDQtdC0\n0LDQutGC0LjRgNC+0LLQsNGC0YwuaAhLFHViaAMpgXFbfXFcKGgGWAAAAABoB1iJAAAA0YHRgtGA\n0LDQvdC40YbQsCAid3d3IiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g0LjQt9C80LXQvdC10L0uINCd\n0LjQttC1INCy0Ysg0LzQvtC20LXRgtC1INGB0L3QvtCy0LAg0LXQs9C+INC+0YLRgNC10LTQsNC6\n0YLQuNGA0L7QstCw0YLRjC5oCEsUdWJoAymBcV19cV4oaAZYAAAAAGgHWDwAAADRgdGC0YDQsNC9\n0LjRhtCwICJ3d3ciINCx0YvQuyDRg9GB0L/QtdGI0L3QviDQuNC30LzQtdC90LXQvS5oCEsUdWJo\nAymBcV99cWAoaAZYAAAAAGgHWEEAAADQl9Cw0LPQvtC70L7QstC+0Log0Lgg0L/Qu9Cw0LPQuNC9\nINC90LAg566A5L2T5Lit5paHINGD0LTQsNC70ZHQvWgISxR1YmgDKYFxYX1xYihoBlgAAAAAaAdY\nRAAAANGB0YLRgNCw0L3QuNGG0LAgIkNvbW1vZGl0aWVzIiDQsdGL0Lsg0YPRgdC/0LXRiNC90L4g\n0LjQt9C80LXQvdC10L0uaAhLFHViaAMpgXFjfXFkKGgGWAAAAABoB1gtAAAA0KPRgdC/0LXRiNC9\n0L4g0YPQtNCw0LvQtdC90YsgMSDQt9Cw0L/QuNGB0YwuaAhLFHViaAMpgXFlfXFmKGgGWAAAAABo\nB1gxAAAAVGhlIHNlbGVjdGVkIGVudHJpZXMgYXJlIG5vdyBtYXJrZWQgYXMgcHVibGlzaGVkLmgI\nSxR1YmVVD2RqYW5nb19sYW5ndWFnZVgCAAAAcnVxZ3Uu\n	2013-04-01 01:21:29.555919+04
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY easy_thumbnails_source (id, name, modified, storage_hash) FROM stdin;
1	filer_public/2013/03/13/2.jpg	2013-03-13 11:39:40.293451+04	f9bde26a1556cd667f742bd34ec7c55e
2	filer_public/2013/03/13/2_1.jpg	2013-03-13 11:41:05.329453+04	f9bde26a1556cd667f742bd34ec7c55e
3	filer_public/2013/03/13/1.jpg	2013-03-13 11:41:05.333453+04	f9bde26a1556cd667f742bd34ec7c55e
4	filer_public/2013/03/13/3.jpg	2013-03-13 11:41:05.349453+04	f9bde26a1556cd667f742bd34ec7c55e
5	filer_public/2013/03/13/4.jpg	2013-03-13 11:41:05.637453+04	f9bde26a1556cd667f742bd34ec7c55e
6	filer_public/2013/03/13/5.jpg	2013-03-13 11:41:05.677453+04	f9bde26a1556cd667f742bd34ec7c55e
7	filer_public/2013/03/13/6.jpg	2013-03-13 11:41:05.693453+04	f9bde26a1556cd667f742bd34ec7c55e
8	filer_public/2013/03/13/7.jpg	2013-03-13 11:41:05.929453+04	f9bde26a1556cd667f742bd34ec7c55e
9	filer_public/2013/03/13/8.jpg	2013-03-13 11:41:06.005453+04	f9bde26a1556cd667f742bd34ec7c55e
10	filer_public/2013/03/13/9.jpg	2013-03-13 11:41:06.017453+04	f9bde26a1556cd667f742bd34ec7c55e
11	filer_public/2013/03/13/10.jpg	2013-03-13 11:41:06.277453+04	f9bde26a1556cd667f742bd34ec7c55e
12	filer_public/2013/03/13/11.gif	2013-03-13 11:41:06.297453+04	f9bde26a1556cd667f742bd34ec7c55e
13	filer_public/2013/03/13/1_1.jpg	2013-03-13 11:42:10.377454+04	f9bde26a1556cd667f742bd34ec7c55e
14	filer_public/2013/03/13/3_1.jpg	2013-03-13 11:42:10.393454+04	f9bde26a1556cd667f742bd34ec7c55e
15	filer_public/2013/03/13/2_2.jpg	2013-03-13 11:42:10.397454+04	f9bde26a1556cd667f742bd34ec7c55e
16	filer_public/2013/03/13/4_1.jpg	2013-03-13 11:42:10.653454+04	f9bde26a1556cd667f742bd34ec7c55e
17	filer_public/2013/03/13/5_1.jpg	2013-03-13 11:42:10.717454+04	f9bde26a1556cd667f742bd34ec7c55e
18	filer_public/2013/03/13/6_1.jpg	2013-03-13 11:42:10.741454+04	f9bde26a1556cd667f742bd34ec7c55e
19	filer_public/2013/03/13/7_1.jpg	2013-03-13 11:42:10.957454+04	f9bde26a1556cd667f742bd34ec7c55e
20	filer_public/2013/03/13/8_1.jpg	2013-03-13 11:42:11.045454+04	f9bde26a1556cd667f742bd34ec7c55e
21	filer_public/2013/03/13/1_2.jpg	2013-03-13 11:42:34.237455+04	f9bde26a1556cd667f742bd34ec7c55e
22	filer_public/2013/03/13/2_3.jpg	2013-03-13 11:42:34.233455+04	f9bde26a1556cd667f742bd34ec7c55e
23	filer_public/2013/03/13/3_2.jpg	2013-03-13 11:42:34.241455+04	f9bde26a1556cd667f742bd34ec7c55e
24	filer_public/2013/03/13/4_2.jpg	2013-03-13 11:42:34.517455+04	f9bde26a1556cd667f742bd34ec7c55e
25	filer_public/2013/03/13/5_2.jpg	2013-03-13 11:42:34.561455+04	f9bde26a1556cd667f742bd34ec7c55e
26	filer_public/2013/03/13/6_2.jpg	2013-03-13 11:42:34.625455+04	f9bde26a1556cd667f742bd34ec7c55e
27	filer_public/2013/03/13/7_2.jpg	2013-03-13 11:42:34.893455+04	f9bde26a1556cd667f742bd34ec7c55e
28	filer_public/2013/03/13/8_2.jpg	2013-03-13 11:42:34.905455+04	f9bde26a1556cd667f742bd34ec7c55e
\.


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 28, true);


--
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY easy_thumbnails_thumbnail (id, name, modified, source_id, storage_hash) FROM stdin;
1	filer_public_thumbnails/filer_public/2013/03/13/2.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:39:40.401451+04	1	f9bde26a1556cd667f742bd34ec7c55e
2	filer_public_thumbnails/filer_public/2013/03/13/2.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:39:40.449451+04	1	f9bde26a1556cd667f742bd34ec7c55e
3	filer_public_thumbnails/filer_public/2013/03/13/2.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:39:40.465451+04	1	f9bde26a1556cd667f742bd34ec7c55e
4	filer_public_thumbnails/filer_public/2013/03/13/2.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:39:40.477451+04	1	f9bde26a1556cd667f742bd34ec7c55e
5	filer_public_thumbnails/filer_public/2013/03/13/2_1.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:05.373453+04	2	f9bde26a1556cd667f742bd34ec7c55e
6	filer_public_thumbnails/filer_public/2013/03/13/1.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:05.405453+04	3	f9bde26a1556cd667f742bd34ec7c55e
7	filer_public_thumbnails/filer_public/2013/03/13/2_1.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:05.401453+04	2	f9bde26a1556cd667f742bd34ec7c55e
8	filer_public_thumbnails/filer_public/2013/03/13/3.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:05.409453+04	4	f9bde26a1556cd667f742bd34ec7c55e
9	filer_public_thumbnails/filer_public/2013/03/13/2_1.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:05.421453+04	2	f9bde26a1556cd667f742bd34ec7c55e
10	filer_public_thumbnails/filer_public/2013/03/13/1.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:05.425453+04	3	f9bde26a1556cd667f742bd34ec7c55e
11	filer_public_thumbnails/filer_public/2013/03/13/3.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:05.433453+04	4	f9bde26a1556cd667f742bd34ec7c55e
12	filer_public_thumbnails/filer_public/2013/03/13/2_1.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:05.441453+04	2	f9bde26a1556cd667f742bd34ec7c55e
13	filer_public_thumbnails/filer_public/2013/03/13/1.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:05.453453+04	3	f9bde26a1556cd667f742bd34ec7c55e
14	filer_public_thumbnails/filer_public/2013/03/13/3.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:05.449453+04	4	f9bde26a1556cd667f742bd34ec7c55e
15	filer_public_thumbnails/filer_public/2013/03/13/1.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:05.465453+04	3	f9bde26a1556cd667f742bd34ec7c55e
16	filer_public_thumbnails/filer_public/2013/03/13/3.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:05.469453+04	4	f9bde26a1556cd667f742bd34ec7c55e
17	filer_public_thumbnails/filer_public/2013/03/13/4.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:05.705453+04	5	f9bde26a1556cd667f742bd34ec7c55e
18	filer_public_thumbnails/filer_public/2013/03/13/5.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:05.713453+04	6	f9bde26a1556cd667f742bd34ec7c55e
19	filer_public_thumbnails/filer_public/2013/03/13/4.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:05.741453+04	5	f9bde26a1556cd667f742bd34ec7c55e
20	filer_public_thumbnails/filer_public/2013/03/13/6.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:05.737453+04	7	f9bde26a1556cd667f742bd34ec7c55e
21	filer_public_thumbnails/filer_public/2013/03/13/5.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:05.757453+04	6	f9bde26a1556cd667f742bd34ec7c55e
22	filer_public_thumbnails/filer_public/2013/03/13/4.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:05.765453+04	5	f9bde26a1556cd667f742bd34ec7c55e
23	filer_public_thumbnails/filer_public/2013/03/13/6.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:05.769453+04	7	f9bde26a1556cd667f742bd34ec7c55e
24	filer_public_thumbnails/filer_public/2013/03/13/5.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:05.777453+04	6	f9bde26a1556cd667f742bd34ec7c55e
25	filer_public_thumbnails/filer_public/2013/03/13/4.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:05.785453+04	5	f9bde26a1556cd667f742bd34ec7c55e
26	filer_public_thumbnails/filer_public/2013/03/13/6.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:05.785453+04	7	f9bde26a1556cd667f742bd34ec7c55e
27	filer_public_thumbnails/filer_public/2013/03/13/5.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:05.793453+04	6	f9bde26a1556cd667f742bd34ec7c55e
28	filer_public_thumbnails/filer_public/2013/03/13/6.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:05.825453+04	7	f9bde26a1556cd667f742bd34ec7c55e
29	filer_public_thumbnails/filer_public/2013/03/13/7.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:06.009453+04	8	f9bde26a1556cd667f742bd34ec7c55e
30	filer_public_thumbnails/filer_public/2013/03/13/7.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:06.053453+04	8	f9bde26a1556cd667f742bd34ec7c55e
31	filer_public_thumbnails/filer_public/2013/03/13/8.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:06.045453+04	9	f9bde26a1556cd667f742bd34ec7c55e
32	filer_public_thumbnails/filer_public/2013/03/13/9.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:06.053453+04	10	f9bde26a1556cd667f742bd34ec7c55e
33	filer_public_thumbnails/filer_public/2013/03/13/8.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:06.069453+04	9	f9bde26a1556cd667f742bd34ec7c55e
34	filer_public_thumbnails/filer_public/2013/03/13/7.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:06.073453+04	8	f9bde26a1556cd667f742bd34ec7c55e
35	filer_public_thumbnails/filer_public/2013/03/13/9.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:06.081453+04	10	f9bde26a1556cd667f742bd34ec7c55e
36	filer_public_thumbnails/filer_public/2013/03/13/8.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:06.089453+04	9	f9bde26a1556cd667f742bd34ec7c55e
37	filer_public_thumbnails/filer_public/2013/03/13/7.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:06.101453+04	8	f9bde26a1556cd667f742bd34ec7c55e
38	filer_public_thumbnails/filer_public/2013/03/13/9.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:06.101453+04	10	f9bde26a1556cd667f742bd34ec7c55e
39	filer_public_thumbnails/filer_public/2013/03/13/8.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:06.113453+04	9	f9bde26a1556cd667f742bd34ec7c55e
40	filer_public_thumbnails/filer_public/2013/03/13/9.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:06.133453+04	10	f9bde26a1556cd667f742bd34ec7c55e
41	filer_public_thumbnails/filer_public/2013/03/13/10.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:41:06.333453+04	11	f9bde26a1556cd667f742bd34ec7c55e
42	filer_public_thumbnails/filer_public/2013/03/13/11.gif__16x16_q85_crop_upscale.png	2013-03-13 11:41:06.345453+04	12	f9bde26a1556cd667f742bd34ec7c55e
43	filer_public_thumbnails/filer_public/2013/03/13/10.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:41:06.353453+04	11	f9bde26a1556cd667f742bd34ec7c55e
44	filer_public_thumbnails/filer_public/2013/03/13/11.gif__32x32_q85_crop_upscale.png	2013-03-13 11:41:06.369453+04	12	f9bde26a1556cd667f742bd34ec7c55e
45	filer_public_thumbnails/filer_public/2013/03/13/10.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:41:06.373453+04	11	f9bde26a1556cd667f742bd34ec7c55e
46	filer_public_thumbnails/filer_public/2013/03/13/11.gif__48x48_q85_crop_upscale.png	2013-03-13 11:41:06.381453+04	12	f9bde26a1556cd667f742bd34ec7c55e
47	filer_public_thumbnails/filer_public/2013/03/13/10.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:41:06.389453+04	11	f9bde26a1556cd667f742bd34ec7c55e
48	filer_public_thumbnails/filer_public/2013/03/13/11.gif__64x64_q85_crop_upscale.png	2013-03-13 11:41:06.409453+04	12	f9bde26a1556cd667f742bd34ec7c55e
49	filer_public_thumbnails/filer_public/2013/03/13/2_2.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:10.425454+04	15	f9bde26a1556cd667f742bd34ec7c55e
50	filer_public_thumbnails/filer_public/2013/03/13/3_1.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:10.433454+04	14	f9bde26a1556cd667f742bd34ec7c55e
53	filer_public_thumbnails/filer_public/2013/03/13/3_1.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:10.481454+04	14	f9bde26a1556cd667f742bd34ec7c55e
56	filer_public_thumbnails/filer_public/2013/03/13/3_1.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:10.505454+04	14	f9bde26a1556cd667f742bd34ec7c55e
59	filer_public_thumbnails/filer_public/2013/03/13/3_1.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:10.517454+04	14	f9bde26a1556cd667f742bd34ec7c55e
51	filer_public_thumbnails/filer_public/2013/03/13/1_1.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:10.429454+04	13	f9bde26a1556cd667f742bd34ec7c55e
54	filer_public_thumbnails/filer_public/2013/03/13/1_1.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:10.489454+04	13	f9bde26a1556cd667f742bd34ec7c55e
57	filer_public_thumbnails/filer_public/2013/03/13/1_1.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:10.505454+04	13	f9bde26a1556cd667f742bd34ec7c55e
60	filer_public_thumbnails/filer_public/2013/03/13/1_1.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:10.525454+04	13	f9bde26a1556cd667f742bd34ec7c55e
52	filer_public_thumbnails/filer_public/2013/03/13/2_2.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:10.477454+04	15	f9bde26a1556cd667f742bd34ec7c55e
55	filer_public_thumbnails/filer_public/2013/03/13/2_2.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:10.493454+04	15	f9bde26a1556cd667f742bd34ec7c55e
58	filer_public_thumbnails/filer_public/2013/03/13/2_2.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:10.517454+04	15	f9bde26a1556cd667f742bd34ec7c55e
61	filer_public_thumbnails/filer_public/2013/03/13/4_1.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:10.721454+04	16	f9bde26a1556cd667f742bd34ec7c55e
62	filer_public_thumbnails/filer_public/2013/03/13/5_1.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:10.789454+04	17	f9bde26a1556cd667f742bd34ec7c55e
63	filer_public_thumbnails/filer_public/2013/03/13/4_1.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:10.793454+04	16	f9bde26a1556cd667f742bd34ec7c55e
64	filer_public_thumbnails/filer_public/2013/03/13/6_1.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:10.805454+04	18	f9bde26a1556cd667f742bd34ec7c55e
65	filer_public_thumbnails/filer_public/2013/03/13/4_1.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:10.825454+04	16	f9bde26a1556cd667f742bd34ec7c55e
66	filer_public_thumbnails/filer_public/2013/03/13/5_1.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:10.821454+04	17	f9bde26a1556cd667f742bd34ec7c55e
67	filer_public_thumbnails/filer_public/2013/03/13/6_1.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:10.825454+04	18	f9bde26a1556cd667f742bd34ec7c55e
68	filer_public_thumbnails/filer_public/2013/03/13/4_1.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:10.837454+04	16	f9bde26a1556cd667f742bd34ec7c55e
69	filer_public_thumbnails/filer_public/2013/03/13/5_1.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:10.841454+04	17	f9bde26a1556cd667f742bd34ec7c55e
70	filer_public_thumbnails/filer_public/2013/03/13/6_1.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:10.853454+04	18	f9bde26a1556cd667f742bd34ec7c55e
71	filer_public_thumbnails/filer_public/2013/03/13/5_1.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:10.865454+04	17	f9bde26a1556cd667f742bd34ec7c55e
72	filer_public_thumbnails/filer_public/2013/03/13/6_1.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:10.885454+04	18	f9bde26a1556cd667f742bd34ec7c55e
73	filer_public_thumbnails/filer_public/2013/03/13/7_1.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:11.029454+04	19	f9bde26a1556cd667f742bd34ec7c55e
74	filer_public_thumbnails/filer_public/2013/03/13/7_1.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:11.061454+04	19	f9bde26a1556cd667f742bd34ec7c55e
75	filer_public_thumbnails/filer_public/2013/03/13/8_1.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:11.077454+04	20	f9bde26a1556cd667f742bd34ec7c55e
76	filer_public_thumbnails/filer_public/2013/03/13/7_1.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:11.097454+04	19	f9bde26a1556cd667f742bd34ec7c55e
77	filer_public_thumbnails/filer_public/2013/03/13/8_1.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:11.101454+04	20	f9bde26a1556cd667f742bd34ec7c55e
78	filer_public_thumbnails/filer_public/2013/03/13/7_1.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:11.117454+04	19	f9bde26a1556cd667f742bd34ec7c55e
79	filer_public_thumbnails/filer_public/2013/03/13/8_1.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:11.117454+04	20	f9bde26a1556cd667f742bd34ec7c55e
80	filer_public_thumbnails/filer_public/2013/03/13/8_1.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:11.145454+04	20	f9bde26a1556cd667f742bd34ec7c55e
81	filer_public_thumbnails/filer_public/2013/03/13/1_2.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:34.273455+04	21	f9bde26a1556cd667f742bd34ec7c55e
82	filer_public_thumbnails/filer_public/2013/03/13/2_3.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:34.269455+04	22	f9bde26a1556cd667f742bd34ec7c55e
83	filer_public_thumbnails/filer_public/2013/03/13/3_2.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:34.281455+04	23	f9bde26a1556cd667f742bd34ec7c55e
84	filer_public_thumbnails/filer_public/2013/03/13/1_2.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:34.305455+04	21	f9bde26a1556cd667f742bd34ec7c55e
85	filer_public_thumbnails/filer_public/2013/03/13/2_3.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:34.301455+04	22	f9bde26a1556cd667f742bd34ec7c55e
86	filer_public_thumbnails/filer_public/2013/03/13/3_2.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:34.305455+04	23	f9bde26a1556cd667f742bd34ec7c55e
87	filer_public_thumbnails/filer_public/2013/03/13/1_2.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:34.325455+04	21	f9bde26a1556cd667f742bd34ec7c55e
88	filer_public_thumbnails/filer_public/2013/03/13/2_3.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:34.329455+04	22	f9bde26a1556cd667f742bd34ec7c55e
89	filer_public_thumbnails/filer_public/2013/03/13/3_2.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:34.333455+04	23	f9bde26a1556cd667f742bd34ec7c55e
90	filer_public_thumbnails/filer_public/2013/03/13/2_3.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:34.353455+04	22	f9bde26a1556cd667f742bd34ec7c55e
91	filer_public_thumbnails/filer_public/2013/03/13/1_2.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:34.357455+04	21	f9bde26a1556cd667f742bd34ec7c55e
92	filer_public_thumbnails/filer_public/2013/03/13/3_2.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:34.361455+04	23	f9bde26a1556cd667f742bd34ec7c55e
93	filer_public_thumbnails/filer_public/2013/03/13/4_2.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:34.609455+04	24	f9bde26a1556cd667f742bd34ec7c55e
94	filer_public_thumbnails/filer_public/2013/03/13/5_2.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:34.633455+04	25	f9bde26a1556cd667f742bd34ec7c55e
95	filer_public_thumbnails/filer_public/2013/03/13/6_2.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:34.661455+04	26	f9bde26a1556cd667f742bd34ec7c55e
96	filer_public_thumbnails/filer_public/2013/03/13/4_2.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:34.665455+04	24	f9bde26a1556cd667f742bd34ec7c55e
97	filer_public_thumbnails/filer_public/2013/03/13/5_2.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:34.673455+04	25	f9bde26a1556cd667f742bd34ec7c55e
98	filer_public_thumbnails/filer_public/2013/03/13/6_2.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:34.681455+04	26	f9bde26a1556cd667f742bd34ec7c55e
99	filer_public_thumbnails/filer_public/2013/03/13/4_2.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:34.689455+04	24	f9bde26a1556cd667f742bd34ec7c55e
100	filer_public_thumbnails/filer_public/2013/03/13/5_2.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:34.693455+04	25	f9bde26a1556cd667f742bd34ec7c55e
101	filer_public_thumbnails/filer_public/2013/03/13/6_2.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:34.697455+04	26	f9bde26a1556cd667f742bd34ec7c55e
102	filer_public_thumbnails/filer_public/2013/03/13/5_2.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:34.709455+04	25	f9bde26a1556cd667f742bd34ec7c55e
103	filer_public_thumbnails/filer_public/2013/03/13/4_2.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:34.713455+04	24	f9bde26a1556cd667f742bd34ec7c55e
104	filer_public_thumbnails/filer_public/2013/03/13/6_2.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:34.725455+04	26	f9bde26a1556cd667f742bd34ec7c55e
105	filer_public_thumbnails/filer_public/2013/03/13/7_2.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:34.917455+04	27	f9bde26a1556cd667f742bd34ec7c55e
106	filer_public_thumbnails/filer_public/2013/03/13/8_2.jpg__16x16_q85_crop_upscale.jpg	2013-03-13 11:42:34.953455+04	28	f9bde26a1556cd667f742bd34ec7c55e
107	filer_public_thumbnails/filer_public/2013/03/13/7_2.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:34.957455+04	27	f9bde26a1556cd667f742bd34ec7c55e
109	filer_public_thumbnails/filer_public/2013/03/13/7_2.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:34.969455+04	27	f9bde26a1556cd667f742bd34ec7c55e
111	filer_public_thumbnails/filer_public/2013/03/13/7_2.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:34.993455+04	27	f9bde26a1556cd667f742bd34ec7c55e
108	filer_public_thumbnails/filer_public/2013/03/13/8_2.jpg__32x32_q85_crop_upscale.jpg	2013-03-13 11:42:34.965455+04	28	f9bde26a1556cd667f742bd34ec7c55e
110	filer_public_thumbnails/filer_public/2013/03/13/8_2.jpg__48x48_q85_crop_upscale.jpg	2013-03-13 11:42:34.981455+04	28	f9bde26a1556cd667f742bd34ec7c55e
112	filer_public_thumbnails/filer_public/2013/03/13/8_2.jpg__64x64_q85_crop_upscale.jpg	2013-03-13 11:42:34.997455+04	28	f9bde26a1556cd667f742bd34ec7c55e
113	filer_public_thumbnails/filer_public/2013/03/13/1.jpg__800x600_q85.jpg	2013-03-13 11:44:10.237457+04	3	f9bde26a1556cd667f742bd34ec7c55e
114	filer_public_thumbnails/filer_public/2013/03/13/1.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.245456+04	3	f9bde26a1556cd667f742bd34ec7c55e
115	filer_public_thumbnails/filer_public/2013/03/13/10.jpg__800x600_q85.jpg	2013-03-13 11:44:10.253457+04	11	f9bde26a1556cd667f742bd34ec7c55e
116	filer_public_thumbnails/filer_public/2013/03/13/10.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.261456+04	11	f9bde26a1556cd667f742bd34ec7c55e
117	filer_public_thumbnails/filer_public/2013/03/13/11.gif__800x600_q85.png	2013-03-13 11:44:10.269457+04	12	f9bde26a1556cd667f742bd34ec7c55e
118	filer_public_thumbnails/filer_public/2013/03/13/11.gif__100x75_q85_crop-True_upscale-True.png	2013-03-13 11:44:10.277457+04	12	f9bde26a1556cd667f742bd34ec7c55e
119	filer_public_thumbnails/filer_public/2013/03/13/2_1.jpg__800x600_q85.jpg	2013-03-13 11:44:10.285456+04	2	f9bde26a1556cd667f742bd34ec7c55e
120	filer_public_thumbnails/filer_public/2013/03/13/2_1.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.293457+04	2	f9bde26a1556cd667f742bd34ec7c55e
121	filer_public_thumbnails/filer_public/2013/03/13/3.jpg__800x600_q85.jpg	2013-03-13 11:44:10.301456+04	4	f9bde26a1556cd667f742bd34ec7c55e
122	filer_public_thumbnails/filer_public/2013/03/13/3.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.309457+04	4	f9bde26a1556cd667f742bd34ec7c55e
123	filer_public_thumbnails/filer_public/2013/03/13/4.jpg__800x600_q85.jpg	2013-03-13 11:44:10.317456+04	5	f9bde26a1556cd667f742bd34ec7c55e
124	filer_public_thumbnails/filer_public/2013/03/13/4.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.325457+04	5	f9bde26a1556cd667f742bd34ec7c55e
125	filer_public_thumbnails/filer_public/2013/03/13/5.jpg__800x600_q85.jpg	2013-03-13 11:44:10.337456+04	6	f9bde26a1556cd667f742bd34ec7c55e
126	filer_public_thumbnails/filer_public/2013/03/13/5.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.345457+04	6	f9bde26a1556cd667f742bd34ec7c55e
127	filer_public_thumbnails/filer_public/2013/03/13/6.jpg__800x600_q85.jpg	2013-03-13 11:44:10.349457+04	7	f9bde26a1556cd667f742bd34ec7c55e
128	filer_public_thumbnails/filer_public/2013/03/13/6.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.361457+04	7	f9bde26a1556cd667f742bd34ec7c55e
129	filer_public_thumbnails/filer_public/2013/03/13/7.jpg__800x600_q85.jpg	2013-03-13 11:44:10.365457+04	8	f9bde26a1556cd667f742bd34ec7c55e
130	filer_public_thumbnails/filer_public/2013/03/13/7.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.373456+04	8	f9bde26a1556cd667f742bd34ec7c55e
131	filer_public_thumbnails/filer_public/2013/03/13/8.jpg__800x600_q85.jpg	2013-03-13 11:44:10.381457+04	9	f9bde26a1556cd667f742bd34ec7c55e
132	filer_public_thumbnails/filer_public/2013/03/13/8.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.389457+04	9	f9bde26a1556cd667f742bd34ec7c55e
133	filer_public_thumbnails/filer_public/2013/03/13/9.jpg__800x600_q85.jpg	2013-03-13 11:44:10.397456+04	10	f9bde26a1556cd667f742bd34ec7c55e
134	filer_public_thumbnails/filer_public/2013/03/13/9.jpg__100x75_q85_crop-True_upscale-True.jpg	2013-03-13 11:44:10.405457+04	10	f9bde26a1556cd667f742bd34ec7c55e
135	filer_public_thumbnails/filer_public/2013/03/13/1_2.jpg__210x10000_q85.jpg	2013-03-13 15:38:57.983783+04	21	f9bde26a1556cd667f742bd34ec7c55e
136	filer_public_thumbnails/filer_public/2013/03/13/1.jpg__210x10000_q85.jpg	2013-03-13 15:40:45.13258+04	3	f9bde26a1556cd667f742bd34ec7c55e
\.


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 136, true);


--
-- Data for Name: filer_clipboard; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY filer_clipboard (id, user_id) FROM stdin;
1	1
\.


--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('filer_clipboard_id_seq', 1, true);


--
-- Data for Name: filer_clipboarditem; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY filer_clipboarditem (id, file_id, clipboard_id) FROM stdin;
\.


--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('filer_clipboarditem_id_seq', 28, true);


--
-- Data for Name: filer_file; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY filer_file (id, folder_id, file, _file_size, has_all_mandatory_data, original_filename, name, owner_id, uploaded_at, modified_at, description, is_public, sha1, polymorphic_ctype_id) FROM stdin;
1	\N	filer_public/2013/03/13/2.jpg	4683	f	2.jpg		1	2013-03-13 11:39:40.36226+04	2013-03-13 11:39:40.362291+04	\N	t	90f284e2a1d1e231c314f404f605562682a2a5a6	66
2	2	filer_public/2013/03/13/2_1.jpg	4683	f	2.jpg		1	2013-03-13 11:41:05.346918+04	2013-03-13 11:41:37.983748+04	\N	t	90f284e2a1d1e231c314f404f605562682a2a5a6	66
4	2	filer_public/2013/03/13/3.jpg	8116	f	3.jpg		1	2013-03-13 11:41:05.366254+04	2013-03-13 11:41:38.0207+04	\N	t	68345ec1650c458129e322ec6f173c51dff5d17d	66
5	2	filer_public/2013/03/13/4.jpg	5727	f	4.jpg		1	2013-03-13 11:41:05.673625+04	2013-03-13 11:41:38.028392+04	\N	t	68eebae164ac28d4003ace959e276da28e28626d	66
6	2	filer_public/2013/03/13/5.jpg	5129	f	5.jpg		1	2013-03-13 11:41:05.704774+04	2013-03-13 11:41:38.037646+04	\N	t	cdf748c2d2ef940ef21457c5837a3694bc811a25	66
7	2	filer_public/2013/03/13/6.jpg	4490	f	6.jpg		1	2013-03-13 11:41:05.727375+04	2013-03-13 11:41:38.045122+04	\N	t	e924efd7310253ff476d7f8eb122dad91a558436	66
8	2	filer_public/2013/03/13/7.jpg	5192	f	7.jpg		1	2013-03-13 11:41:05.970948+04	2013-03-13 11:41:38.053585+04	\N	t	d5b57a20e2fce4afc4dbcf61bd52cc94c94f8cb6	66
9	2	filer_public/2013/03/13/8.jpg	6440	f	8.jpg		1	2013-03-13 11:41:06.019947+04	2013-03-13 11:41:38.06042+04	\N	t	1056eb475bba4015d07dfe4de6341ce5954cc067	66
10	2	filer_public/2013/03/13/9.jpg	5187	f	9.jpg		1	2013-03-13 11:41:06.046102+04	2013-03-13 11:41:38.069087+04	\N	t	9d3112b03ca8743b90e22305316643b5d695da60	66
11	2	filer_public/2013/03/13/10.jpg	7114	f	10.jpg		1	2013-03-13 11:41:06.309212+04	2013-03-13 11:41:38.078942+04	\N	t	0a6946bb0e26ed8fcfc6ec9d8b36f8ecc632b012	66
12	2	filer_public/2013/03/13/11.gif	2769	f	11.gif		1	2013-03-13 11:41:06.324953+04	2013-03-13 11:41:38.085703+04	\N	t	6d10c37b28282efaa99bc54f247bb64029d85a49	66
13	3	filer_public/2013/03/13/1_1.jpg	10417	f	1.jpg		1	2013-03-13 11:42:10.400024+04	2013-03-13 11:42:18.105214+04	\N	t	7202b360da536f93effa759a1014705a9c3f683e	66
14	3	filer_public/2013/03/13/3_1.jpg	8116	f	3.jpg		1	2013-03-13 11:42:10.412964+04	2013-03-13 11:42:18.11364+04	\N	t	68345ec1650c458129e322ec6f173c51dff5d17d	66
15	3	filer_public/2013/03/13/2_2.jpg	4683	f	2.jpg		1	2013-03-13 11:42:10.412726+04	2013-03-13 11:42:18.122038+04	\N	t	90f284e2a1d1e231c314f404f605562682a2a5a6	66
16	3	filer_public/2013/03/13/4_1.jpg	5727	f	4.jpg		1	2013-03-13 11:42:10.699034+04	2013-03-13 11:42:18.129537+04	\N	t	68eebae164ac28d4003ace959e276da28e28626d	66
17	3	filer_public/2013/03/13/5_1.jpg	5129	f	5.jpg		1	2013-03-13 11:42:10.750879+04	2013-03-13 11:42:18.136891+04	\N	t	cdf748c2d2ef940ef21457c5837a3694bc811a25	66
18	3	filer_public/2013/03/13/6_1.jpg	4490	f	6.jpg		1	2013-03-13 11:42:10.76975+04	2013-03-13 11:42:18.148541+04	\N	t	e924efd7310253ff476d7f8eb122dad91a558436	66
19	3	filer_public/2013/03/13/7_1.jpg	5192	f	7.jpg		1	2013-03-13 11:42:10.994556+04	2013-03-13 11:42:18.156483+04	\N	t	d5b57a20e2fce4afc4dbcf61bd52cc94c94f8cb6	66
20	3	filer_public/2013/03/13/8_1.jpg	6440	f	8.jpg		1	2013-03-13 11:42:11.064744+04	2013-03-13 11:42:18.168289+04	\N	t	1056eb475bba4015d07dfe4de6341ce5954cc067	66
22	4	filer_public/2013/03/13/2_3.jpg	4683	f	2.jpg		1	2013-03-13 11:42:34.255051+04	2013-03-13 11:42:36.202887+04	\N	t	90f284e2a1d1e231c314f404f605562682a2a5a6	66
23	4	filer_public/2013/03/13/3_2.jpg	8116	f	3.jpg		1	2013-03-13 11:42:34.260858+04	2013-03-13 11:42:36.213023+04	\N	t	68345ec1650c458129e322ec6f173c51dff5d17d	66
24	4	filer_public/2013/03/13/4_2.jpg	5727	f	4.jpg		1	2013-03-13 11:42:34.588707+04	2013-03-13 11:42:36.220742+04	\N	t	68eebae164ac28d4003ace959e276da28e28626d	66
25	4	filer_public/2013/03/13/5_2.jpg	5129	f	5.jpg		1	2013-03-13 11:42:34.61818+04	2013-03-13 11:42:36.228796+04	\N	t	cdf748c2d2ef940ef21457c5837a3694bc811a25	66
26	4	filer_public/2013/03/13/6_2.jpg	4490	f	6.jpg		1	2013-03-13 11:42:34.643417+04	2013-03-13 11:42:36.237026+04	\N	t	e924efd7310253ff476d7f8eb122dad91a558436	66
27	4	filer_public/2013/03/13/7_2.jpg	5192	f	7.jpg		1	2013-03-13 11:42:34.907204+04	2013-03-13 11:42:36.244876+04	\N	t	d5b57a20e2fce4afc4dbcf61bd52cc94c94f8cb6	66
28	4	filer_public/2013/03/13/8_2.jpg	6440	f	8.jpg		1	2013-03-13 11:42:34.933353+04	2013-03-13 11:42:36.253186+04	\N	t	1056eb475bba4015d07dfe4de6341ce5954cc067	66
21	4	filer_public/2013/03/13/1_2.jpg	10417	t	1.jpg	Pepsi	1	2013-03-13 11:42:34.250753+04	2013-03-13 15:39:47.236314+04		t	7202b360da536f93effa759a1014705a9c3f683e	66
3	2	filer_public/2013/03/13/1.jpg	10417	t	1.jpg	PepsiCo	1	2013-03-13 11:41:05.349352+04	2013-03-13 15:42:04.65107+04		t	7202b360da536f93effa759a1014705a9c3f683e	66
\.


--
-- Name: filer_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('filer_file_id_seq', 28, true);


--
-- Data for Name: filer_folder; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY filer_folder (id, parent_id, name, owner_id, uploaded_at, created_at, modified_at, lft, rght, tree_id, level) FROM stdin;
2	1	ru	1	2013-03-13 11:41:31.335461+04	2013-03-13 11:41:31.335485+04	2013-03-13 11:41:31.335496+04	2	3	1	1
3	1	en	1	2013-03-13 11:41:52.877867+04	2013-03-13 11:41:52.877888+04	2013-03-13 11:41:52.877899+04	4	5	1	1
1	\N	clients	1	2013-03-13 11:41:16.363746+04	2013-03-13 11:41:16.363773+04	2013-03-13 11:41:16.363784+04	1	8	1	0
4	1	cn	1	2013-03-13 11:41:57.850414+04	2013-03-13 11:41:57.850446+04	2013-03-13 11:41:57.850465+04	6	7	1	1
\.


--
-- Name: filer_folder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('filer_folder_id_seq', 4, true);


--
-- Data for Name: filer_folderpermission; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY filer_folderpermission (id, folder_id, type, user_id, group_id, everybody, can_edit, can_read, can_add_children) FROM stdin;
\.


--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('filer_folderpermission_id_seq', 1, false);


--
-- Data for Name: filer_image; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
1	80	190	2013-03-13 11:39:40.254594+04	\N	\N	\N	f	f	\N
2	80	190	2013-03-13 11:41:05.331899+04	\N	\N	\N	f	f	\N
4	80	190	2013-03-13 11:41:05.342544+04	\N	\N	\N	f	f	\N
5	80	190	2013-03-13 11:41:05.640261+04	\N	\N	\N	f	f	\N
6	80	190	2013-03-13 11:41:05.682028+04	\N	\N	\N	f	f	\N
7	80	190	2013-03-13 11:41:05.699677+04	\N	\N	\N	f	f	\N
8	80	190	2013-03-13 11:41:05.933544+04	\N	\N	\N	f	f	\N
9	80	190	2013-03-13 11:41:05.995244+04	\N	\N	\N	f	f	\N
10	80	190	2013-03-13 11:41:06.023398+04	\N	\N	\N	f	f	\N
11	80	190	2013-03-13 11:41:06.282478+04	\N	\N	\N	f	f	\N
12	77	198	2013-03-13 11:41:06.302873+04	\N	\N	\N	f	f	\N
13	80	190	2013-03-13 11:42:10.38306+04	\N	\N	\N	f	f	\N
14	80	190	2013-03-13 11:42:10.396948+04	\N	\N	\N	f	f	\N
15	80	190	2013-03-13 11:42:10.402167+04	\N	\N	\N	f	f	\N
16	80	190	2013-03-13 11:42:10.656184+04	\N	\N	\N	f	f	\N
17	80	190	2013-03-13 11:42:10.723636+04	\N	\N	\N	f	f	\N
18	80	190	2013-03-13 11:42:10.744631+04	\N	\N	\N	f	f	\N
19	80	190	2013-03-13 11:42:10.963565+04	\N	\N	\N	f	f	\N
20	80	190	2013-03-13 11:42:11.050864+04	\N	\N	\N	f	f	\N
22	80	190	2013-03-13 11:42:34.239167+04	\N	\N	\N	f	f	\N
23	80	190	2013-03-13 11:42:34.244178+04	\N	\N	\N	f	f	\N
24	80	190	2013-03-13 11:42:34.523677+04	\N	\N	\N	f	f	\N
25	80	190	2013-03-13 11:42:34.565969+04	\N	\N	\N	f	f	\N
26	80	190	2013-03-13 11:42:34.609385+04	\N	\N	\N	f	f	\N
27	80	190	2013-03-13 11:42:34.88927+04	\N	\N	\N	f	f	\N
28	80	190	2013-03-13 11:42:34.907656+04	\N	\N	\N	f	f	\N
21	80	190	2013-03-13 11:42:34.229307+04			\N	f	f	
3	80	190	2013-03-13 11:41:05.334983+04			\N	f	f	
\.


--
-- Data for Name: menus_cachekey; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY menus_cachekey (id, language, site, key) FROM stdin;
172	ru	1	cms-menu_nodes_ru_1_1_user
173	en	1	cms-menu_nodes_en_1_1_user
174	zh-cn	1	cms-menu_nodes_zh-cn_1_1_user
\.


--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('menus_cachekey_id_seq', 174, true);


--
-- Data for Name: snippet_snippet; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY snippet_snippet (id, name, html, template) FROM stdin;
\.


--
-- Name: snippet_snippet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('snippet_snippet_id_seq', 3, true);


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	cms	0001_initial	2013-03-07 14:19:02.540934+04
2	cms	0002_auto_start	2013-03-07 14:19:02.568971+04
3	cms	0003_remove_placeholder	2013-03-07 14:19:02.577117+04
4	cms	0004_textobjects	2013-03-07 14:19:02.706512+04
5	cms	0005_mptt_added_to_plugins	2013-03-07 14:19:02.884944+04
6	text	0001_initial	2013-03-07 14:19:02.906778+04
7	text	0002_freeze	2013-03-07 14:19:02.91243+04
8	cms	0006_apphook	2013-03-07 14:19:03.056757+04
9	cms	0007_apphook_longer	2013-03-07 14:19:03.204678+04
10	cms	0008_redirects	2013-03-07 14:19:03.227965+04
11	cms	0009_added_meta_fields	2013-03-07 14:19:03.25178+04
12	cms	0010_5char_language	2013-03-07 14:19:03.431839+04
13	cms	0011_title_overwrites	2013-03-07 14:19:03.454511+04
14	cms	0012_publisher	2013-03-07 14:19:04.088289+04
15	text	0003_publisher	2013-03-07 14:19:04.118349+04
16	snippet	0001_initial	2013-03-07 14:19:04.153881+04
17	snippet	0002_publisher	2013-03-07 14:19:04.185697+04
18	picture	0001_initial	2013-03-07 14:19:04.209036+04
19	picture	0002_link_rename	2013-03-07 14:19:04.248531+04
20	picture	0003_freeze	2013-03-07 14:19:04.254853+04
21	picture	0004_publisher	2013-03-07 14:19:04.282612+04
22	link	0001_initial	2013-03-07 14:19:04.331503+04
23	link	0002_link_rename	2013-03-07 14:19:04.377908+04
24	link	0003_page_link	2013-03-07 14:19:04.386497+04
25	link	0004_larger_link_names	2013-03-07 14:19:04.473817+04
26	link	0005_publisher	2013-03-07 14:19:04.507076+04
27	googlemap	0001_initial	2013-03-07 14:19:04.551948+04
28	file	0001_initial	2013-03-07 14:19:04.574322+04
29	file	0002_freeze	2013-03-07 14:19:04.578992+04
30	file	0003_publisher	2013-03-07 14:19:04.623667+04
31	cms	0013_site_copy	2013-03-07 14:19:04.685354+04
32	cms	0014_sites_removed	2013-03-07 14:19:04.745208+04
33	cms	0015_modified_by_added	2013-03-07 14:19:05.006452+04
34	cms	0016_author_copy	2013-03-07 14:19:05.059305+04
35	cms	0017_author_removed	2013-03-07 14:19:05.120047+04
36	cms	0018_site_permissions	2013-03-07 14:19:05.2321+04
37	cms	0019_public_table_renames	2013-03-07 14:19:05.493141+04
38	text	0004_table_rename	2013-03-07 14:19:05.685373+04
39	text	0005_publisher2	2013-03-07 14:19:05.7099+04
40	teaser	0001_initial	2013-03-07 14:19:05.767477+04
41	teaser	0002_publisher2	2013-03-07 14:19:05.79495+04
42	snippet	0003_table_rename	2013-03-07 14:19:06.010832+04
43	snippet	0004_publisher2	2013-03-07 14:19:06.035364+04
44	picture	0005_table_rename	2013-03-07 14:19:06.488443+04
45	picture	0006_float_added	2013-03-07 14:19:06.520743+04
46	picture	0007_publisher2	2013-03-07 14:19:06.548749+04
47	link	0006_table_rename	2013-03-07 14:19:06.739258+04
48	link	0007_publisher2	2013-03-07 14:19:06.762668+04
49	googlemap	0002_table_rename	2013-03-07 14:19:06.94875+04
50	googlemap	0003_address_unified	2013-03-07 14:19:06.975602+04
51	googlemap	0004_copy_address	2013-03-07 14:19:06.999617+04
52	googlemap	0005_delete_street	2013-03-07 14:19:07.027355+04
53	googlemap	0006_publisher2	2013-03-07 14:19:07.056355+04
54	file	0004_table_rename	2013-03-07 14:19:07.241398+04
55	file	0005_publisher2	2013-03-07 14:19:07.263518+04
56	cms	0020_advanced_permissions	2013-03-07 14:19:07.351122+04
57	cms	0021_publisher2	2013-03-07 14:19:07.767577+04
58	cms	0022_login_required_added	2013-03-07 14:19:07.859201+04
59	cms	0023_plugin_table_naming_function_changed	2013-03-07 14:19:07.899084+04
60	cms	0024_added_placeholder_model	2013-03-07 14:19:07.967686+04
61	cms	0025_placeholder_migration	2013-03-07 14:19:08.021022+04
62	cms	0026_finish_placeholder_migration	2013-03-07 14:19:08.086518+04
63	cms	0027_added_width_to_placeholder	2013-03-07 14:19:08.126387+04
64	cms	0028_limit_visibility_in_menu_step1of3	2013-03-07 14:19:08.168715+04
65	cms	0029_limit_visibility_in_menu_step2of3_data	2013-03-07 14:19:08.204697+04
66	cms	0030_limit_visibility_in_menu_step3of3	2013-03-07 14:19:08.239386+04
67	cms	0031_improved_language_code_support	2013-03-07 14:19:08.475686+04
68	cms	0032_auto__del_field_cmsplugin_publisher_public__del_field_cmsplugin_publis	2013-03-07 14:19:08.512008+04
69	cms	0033_auto__del_field_title_publisher_is_draft__del_field_title_publisher_st	2013-03-07 14:19:08.579957+04
70	cms	0034_auto__chg_field_title_language__chg_field_cmsplugin_language__add_fiel	2013-03-07 14:19:08.862357+04
71	cms	0035_auto__add_field_globalpagepermission_can_view__add_field_pagepermissio	2013-03-07 14:19:08.935709+04
72	cms	0036_auto__add_field_cmsplugin_changed_date	2013-03-07 14:19:09.010946+04
73	menus	0001_initial	2013-03-07 14:19:09.279081+04
74	text	0006_2_1_4_upgrade	2013-03-07 14:19:09.375705+04
75	picture	0008_longdesc_added	2013-03-07 14:19:09.53617+04
76	link	0008_mailto	2013-03-07 14:19:09.653073+04
77	link	0009_add_target	2013-03-07 14:19:09.692564+04
78	snippet	0005_template_added	2013-03-07 14:19:09.987785+04
79	googlemap	0007_latlng	2013-03-07 14:19:10.086714+04
80	googlemap	0008_routeplaner	2013-03-07 14:19:10.111591+04
81	googlemap	0009_routeplaner_title	2013-03-07 14:19:10.14001+04
82	googlemap	0010_auto__chg_field_googlemap_content	2013-03-07 14:19:10.216045+04
83	googlemap	0011_remove_zoom_null_values	2013-03-07 14:19:10.224442+04
84	googlemap	0012_auto__add_field_googlemap_width__add_field_googlemap_height__chg_field	2013-03-07 14:19:10.321974+04
85	zinnia	0001_initial	2013-03-07 14:19:10.497284+04
101	cmsplugin_zinnia	0001_initial	2013-03-07 14:19:12.249065+04
102	cmsplugin_zinnia	0002_query_entries_plugin	2013-03-07 14:19:12.29306+04
103	cmsplugin_zinnia	0003_calendar_entries_plugin	2013-03-07 14:19:12.332657+04
104	cmsplugin_contact	0001_initial	2013-03-07 14:19:12.441455+04
105	cmsplugin_contact	0002_auto__chg_field_contact_thanks	2013-03-07 14:19:12.53061+04
106	easy_thumbnails	0001_initial	2013-03-07 14:19:12.664935+04
107	easy_thumbnails	0002_filename_indexes	2013-03-07 14:19:12.689964+04
108	easy_thumbnails	0003_auto__add_storagenew	2013-03-07 14:19:12.720223+04
109	easy_thumbnails	0004_auto__add_field_source_storage_new__add_field_thumbnail_storage_new	2013-03-07 14:19:12.769143+04
110	easy_thumbnails	0005_storage_fks_null	2013-03-07 14:19:12.987039+04
111	easy_thumbnails	0006_copy_storage	2013-03-07 14:19:12.995097+04
112	easy_thumbnails	0007_storagenew_fks_not_null	2013-03-07 14:19:13.20763+04
113	easy_thumbnails	0008_auto__del_field_source_storage__del_field_thumbnail_storage	2013-03-07 14:19:13.21867+04
114	easy_thumbnails	0009_auto__del_storage	2013-03-07 14:19:13.22707+04
115	easy_thumbnails	0010_rename_storage	2013-03-07 14:19:13.248968+04
116	easy_thumbnails	0011_auto__add_field_source_storage_hash__add_field_thumbnail_storage_hash	2013-03-07 14:19:13.300485+04
117	easy_thumbnails	0012_build_storage_hashes	2013-03-07 14:19:13.308662+04
118	easy_thumbnails	0013_auto__del_storage__del_field_source_storage__del_field_thumbnail_stora	2013-03-07 14:19:13.330951+04
119	easy_thumbnails	0014_auto__add_unique_source_name_storage_hash__add_unique_thumbnail_name_s	2013-03-07 14:19:13.353726+04
120	easy_thumbnails	0015_auto__del_unique_thumbnail_name_storage_hash__add_unique_thumbnail_sou	2013-03-07 14:19:13.411874+04
121	filer	0001_initial	2013-03-07 14:19:13.780074+04
122	filer	0002_rename_file_field	2013-03-07 14:19:13.858096+04
123	filer	0003_add_description_field	2013-03-07 14:19:13.88481+04
124	filer	0004_auto__del_field_file__file__add_field_file_file__add_field_file_is_pub	2013-03-07 14:19:13.99685+04
125	filer	0005_auto__add_field_file_sha1__chg_field_file_file	2013-03-07 14:19:14.13225+04
126	filer	0006_polymorphic__add_field_file_polymorphic_ctype	2013-03-07 14:19:14.173556+04
127	filer	0007_polymorphic__content_type_data	2013-03-07 14:19:14.203836+04
128	filer	0008_polymorphic__del_field_file__file_type_plugin_name	2013-03-07 14:19:14.229604+04
129	filer	0009_auto__add_field_folderpermission_can_edit_new__add_field_folderpermiss	2013-03-07 14:19:14.258706+04
130	filer	0010_folderpermissions	2013-03-07 14:19:14.285247+04
131	filer	0011_auto__del_field_folderpermission_can_add_children__del_field_folderper	2013-03-07 14:19:14.316559+04
132	filer	0012_renaming_folderpermissions	2013-03-07 14:19:14.404607+04
133	filer	0013_remove_null_file_name	2013-03-07 14:19:14.440818+04
134	filer	0014_auto__add_field_image_related_url__chg_field_file_name	2013-03-07 14:19:14.604494+04
135	cmsplugin_filer_folder	0001_initial	2013-03-07 14:19:14.758684+04
136	cmsplugin_filer_image	0001_initial	2013-03-07 14:19:14.935129+04
137	cmsplugin_filer_image	0002_auto__add_field_filerimage_image_url__chg_field_filerimage_image	2013-03-07 14:19:15.066876+04
138	cmsplugin_filer_image	0003_auto__add_thumbnailoption__add_field_filerimage_thumbnail_option	2013-03-07 14:19:15.110518+04
139	cmsplugin_filer_image	0004_auto__del_field_thumbnailoption_is_scaled__del_field_thumbnailoption_i	2013-03-07 14:19:15.238887+04
140	cmsplugin_filer_image	0005_rename_float_to_alignment	2013-03-07 14:19:15.431321+04
141	cmsplugin_filer_image	0006_auto__add_field_filerimage_original_link	2013-03-07 14:19:15.494591+04
142	cmsplugin_filer_image	0007_rename_caption_to_caption_text	2013-03-07 14:19:15.591537+04
143	cmsplugin_filer_image	0008_auto__add_field_filerimage_file_link	2013-03-07 14:19:15.631348+04
144	cmsplugin_filer_image	0009_auto__add_field_filerimage_use_original_image	2013-03-07 14:19:15.701444+04
145	cmsplugin_filer_image	0010_auto__add_field_filerimage_target_blank	2013-03-07 14:19:15.787735+04
146	cms_helper	0001_initial	2013-03-07 14:21:30.586995+04
147	zinnia	0002_auto__add_field_entry_pingback_enabled	2013-03-07 16:10:41.251108+04
148	zinnia	0003_auto__chg_field_category_title__chg_field_category_slug__add_unique_ca	2013-03-07 16:10:41.517731+04
149	zinnia	0004_mptt_categories	2013-03-07 16:10:41.554943+04
150	zinnia	0005_entry_protection	2013-03-07 16:10:41.558597+04
151	zinnia	0006_entry_template	2013-03-07 16:10:41.561365+04
152	zinnia	0007_entry_featured	2013-03-07 16:10:41.564117+04
153	zinnia	0008_add_status_permission	2013-03-07 16:10:41.566765+04
154	zinnia	0009_change_mptt_field	2013-03-07 16:10:41.569604+04
155	zinnia	0010_publication_dates_unrequired	2013-03-07 16:10:41.572278+04
156	zinnia	0011_author_proxy	2013-03-07 16:10:41.574855+04
157	zinnia	0012_discussion_count	2013-03-07 16:10:41.578192+04
158	zinnia	0013_compute_discussion_count	2013-03-07 16:10:41.580858+04
159	zinnia	0014_trackback_enabled	2013-03-07 16:10:41.583721+04
160	zinnia	0015_rename_template	2013-03-07 16:10:41.587211+04
161	zinnia	0016_entry_content_template	2013-03-07 16:10:41.589462+04
162	zinnia	0017_auto__add_field_category_title_ru__add_field_category_title_en__add_fi	2013-03-07 16:10:57.499069+04
163	zinnia	0018_auto__add_field_category_title_zh_cn__add_field_category_description_z	2013-03-11 11:14:15.92784+04
\.


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 163, true);


--
-- Data for Name: tagging_tag; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY tagging_tag (id, name) FROM stdin;
\.


--
-- Name: tagging_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('tagging_tag_id_seq', 1, false);


--
-- Data for Name: tagging_taggeditem; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY tagging_taggeditem (id, tag_id, content_type_id, object_id) FROM stdin;
\.


--
-- Name: tagging_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('tagging_taggeditem_id_seq', 1, false);


--
-- Data for Name: zinnia_category; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY zinnia_category (slug, description, id, title, parent_id, lft, rght, tree_id, level, title_ru, title_en, description_ru, description_en, title_zh_cn, description_zh_cn) FROM stdin;
news		1	Статьи	\N	1	2	1	0	Статьи					
\.


--
-- Name: zinnia_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_category_id_seq', 1, true);


--
-- Data for Name: zinnia_entry; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY zinnia_entry (status, last_update, comment_enabled, tags, image, title, excerpt, slug, content, end_publication, start_publication, creation_date, id, pingback_enabled, login_required, password, detail_template, featured, comment_count, pingback_count, trackback_count, trackback_enabled, content_template, title_ru, title_en, content_ru, content_en, excerpt_ru, excerpt_en, title_zh_cn, content_zh_cn, excerpt_zh_cn) FROM stdin;
2	2011-10-12 23:55:30+04	t			Кризис на китайско-казахстанской границе	<p><br />\n</p>\n<p>Почему скопились грузы на границе Китая с Казахстаном</p>	krizis-na-kitajsko-kazahstanskoj-granitse-2011-10-12-145530	<p style="text-align: justify">С 28 апреля 2011 года оборвалась связь с руководителями и менеджерами многих казахстанских транспортных компаний, имеющих свои представительства в Китае &ndash; их телефоны, электронные адреса и скайпы вдруг разом замолчали. <br />\nВ первую очередь, переполох начался среди бизнесменов, которые несколькими днями раньше сделали отправку грузов из Китая в Казахстан через таможенные посты &laquo;Хоргос&raquo; и &laquo;Калжат&raquo;. Кому приятно, лишиться сотен тысяч долларов из-за того, что на этих пограничных переходах начались какие-то санкции против контрабандистов. <br />\nСМИ Казахстана сообщили о пресечении деятельности организованной преступной группировки, возглавляемой двумя высокопоставленными силовиками &ndash; начальником таможенного поста &laquo;Хоргос&raquo; и заместителем начальника КНБ (преемник КГБ) Акмолинской области. Аресты сопровождались обысками в домах, на складах и в офисах. Крупномасштабная антикоррупционная операция проводилась по поручению президента и с санкции генерального прокурора Казахстана.<br />\nНа состоявшейся 3 мая пресс-конференции официальный представитель финансовой полиции Казахстана сообщил: &laquo;Установлена активно действующая организованная преступная группа, состоящая из более 100 человек, которая длительное время осуществляла контрабандный провоз товаров из Китая в Республику Казахстан&raquo;.<br />\nПо имеющимся данным, члены контрабандной группировки зарабатывали более $5 млн. в неделю на незаконном въезде в страну автомобилей, а общий размер ущерба от действий контрабандистов составил около $130 млн. <br />\nФормирование контрабандного груза криминальной преступной группой, или так называемыми &quot;кубовщиками&quot;, осуществлялось в Китае, затем груз отправлялся в Казахстан. После пересечения границы под контролем членов преступной группы контрабандный груз на таможенных постах оформлялся по поддельным документам и инвойсам для дальнейшей таможенной чистки на складах временного хранения Алматы и Алматинской области.<br />\nЕженедельно таким путем через таможенные посты &quot;Хоргос&quot; и &quot;Калжат&quot; с контрабандным грузом &quot;проходило&quot; от 100 до 200 автомашин. При этом за каждое пересечение границы с одной автомашины производился незаконный денежный сбор от $25 тыс. до $30 тыс. Из них только $5 тыс. поступали в бюджет в виде таможенных платежей, остальные оседали у представителей ОПГ.<br />\nОстается лишь строить догадки по поводу того, что гром над казахстанскими коррупционерами при границе грянул так поздно. Ведь грозовые тучи над &laquo;Харгосом&raquo; стали сгущаться намного раньше. <br />\nИсследование, проведенное в 2008 году для одной международной фирмы, желающей вложить инвестиционные средства в &laquo;Хоргос&raquo;, выявило ряд серьезных несоответствий. В соответствии с данными таможенной статистики Казахстана, в 2007 году из Китая на территорию Казахстана через &laquo;Хоргос&raquo; прошло три тысячи грузовиков. По оценкам же таможенных властей Китая, это цифра составила 36 тысяч. Фирма пришла к выводу, что расхождение происходит из-за деятельности черного рынка, отмечает американское издание.<br />\nВерховные власти Казахстана, наверное, заставило поспешить то, что в результате образования Таможенного союза, в который вошли Белоруссия, Казахстан и Россия, с 1 июля 2011 года Россия снимает свои таможенные посты на границах с Казахстаном и Белоруссией. Таким образом, любой контрабандный груз, доставленный из Китая в Казахстан, уже беспрепятственно может следовать вглубь территории Таможенного союза.<br />\nПо условиям Таможенного союза, импортные пошлины, взимаемые на каждой границе, будут в равных долях поступать в доход трех государств-членов ТС. Это означает, что пошлины, неуплаченные контрабандистами на посту &laquo;Хоргос&raquo;, представляют собой суммы, недополученные Россией и Белоруссией, равно как и Казахстаном.<br />\nБеспокойство России, которое неоднократно высказывалось на межправительственных переговорах, понятно. Ведь до 80 % грузов, пересекающих границу в &laquo;Хоргосе&raquo;, будут предназначаться для рынка России. Чтобы убедиться, что ей достается полагающаяся доля прибыли, Россия выступает даже за то, чтобы выставить в &laquo;Хоргосе&raquo; своих пограничников.<br />\nСостоялась очередная победа законности над крупнейшей группировкой контрабандистов. Но кто подумал о судьбе тех, кто, как говорят в народе, попал &laquo;под раздачу&raquo;?<br />\nПострадали многие транспортные компании, работавшие на казахстанском направлении &ndash; их грузы оказались арестованными. По цепочке понесли ущерб и бизнесмены, пользовавшиеся услугами этих транспортных компаний. Но что есть маленькие трагедии сотни-другой частных предпринимателей, отправивших грузы из Китая в Казахстан в столь неудачное время. В масштабах созданного тройственного Таможенного союза их проблемы - пустяк.</p>\n<p style="text-align: justify">Евгений Гончаров.</p>\n<p style="text-align: justify">Использованы материалы:&nbsp;<br />\nhttp://customsunion.ru/infoprint/2742.html<br />\nhttp://www.inosmi.ru/middle_asia/20110507/169169605.html<br />\nhttp://www.kt.kz/?lang=rus&amp;uin=1133168944&amp;chapter=1153537371</p>\n<p style="text-align: justify"><br />\n</p>\n<p style="text-align: justify">&nbsp;</p>	\N	\N	2011-06-05 09:00:00+04	2	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Кризис на китайско-казахстанской границе	\N	<p style="text-align: justify">С 28 апреля 2011 года оборвалась связь с руководителями и менеджерами многих казахстанских транспортных компаний, имеющих свои представительства в Китае &ndash; их телефоны, электронные адреса и скайпы вдруг разом замолчали. <br />\nВ первую очередь, переполох начался среди бизнесменов, которые несколькими днями раньше сделали отправку грузов из Китая в Казахстан через таможенные посты &laquo;Хоргос&raquo; и &laquo;Калжат&raquo;. Кому приятно, лишиться сотен тысяч долларов из-за того, что на этих пограничных переходах начались какие-то санкции против контрабандистов. <br />\nСМИ Казахстана сообщили о пресечении деятельности организованной преступной группировки, возглавляемой двумя высокопоставленными силовиками &ndash; начальником таможенного поста &laquo;Хоргос&raquo; и заместителем начальника КНБ (преемник КГБ) Акмолинской области. Аресты сопровождались обысками в домах, на складах и в офисах. Крупномасштабная антикоррупционная операция проводилась по поручению президента и с санкции генерального прокурора Казахстана.<br />\nНа состоявшейся 3 мая пресс-конференции официальный представитель финансовой полиции Казахстана сообщил: &laquo;Установлена активно действующая организованная преступная группа, состоящая из более 100 человек, которая длительное время осуществляла контрабандный провоз товаров из Китая в Республику Казахстан&raquo;.<br />\nПо имеющимся данным, члены контрабандной группировки зарабатывали более $5 млн. в неделю на незаконном въезде в страну автомобилей, а общий размер ущерба от действий контрабандистов составил около $130 млн. <br />\nФормирование контрабандного груза криминальной преступной группой, или так называемыми &quot;кубовщиками&quot;, осуществлялось в Китае, затем груз отправлялся в Казахстан. После пересечения границы под контролем членов преступной группы контрабандный груз на таможенных постах оформлялся по поддельным документам и инвойсам для дальнейшей таможенной чистки на складах временного хранения Алматы и Алматинской области.<br />\nЕженедельно таким путем через таможенные посты &quot;Хоргос&quot; и &quot;Калжат&quot; с контрабандным грузом &quot;проходило&quot; от 100 до 200 автомашин. При этом за каждое пересечение границы с одной автомашины производился незаконный денежный сбор от $25 тыс. до $30 тыс. Из них только $5 тыс. поступали в бюджет в виде таможенных платежей, остальные оседали у представителей ОПГ.<br />\nОстается лишь строить догадки по поводу того, что гром над казахстанскими коррупционерами при границе грянул так поздно. Ведь грозовые тучи над &laquo;Харгосом&raquo; стали сгущаться намного раньше. <br />\nИсследование, проведенное в 2008 году для одной международной фирмы, желающей вложить инвестиционные средства в &laquo;Хоргос&raquo;, выявило ряд серьезных несоответствий. В соответствии с данными таможенной статистики Казахстана, в 2007 году из Китая на территорию Казахстана через &laquo;Хоргос&raquo; прошло три тысячи грузовиков. По оценкам же таможенных властей Китая, это цифра составила 36 тысяч. Фирма пришла к выводу, что расхождение происходит из-за деятельности черного рынка, отмечает американское издание.<br />\nВерховные власти Казахстана, наверное, заставило поспешить то, что в результате образования Таможенного союза, в который вошли Белоруссия, Казахстан и Россия, с 1 июля 2011 года Россия снимает свои таможенные посты на границах с Казахстаном и Белоруссией. Таким образом, любой контрабандный груз, доставленный из Китая в Казахстан, уже беспрепятственно может следовать вглубь территории Таможенного союза.<br />\nПо условиям Таможенного союза, импортные пошлины, взимаемые на каждой границе, будут в равных долях поступать в доход трех государств-членов ТС. Это означает, что пошлины, неуплаченные контрабандистами на посту &laquo;Хоргос&raquo;, представляют собой суммы, недополученные Россией и Белоруссией, равно как и Казахстаном.<br />\nБеспокойство России, которое неоднократно высказывалось на межправительственных переговорах, понятно. Ведь до 80 % грузов, пересекающих границу в &laquo;Хоргосе&raquo;, будут предназначаться для рынка России. Чтобы убедиться, что ей достается полагающаяся доля прибыли, Россия выступает даже за то, чтобы выставить в &laquo;Хоргосе&raquo; своих пограничников.<br />\nСостоялась очередная победа законности над крупнейшей группировкой контрабандистов. Но кто подумал о судьбе тех, кто, как говорят в народе, попал &laquo;под раздачу&raquo;?<br />\nПострадали многие транспортные компании, работавшие на казахстанском направлении &ndash; их грузы оказались арестованными. По цепочке понесли ущерб и бизнесмены, пользовавшиеся услугами этих транспортных компаний. Но что есть маленькие трагедии сотни-другой частных предпринимателей, отправивших грузы из Китая в Казахстан в столь неудачное время. В масштабах созданного тройственного Таможенного союза их проблемы - пустяк.</p>\n<p style="text-align: justify">Евгений Гончаров.</p>\n<p style="text-align: justify">Использованы материалы:&nbsp;<br />\nhttp://customsunion.ru/infoprint/2742.html<br />\nhttp://www.inosmi.ru/middle_asia/20110507/169169605.html<br />\nhttp://www.kt.kz/?lang=rus&amp;uin=1133168944&amp;chapter=1153537371</p>\n<p style="text-align: justify"><br />\n</p>\n<p style="text-align: justify">&nbsp;</p>	\N	<p><br />\n</p>\n<p>Почему скопились грузы на границе Китая с Казахстаном</p>	\N	\N	\N	\N
2	2011-10-13 00:12:56+04	t			Нам скоро три года	<p>&nbsp;Интервью с директором транспортной компании GCS-CHINA Игорем Козубовым.</p>	nam-skoro-tri-goda-2011-10-12-151256	<p style="text-align: justify"><strong>Вопрос:</strong> Сколько лет действует ваше предприятие?</p>\n<p style="text-align: justify"><strong>Ответ</strong>: Мы зарегистрировали представительство в Шанхае в ноябре 2008 года.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> Срок не так уж и велик, но и не мал. По крайней мере, за такое время понятно, жизнеспособно ли предприятие, есть ли у него перспективы роста. Какие программы минимум и максимум ставили перед вами учредители?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> Наша основная задача &ndash; содействовать развитию бизнеса нашей материнской компании. Контейнерные грузы из Китая составляют большую долю грузопотока холдинга. Поэтому обеспечение координации с отправителями, китайскими агентами и российскими подразделениями является приоритетом в нашей работе с клиентами. Конечно, вопросы самоокупаемости и получения дополнительной прибыли нашим китайским подразделением также ставятся в разряд первоочередных. Поэтому мы активно работаем в направлении расширения клиентской базы, предлагаем нашим клиентам ряд новых услуг (например, услуги по представительству в Китае и по поиску товаров китайских производителей) , расширяем географию транспортных маршрутов из Китая В Россию и страны СНГ.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> На какой объем грузоперевозок вы вышли?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> Компания сейчас только в Новороссийске обрабатывает порядка 500 ТЕУ в неделю, прибывших из китайских портов. Что касается нашего представительства, то по итогам 2010 года эта цифра увеличилась в 3 раза по сравнению с первым годом работы.</p>\n<p style="text-align: justify"><strong>Вопрос: </strong>А какие другие маршруты вы можете предложить своим клиентам?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> Мы работаем не только по черноморскому направлению, предлагаем клиентам имеющиеся конкурентные возможности по питерскому порту, Дальнему Востоку, активно используем железнодорожные варианты доставки через Забайкальск и Казахстан.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> Шанхайский порт, как мы знаем, входит в первую мировую пятерку. Наверняка ведь здесь обосновались десятки компаний, подобных вашей. То есть, работающих в том же направлении перевозки грузов. За время работы в Китае вы видели крах таких предприятий? Какие причины приводят к столь плачевному финалу?</p>\n<p style="text-align: justify"><strong>Ответ: </strong>От неприятностей никто не застрахован, но считаю основной причиной неудач &ndash; отсутствие четкой концепции работы на китайском рынке. Зачастую компании приходят сюда без осознания своих реальных задач, просто потому, что так делают многие, исходя из широко сейчас распространенной идеи перспективности Китая и его экономики. А рынок грузоперевозок здесь, как вы правильно отметили, очень плотный, конкуренция зашкаливает.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> Но ведь есть поговорка: &laquo;Кто не рискует, тот не пьет шампанского&raquo;&hellip;</p>\n<p style="text-align: justify"><strong>Ответ: </strong>Чем рисковать? Грузами клиентов? Своей репутацией? Это не наш выбор, мы дорожим своим именем на международном логистическом рынке. Авантюрный стиль работы для нас неприемлем хотя бы потому, что мы входим в один из самых крупных и авторитетных транспортных холдингов &laquo;Дело&raquo; (www.delo-group.ru). Доставка контейнеров из Китая требует от логистической компании наличия многих составляющих - квалификации персонала, опыта работы на международном рынке транспортных услуг и пр.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> Что связывает вашу компанию с Новороссийским портом?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> В Новороссийске наша компания располагает собственными транспортными активами: терминалами, складскими мощностями, оборудованием для перевалки различных видов грузов, парком автоконтейнеровозов и железнодорожных платформ и т.д.</p>\n<p style="text-align: justify"><strong>Вопрос</strong>: По заявлениям правительств России и Китая, объем грузоперевозок между нашими странами в ближайшей перспективе должен увеличиться в разы. Вы на практике ощущаете этот рост?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> Да, по полученной статистике от наших новороссийских коллег, за последние месяцы наблюдается динамичный рост как импорта из Китая в Россию, так и увеличение экспортных потоков в обратном направлении (сера, каучук, удобрения и пр.). Поэтому, полагаю, что оптимистичный прогноз правительств имеет реальную перспективу реализации.<em>&nbsp;</em></p>\n<p style="text-align: justify"><em>Вопросы задавал Георгий Самолетов.</em></p>	\N	\N	2011-10-12 09:00:00+04	5	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Нам скоро три года	\N	<p style="text-align: justify"><strong>Вопрос:</strong> Сколько лет действует ваше предприятие?</p>\n<p style="text-align: justify"><strong>Ответ</strong>: Мы зарегистрировали представительство в Шанхае в ноябре 2008 года.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> Срок не так уж и велик, но и не мал. По крайней мере, за такое время понятно, жизнеспособно ли предприятие, есть ли у него перспективы роста. Какие программы минимум и максимум ставили перед вами учредители?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> Наша основная задача &ndash; содействовать развитию бизнеса нашей материнской компании. Контейнерные грузы из Китая составляют большую долю грузопотока холдинга. Поэтому обеспечение координации с отправителями, китайскими агентами и российскими подразделениями является приоритетом в нашей работе с клиентами. Конечно, вопросы самоокупаемости и получения дополнительной прибыли нашим китайским подразделением также ставятся в разряд первоочередных. Поэтому мы активно работаем в направлении расширения клиентской базы, предлагаем нашим клиентам ряд новых услуг (например, услуги по представительству в Китае и по поиску товаров китайских производителей) , расширяем географию транспортных маршрутов из Китая В Россию и страны СНГ.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> На какой объем грузоперевозок вы вышли?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> Компания сейчас только в Новороссийске обрабатывает порядка 500 ТЕУ в неделю, прибывших из китайских портов. Что касается нашего представительства, то по итогам 2010 года эта цифра увеличилась в 3 раза по сравнению с первым годом работы.</p>\n<p style="text-align: justify"><strong>Вопрос: </strong>А какие другие маршруты вы можете предложить своим клиентам?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> Мы работаем не только по черноморскому направлению, предлагаем клиентам имеющиеся конкурентные возможности по питерскому порту, Дальнему Востоку, активно используем железнодорожные варианты доставки через Забайкальск и Казахстан.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> Шанхайский порт, как мы знаем, входит в первую мировую пятерку. Наверняка ведь здесь обосновались десятки компаний, подобных вашей. То есть, работающих в том же направлении перевозки грузов. За время работы в Китае вы видели крах таких предприятий? Какие причины приводят к столь плачевному финалу?</p>\n<p style="text-align: justify"><strong>Ответ: </strong>От неприятностей никто не застрахован, но считаю основной причиной неудач &ndash; отсутствие четкой концепции работы на китайском рынке. Зачастую компании приходят сюда без осознания своих реальных задач, просто потому, что так делают многие, исходя из широко сейчас распространенной идеи перспективности Китая и его экономики. А рынок грузоперевозок здесь, как вы правильно отметили, очень плотный, конкуренция зашкаливает.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> Но ведь есть поговорка: &laquo;Кто не рискует, тот не пьет шампанского&raquo;&hellip;</p>\n<p style="text-align: justify"><strong>Ответ: </strong>Чем рисковать? Грузами клиентов? Своей репутацией? Это не наш выбор, мы дорожим своим именем на международном логистическом рынке. Авантюрный стиль работы для нас неприемлем хотя бы потому, что мы входим в один из самых крупных и авторитетных транспортных холдингов &laquo;Дело&raquo; (www.delo-group.ru). Доставка контейнеров из Китая требует от логистической компании наличия многих составляющих - квалификации персонала, опыта работы на международном рынке транспортных услуг и пр.</p>\n<p style="text-align: justify"><strong>Вопрос:</strong> Что связывает вашу компанию с Новороссийским портом?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> В Новороссийске наша компания располагает собственными транспортными активами: терминалами, складскими мощностями, оборудованием для перевалки различных видов грузов, парком автоконтейнеровозов и железнодорожных платформ и т.д.</p>\n<p style="text-align: justify"><strong>Вопрос</strong>: По заявлениям правительств России и Китая, объем грузоперевозок между нашими странами в ближайшей перспективе должен увеличиться в разы. Вы на практике ощущаете этот рост?</p>\n<p style="text-align: justify"><strong>Ответ:</strong> Да, по полученной статистике от наших новороссийских коллег, за последние месяцы наблюдается динамичный рост как импорта из Китая в Россию, так и увеличение экспортных потоков в обратном направлении (сера, каучук, удобрения и пр.). Поэтому, полагаю, что оптимистичный прогноз правительств имеет реальную перспективу реализации.<em>&nbsp;</em></p>\n<p style="text-align: justify"><em>Вопросы задавал Георгий Самолетов.</em></p>	\N	<p>&nbsp;Интервью с директором транспортной компании GCS-CHINA Игорем Козубовым.</p>	\N	\N	\N	\N
2	2012-03-19 10:56:17+04	t			Контейнеровозов под флагом КНР станет больше	<p>\n\tШанхай создает китайским морским контейнеровозам льготные условия обслуживания в порту &laquo;Яншань&raquo;</p>\n	kontejnerovozov-pod-flagom-knr-2012-03-19-015617	<p style="text-align: justify;">\n\tКитайские суда, зарегистрированные в шанхайском морском порту &ldquo;Яншань&rdquo;, теперь смогут пользоваться экспортными льготами и другимипривелегиями, поскольку данный порт стал первым в стране, осуществляющим с 1 марта с. г.&nbsp; Регистрацию судов с беспошлинным статусом.</p>\n<p style="text-align: justify;">\n\tРанее китайские судовладельцы были вынуждены платить за то, что их суда ходят под китайским государственным флагом.&nbsp; Это заставляло многие отечественные компании,&nbsp; занимающиеся международными морскими перевозками, регистрировать свои суда за рубежом в безналоговых зонах, чтобы сократить связанные с этим издержки.</p>\n<p style="text-align: justify;">\n\tШанхай &ndash; крупнейший контейнерный порт в мире &ndash; насчитывает у себя лишь 380 зарегистрированных международных судов, сильно отставая по ихколичеству от Гонконга и других крупнейших мировых портов. При этом количество китайских судов, зарегистрированных в иностранных портах, неуклонно растет.</p>\n<p style="text-align: justify;">\n\t&quot;Такая тенденция&nbsp; ограничивает развитие судоходной отрасли и связанных с ней финансовых услуг, таких, как судостроительная ипотека и страхование судов&quot;, - сообщил, представитель администрации порта.</p>\n<p style="text-align: justify;">\n\tСледующими мерами будут новые правила и регуляции, направленные на улучшение политики шанхайского порта в области работы таможенных органов, налоговых и валютных льгот.Пока нельзя прогнозировать, какие перемены на рынок доставки контейнеров из Китая принесет эта мера порта &laquo;Яншань&raquo;.</p>\n	\N	\N	2012-03-19 09:00:00+04	19	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Контейнеровозов под флагом КНР станет больше	\N	<p style="text-align: justify;">\n\tКитайские суда, зарегистрированные в шанхайском морском порту &ldquo;Яншань&rdquo;, теперь смогут пользоваться экспортными льготами и другимипривелегиями, поскольку данный порт стал первым в стране, осуществляющим с 1 марта с. г.&nbsp; Регистрацию судов с беспошлинным статусом.</p>\n<p style="text-align: justify;">\n\tРанее китайские судовладельцы были вынуждены платить за то, что их суда ходят под китайским государственным флагом.&nbsp; Это заставляло многие отечественные компании,&nbsp; занимающиеся международными морскими перевозками, регистрировать свои суда за рубежом в безналоговых зонах, чтобы сократить связанные с этим издержки.</p>\n<p style="text-align: justify;">\n\tШанхай &ndash; крупнейший контейнерный порт в мире &ndash; насчитывает у себя лишь 380 зарегистрированных международных судов, сильно отставая по ихколичеству от Гонконга и других крупнейших мировых портов. При этом количество китайских судов, зарегистрированных в иностранных портах, неуклонно растет.</p>\n<p style="text-align: justify;">\n\t&quot;Такая тенденция&nbsp; ограничивает развитие судоходной отрасли и связанных с ней финансовых услуг, таких, как судостроительная ипотека и страхование судов&quot;, - сообщил, представитель администрации порта.</p>\n<p style="text-align: justify;">\n\tСледующими мерами будут новые правила и регуляции, направленные на улучшение политики шанхайского порта в области работы таможенных органов, налоговых и валютных льгот.Пока нельзя прогнозировать, какие перемены на рынок доставки контейнеров из Китая принесет эта мера порта &laquo;Яншань&raquo;.</p>\n	\N	<p>\n\tШанхай создает китайским морским контейнеровозам льготные условия обслуживания в порту &laquo;Яншань&raquo;</p>\n	\N	\N	\N	\N
2	2011-07-05 00:07:22+04	t			Доставка контейнеров из Китая: как избежать подводных камней	<p><br />\n</p>\n<p>Карго - мошенники. Не дай себя обмануть!</p>	dostavka-kontejnerov-iz-kitaya-2011-07-04-150722	<p>Эта небольшая статья написана для новичков бизнеса в Китае.&nbsp;<br />\nКогда у вас возникнет потребность в доставке грузов из Китая (а она обязательно возникнет, если вы занимаетесь бизнесом в КНР), вам придется найти транспортную компанию. Прежде чем начать сотрудничество с транспортной компанией, надо проверить ее надежность.<br />\nКрасивый сайт в Интернете, с которого обычно начинается знакомство, хорошо обставленный офис в большом городе &ndash; это еще не показатели надежности транспортной компании. Сайт можно заказать за тысячу долларов, а офис вместе с оборудованием &ndash; арендовать на месяц. <br />\nВас сразу должно насторожить, если руководитель транспортной компании под всякими предлогами отказывает вам в знакомстве с учредительными документами. Нормальная транспортная компания как раз заинтересована в том, чтобы вы посмотрели ее учредительные документы.<br />\nКакие бы отговорки не звучали, если нет учредительных документов, смело прощайтесь и уходите.<br />\nТранспортная компания может быть как российской, так и китайской. В первом случае у компании должен быть головной офис в России, и потому вашему юристу несложно проверить ее надежность. Если компания китайская, у нее обязательно должны быть российские партнеры, выполняющие свою часть маршрута грузоперевозки, репутацию которых вы также можете узнать.<br />\nОбязательно убедитесь, что у транспортной компании есть страховой полис. Чтобы удостовериться в том, что полис действующий, надо обратиться в страховую компанию, которая его выдала.<br />\nНи в коем случае не соглашайтесь значительно занизить стоимость своего груза, чтобы уменьшить таможенную пошлину, если вам будут предлагать такое в транспортной компании. Ваш груз может исчезнуть, и вы получите лишь часть его настоящей компенсации &ndash; это в лучшем случае. <br />\nИ самое страшное, когда ваш груз исчезает вместе с транспортной компанией &ndash; это уже явное мошенничество. Вероятность такого плачевного исхода будет тем меньше, чем внимательней вы отнесетесь к вышеприведенным советам. <br />\nЧтобы разговор был предметным, предлагаем рассмотреть надежность транспортной компании на примере GCS-CHINA.<br />\nНаш офис находится в городе Шанхае, мы являемся официальным зарегистрированным в КНР представительством российской группы компаний &laquo;Глобальный Контейнерный Сервис&raquo; (ГКС). Офисы ГКС есть в городах Новороссийске (главный), Москве и Санкт-Петербурге.<br />\nГКС работает на рынке транспортных услуг 15 лет, имеет свои портовые складские терминалы, железнодорожные платформы, парк грузовиков-контейнеровозов. По объему грузоперевозок ГКС входит в десятку лидеров России.<br />\nТаким образом, у вас есть все основания доверять компании GCS-CHINA, которая оказывает комплексные услуги во внешнеэкономической деятельности, включающие доставку контейнеров из Китая в Россию морем и по железной дороге, ваше представительство и поиск производителей в Китае.<br />\nРаботайте с транспортными компаниями, проверенными временем и делом.<br />\n&nbsp;</p>	\N	\N	2011-05-31 09:00:00+04	3	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Доставка контейнеров из Китая: как избежать подводных камней	\N	<p>Эта небольшая статья написана для новичков бизнеса в Китае.&nbsp;<br />\nКогда у вас возникнет потребность в доставке грузов из Китая (а она обязательно возникнет, если вы занимаетесь бизнесом в КНР), вам придется найти транспортную компанию. Прежде чем начать сотрудничество с транспортной компанией, надо проверить ее надежность.<br />\nКрасивый сайт в Интернете, с которого обычно начинается знакомство, хорошо обставленный офис в большом городе &ndash; это еще не показатели надежности транспортной компании. Сайт можно заказать за тысячу долларов, а офис вместе с оборудованием &ndash; арендовать на месяц. <br />\nВас сразу должно насторожить, если руководитель транспортной компании под всякими предлогами отказывает вам в знакомстве с учредительными документами. Нормальная транспортная компания как раз заинтересована в том, чтобы вы посмотрели ее учредительные документы.<br />\nКакие бы отговорки не звучали, если нет учредительных документов, смело прощайтесь и уходите.<br />\nТранспортная компания может быть как российской, так и китайской. В первом случае у компании должен быть головной офис в России, и потому вашему юристу несложно проверить ее надежность. Если компания китайская, у нее обязательно должны быть российские партнеры, выполняющие свою часть маршрута грузоперевозки, репутацию которых вы также можете узнать.<br />\nОбязательно убедитесь, что у транспортной компании есть страховой полис. Чтобы удостовериться в том, что полис действующий, надо обратиться в страховую компанию, которая его выдала.<br />\nНи в коем случае не соглашайтесь значительно занизить стоимость своего груза, чтобы уменьшить таможенную пошлину, если вам будут предлагать такое в транспортной компании. Ваш груз может исчезнуть, и вы получите лишь часть его настоящей компенсации &ndash; это в лучшем случае. <br />\nИ самое страшное, когда ваш груз исчезает вместе с транспортной компанией &ndash; это уже явное мошенничество. Вероятность такого плачевного исхода будет тем меньше, чем внимательней вы отнесетесь к вышеприведенным советам. <br />\nЧтобы разговор был предметным, предлагаем рассмотреть надежность транспортной компании на примере GCS-CHINA.<br />\nНаш офис находится в городе Шанхае, мы являемся официальным зарегистрированным в КНР представительством российской группы компаний &laquo;Глобальный Контейнерный Сервис&raquo; (ГКС). Офисы ГКС есть в городах Новороссийске (главный), Москве и Санкт-Петербурге.<br />\nГКС работает на рынке транспортных услуг 15 лет, имеет свои портовые складские терминалы, железнодорожные платформы, парк грузовиков-контейнеровозов. По объему грузоперевозок ГКС входит в десятку лидеров России.<br />\nТаким образом, у вас есть все основания доверять компании GCS-CHINA, которая оказывает комплексные услуги во внешнеэкономической деятельности, включающие доставку контейнеров из Китая в Россию морем и по железной дороге, ваше представительство и поиск производителей в Китае.<br />\nРаботайте с транспортными компаниями, проверенными временем и делом.<br />\n&nbsp;</p>	\N	<p><br />\n</p>\n<p>Карго - мошенники. Не дай себя обмануть!</p>	\N	\N	\N	\N
2	2011-10-12 23:54:29+04	t			Значит, повезем морем	<p>Не хватает железнодорожных платформ для доставки контейнеров из Китая &nbsp;</p>	znachit-povezem-morem-2011-10-12-145429	<p style="text-align: justify">В последнее время в Китае было много задержек контейнеров на пограничных станциях Алашанькоу / Достык (Казхахстан) и Манчжурия / Забайкальск (Россия). Мы получили информацию, что эта ситуация все еще продолжается, а ее решение потребует некоторого времени.<br />\nОсновной проблемой является недостаток железнодорожных платформ, на которых доставляются контейнеры из Китая. На указанных направлениях Китайские Железные Дороги (China Railway) не могут обеспечить регулярное и достаточное количество этого подвижного состава.&nbsp;<br />\nОчевидно, что это сильно влияет на отправку контейнеров - станции перегружаются и не могут работать в стабильном режиме, грузы задерживаются в пути.<br />\nПоскольку от руководства Китайских Железных Дорог не поступает информации о предпринимаемых мерах, есть все основания полагать, что дефицит платформ будет иметь затяжной характер.<br />\nКрупные операторы грузоперевозок уже начали рассматривать альтернативы железнодорожным перевозкам по Китаю. Так, увеличиваются потоки грузоперевозок морским транспортом &ndash; через Дальний Восток России и порты на Черном и Балтийском морях.<br />\nСоздавшаяся ситуация оказалась менее тревожной для российских транспортных компаний, которые уже имеют на данных направлениях морских грузоперевозок из Китая своих представителей и агентов.<br />\nГруппа Компаний ГКС и ее китайский филиал GCS-CHINA относится к таким грузоперевозчикам.<br />\nДоставка контейнеров из Китая морским транспортом во Владивосток, Новороссийск и Санкт-Петербург &ndash; наш основной профиль.<br />\n</p>	\N	\N	2011-06-08 09:00:00+04	4	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Значит, повезем морем	\N	<p style="text-align: justify">В последнее время в Китае было много задержек контейнеров на пограничных станциях Алашанькоу / Достык (Казхахстан) и Манчжурия / Забайкальск (Россия). Мы получили информацию, что эта ситуация все еще продолжается, а ее решение потребует некоторого времени.<br />\nОсновной проблемой является недостаток железнодорожных платформ, на которых доставляются контейнеры из Китая. На указанных направлениях Китайские Железные Дороги (China Railway) не могут обеспечить регулярное и достаточное количество этого подвижного состава.&nbsp;<br />\nОчевидно, что это сильно влияет на отправку контейнеров - станции перегружаются и не могут работать в стабильном режиме, грузы задерживаются в пути.<br />\nПоскольку от руководства Китайских Железных Дорог не поступает информации о предпринимаемых мерах, есть все основания полагать, что дефицит платформ будет иметь затяжной характер.<br />\nКрупные операторы грузоперевозок уже начали рассматривать альтернативы железнодорожным перевозкам по Китаю. Так, увеличиваются потоки грузоперевозок морским транспортом &ndash; через Дальний Восток России и порты на Черном и Балтийском морях.<br />\nСоздавшаяся ситуация оказалась менее тревожной для российских транспортных компаний, которые уже имеют на данных направлениях морских грузоперевозок из Китая своих представителей и агентов.<br />\nГруппа Компаний ГКС и ее китайский филиал GCS-CHINA относится к таким грузоперевозчикам.<br />\nДоставка контейнеров из Китая морским транспортом во Владивосток, Новороссийск и Санкт-Петербург &ndash; наш основной профиль.<br />\n</p>	\N	<p>Не хватает железнодорожных платформ для доставки контейнеров из Китая &nbsp;</p>	\N	\N	\N	\N
2	2011-10-30 11:28:14+04	t			GCSCHINA - ваш представитель в Китае	<p>&nbsp;Как осуществляется поиск производителей в КНР</p>	gcschina-vash-predstavitel-2011-10-30-022814	<p style="text-align: justify; "><strong>Вопрос</strong>: Ваша компания осуществляет поиск производителей в Китае. Эта услуга сейчас востребована в России?</p>\n<p style="text-align: justify; "><strong>Ответ:</strong> Услуга по поиску производителей в Китае в последние годы очень востребована. Российские покупателя постоянно обращаются к нам по вопросам  поиска интересующих их товаров и оборудования.</p>\n<p style="text-align: justify; "><strong>Вопрос:</strong> Сколько китайских производителей содержит ваша база данных?</p>\n<p style="text-align: justify; "><strong>Ответ:</strong> У нас есть своя собственная база китайских производителей, которые уже хорошо зарекомендовали себя в работе с нами и нашими партнерами. Также мы используем в своей работе платные и бесплатные базы данных китайских поставщиков.</p>\n<p style="text-align: justify; "><strong>Вопрос:</strong> Вы нашли производителя по заявке российского заказчика. А потом?</p>\n<p style="text-align: justify; "><strong>Ответ:</strong> По заявке заказчика и после согласования с ним всех нюансов мы связываемся с китайскими производителями сначала по телефону или по почте, а затем организуем с ними личную встречу на производстве. Выясняются все детали по запрашиваемой покупателем продукции и проговариваются параметры возможного дальнейшего сотрудничества наших клиентов с данным производителем. Клиенту останется только прилететь для окончательного достижения договоренностей по условиям контракта и его для подписания.</p>\n<p style="text-align: justify; "><strong>Вопрос:</strong> Далее, по логике вещей, ваша компания должна выступить в роли представителя заказчика в Китае. Размещение заказа на заводе или фабрике, контроль качества продукции, отгрузка в Россию?</p>\n<p style="text-align: justify; "><strong>Ответ:</strong> В дальнейшем наша компания может выступать в роли китайского представительства российского клиента.  Последний может иметь возможность, экономя средства на открытии собственного офиса, полноценно контролировать исполнение китайским партнером всех взятых на себя обязательств по контракту. Мы в любое время сможем выехать на производство и проинспектировать ход производства, выполнения сроков поставки, качества продукции и т.д. В сочетании с имеющимся опытом и гибкими условиями по доставке и таможенному оформлению товаров услуги такого представительства помогут нашим клиентам иметь комплексный, удобный и надежный сервис в их работе с Китаем.</p>\n<p style="text-align: justify; "><strong><em>На вопросы отвечал директор транспортной компании GCSCHINA Игорь Козубов.</em></strong></p>	\N	\N	2011-10-30 09:00:00+04	6	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	GCSCHINA - ваш представитель в Китае	\N	<p style="text-align: justify; "><strong>Вопрос</strong>: Ваша компания осуществляет поиск производителей в Китае. Эта услуга сейчас востребована в России?</p>\n<p style="text-align: justify; "><strong>Ответ:</strong> Услуга по поиску производителей в Китае в последние годы очень востребована. Российские покупателя постоянно обращаются к нам по вопросам  поиска интересующих их товаров и оборудования.</p>\n<p style="text-align: justify; "><strong>Вопрос:</strong> Сколько китайских производителей содержит ваша база данных?</p>\n<p style="text-align: justify; "><strong>Ответ:</strong> У нас есть своя собственная база китайских производителей, которые уже хорошо зарекомендовали себя в работе с нами и нашими партнерами. Также мы используем в своей работе платные и бесплатные базы данных китайских поставщиков.</p>\n<p style="text-align: justify; "><strong>Вопрос:</strong> Вы нашли производителя по заявке российского заказчика. А потом?</p>\n<p style="text-align: justify; "><strong>Ответ:</strong> По заявке заказчика и после согласования с ним всех нюансов мы связываемся с китайскими производителями сначала по телефону или по почте, а затем организуем с ними личную встречу на производстве. Выясняются все детали по запрашиваемой покупателем продукции и проговариваются параметры возможного дальнейшего сотрудничества наших клиентов с данным производителем. Клиенту останется только прилететь для окончательного достижения договоренностей по условиям контракта и его для подписания.</p>\n<p style="text-align: justify; "><strong>Вопрос:</strong> Далее, по логике вещей, ваша компания должна выступить в роли представителя заказчика в Китае. Размещение заказа на заводе или фабрике, контроль качества продукции, отгрузка в Россию?</p>\n<p style="text-align: justify; "><strong>Ответ:</strong> В дальнейшем наша компания может выступать в роли китайского представительства российского клиента.  Последний может иметь возможность, экономя средства на открытии собственного офиса, полноценно контролировать исполнение китайским партнером всех взятых на себя обязательств по контракту. Мы в любое время сможем выехать на производство и проинспектировать ход производства, выполнения сроков поставки, качества продукции и т.д. В сочетании с имеющимся опытом и гибкими условиями по доставке и таможенному оформлению товаров услуги такого представительства помогут нашим клиентам иметь комплексный, удобный и надежный сервис в их работе с Китаем.</p>\n<p style="text-align: justify; "><strong><em>На вопросы отвечал директор транспортной компании GCSCHINA Игорь Козубов.</em></strong></p>	\N	<p>&nbsp;Как осуществляется поиск производителей в КНР</p>	\N	\N	\N	\N
2	2011-12-12 12:17:25+04	t			Транспортный кризис на китайско-казахстанской границе	<p>\n\tДоставка контейнеров из Китая в страны Таможенного союза (Россия, Казахстан, Белоруссия) затруднена малой пропускной способностью станции Достык (Казахстан)</p>\n	transportnyij-krizis-na-kitajsko-kazahstanskoj-2011-12-12-021725	<p>\n\tО причинах сбоев при доставке контейнеров из Китая в страны Таможенного союза (Россия, Казахстан, Белоруссия) информировала компания ATVL (Алматы).</p>\n<p>\n\tС октября текущего года и по сей день продолжается кризис на пограничном переходе между Китаем и Казахстаном &ndash; Алашанькоу &ndash;Достык. По состоянию на первую декаду ноября на станции Алашанькову (КНР) скопилось около 400 контейнеров и множество грузов в вагонах. А на станции Урумчи (300 км до границы) простаивало порядка 1200 транспортных единиц.</p>\n<p>\n\tСпециалисты называют причину транспортного затора - слабую пропускную способность станции Достык (Казахстан), где перегрузка контейнеров на платформы СНГ выполнялась лишь одним краном. Поэтому Достык обрабатывал за сутки около 400 транспортных единиц, когда потребность была 2500 &ndash; 3000 вагонов и платформ.</p>\n<p>\n\tВ связи с создавшейся ситуацией Китайские железные дороги стали запрещать отправку грузов на данном направлении со станций Нингбо, Шанхай, Шеньжень и других.</p>\n<p>\n\tКризис на железных дорогах Китая перешел и на морские порты, доставка морем грузов из Китая в страны Таможенного союза может увеличиться до полугода.</p>\n<p>\n\tПолный текст сообщения на http://gtmachinery.satu.kz/n4448-situatsiya-granitse-kazahstana.html</p>\n	\N	\N	2011-11-26 10:00:00+04	7	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Транспортный кризис на китайско-казахстанской границе	\N	<p>\n\tО причинах сбоев при доставке контейнеров из Китая в страны Таможенного союза (Россия, Казахстан, Белоруссия) информировала компания ATVL (Алматы).</p>\n<p>\n\tС октября текущего года и по сей день продолжается кризис на пограничном переходе между Китаем и Казахстаном &ndash; Алашанькоу &ndash;Достык. По состоянию на первую декаду ноября на станции Алашанькову (КНР) скопилось около 400 контейнеров и множество грузов в вагонах. А на станции Урумчи (300 км до границы) простаивало порядка 1200 транспортных единиц.</p>\n<p>\n\tСпециалисты называют причину транспортного затора - слабую пропускную способность станции Достык (Казахстан), где перегрузка контейнеров на платформы СНГ выполнялась лишь одним краном. Поэтому Достык обрабатывал за сутки около 400 транспортных единиц, когда потребность была 2500 &ndash; 3000 вагонов и платформ.</p>\n<p>\n\tВ связи с создавшейся ситуацией Китайские железные дороги стали запрещать отправку грузов на данном направлении со станций Нингбо, Шанхай, Шеньжень и других.</p>\n<p>\n\tКризис на железных дорогах Китая перешел и на морские порты, доставка морем грузов из Китая в страны Таможенного союза может увеличиться до полугода.</p>\n<p>\n\tПолный текст сообщения на http://gtmachinery.satu.kz/n4448-situatsiya-granitse-kazahstana.html</p>\n	\N	<p>\n\tДоставка контейнеров из Китая в страны Таможенного союза (Россия, Казахстан, Белоруссия) затруднена малой пропускной способностью станции Достык (Казахстан)</p>\n	\N	\N	\N	\N
2	2011-12-12 23:56:48+04	t			А мост и ныне там	<p>\n\tДоставка контейнеров из Китая в Россию на переходе Благовещенск &ndash; Хэйхэ с треском провалена. Стороны хотели, как лучше, а получилось, как всегда.</p>\n	a-most-i-nyine-2011-12-12-135648	<p style="text-align: justify;">\n\tРоссийский город Благовещенск и китайский &ndash; Хэйхэ разделяют 700 метров водной глади реки Амур (Хйэлунцзян). Летом здесь осуществляется перевозка контейнеров и других грузов баржами, а зимой &ndash; грузовыми автомобилями по ледовой дороге. В периоды же осеннего ледостава и весеннего таяния льда через пограничную реку ходят лишь пассажирские суда на воздушной подушке.</p>\n<p style="text-align: justify;">\n\tИменно по этой причине данное направление считается неудобным у транспортных компаний. Если контейнеры застряли из-за начала ледохода или таянья льда, стоять им без движения, минимум, 50 дней.</p>\n<p style="text-align: justify;">\n\tУже много лет между российской и китайской сторонами на местном уровне идут переговоры о строительстве понтонной переправы, продлевающей грузоперевозки на 2-3 месяца в год.</p>\n<p style="text-align: justify;">\n\tНо каждый раз устройство такой переправы срывалось по каким-либо причинам.</p>\n<p style="text-align: justify;">\n\tС начала 2011 года на обоих берегах было объявлено о твердом намерении все-таки навести между Благовещенском и Хйхэ грузовой понтонный мост. По проекту межсезонная переправа должна была состоять из 10 барж (5 с российской стороны, и 5 &ndash; с китайской), цепочкой выстроенных поперек реки, между которыми были бы устроены пролеты.</p>\n<p style="text-align: justify;">\n\tСпециалисты по логистике было воспрянули духом &ndash; в ожидании скорого решения транспортной проблемы на этом направлении.</p>\n<p style="text-align: justify;">\n\tА далее события развивались так. Вложив в проект немалые деньги и построив баржи, стороны &laquo;неожиданно&raquo; выяснили множество несостыковок технического и организационного характера.</p>\n<p style="text-align: justify;">\n\tВо-первых, российские баржи по своей ширине предполагали двустороннее движение по мосту, а китайские &ndash; лишь одностороннее. Дальше больше &ndash; китайские баржи оказались на 50 сантиметров выше российских (или наоборот, российские баржи оказались ниже китайских).</p>\n<p style="text-align: justify;">\n\tНо главное, как обнаружилось к началу намеченного в середине ноября пуска международной понтонной переправы, нет разрешений от правительственных надзорных органов, включая уровень МИДов РФ и КНР.</p>\n<p style="text-align: justify;">\n\tИтак, ожидаемого увеличения грузопотока на пограничном переходе Благовещенск &ndash; Хэйхэ опять не произошло. Хуже того, не были своевременно начаты работы по увеличению толщины слоя льда по трассе дороги-зимника. Что отодвинуло сроки начала зимних грузоперевозок, минимум, на месяц.</p>\n<p style="text-align: justify;">\n\tЧерез пару недель подоспеют российские новогодние праздники, затем и китайские. И вполне вероятно, что в 2011-2012 годах на пограничном переходе Благовещенск - Хэйхэ вообще не будет никаких грузоперевозок.</p>\n<p style="text-align: justify;">\n\t<strong>Георгий Самолетов.</strong></p>\n<p style="text-align: justify;">\n\tБлаговещенск &ndash; Хэйхэ.</p>\n<p>\n\tЕще по этой теме читайте на http://www.hei-he.info/p0235.htm</p>\n	\N	\N	2011-12-12 10:00:00+04	8	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	А мост и ныне там	\N	<p style="text-align: justify;">\n\tРоссийский город Благовещенск и китайский &ndash; Хэйхэ разделяют 700 метров водной глади реки Амур (Хйэлунцзян). Летом здесь осуществляется перевозка контейнеров и других грузов баржами, а зимой &ndash; грузовыми автомобилями по ледовой дороге. В периоды же осеннего ледостава и весеннего таяния льда через пограничную реку ходят лишь пассажирские суда на воздушной подушке.</p>\n<p style="text-align: justify;">\n\tИменно по этой причине данное направление считается неудобным у транспортных компаний. Если контейнеры застряли из-за начала ледохода или таянья льда, стоять им без движения, минимум, 50 дней.</p>\n<p style="text-align: justify;">\n\tУже много лет между российской и китайской сторонами на местном уровне идут переговоры о строительстве понтонной переправы, продлевающей грузоперевозки на 2-3 месяца в год.</p>\n<p style="text-align: justify;">\n\tНо каждый раз устройство такой переправы срывалось по каким-либо причинам.</p>\n<p style="text-align: justify;">\n\tС начала 2011 года на обоих берегах было объявлено о твердом намерении все-таки навести между Благовещенском и Хйхэ грузовой понтонный мост. По проекту межсезонная переправа должна была состоять из 10 барж (5 с российской стороны, и 5 &ndash; с китайской), цепочкой выстроенных поперек реки, между которыми были бы устроены пролеты.</p>\n<p style="text-align: justify;">\n\tСпециалисты по логистике было воспрянули духом &ndash; в ожидании скорого решения транспортной проблемы на этом направлении.</p>\n<p style="text-align: justify;">\n\tА далее события развивались так. Вложив в проект немалые деньги и построив баржи, стороны &laquo;неожиданно&raquo; выяснили множество несостыковок технического и организационного характера.</p>\n<p style="text-align: justify;">\n\tВо-первых, российские баржи по своей ширине предполагали двустороннее движение по мосту, а китайские &ndash; лишь одностороннее. Дальше больше &ndash; китайские баржи оказались на 50 сантиметров выше российских (или наоборот, российские баржи оказались ниже китайских).</p>\n<p style="text-align: justify;">\n\tНо главное, как обнаружилось к началу намеченного в середине ноября пуска международной понтонной переправы, нет разрешений от правительственных надзорных органов, включая уровень МИДов РФ и КНР.</p>\n<p style="text-align: justify;">\n\tИтак, ожидаемого увеличения грузопотока на пограничном переходе Благовещенск &ndash; Хэйхэ опять не произошло. Хуже того, не были своевременно начаты работы по увеличению толщины слоя льда по трассе дороги-зимника. Что отодвинуло сроки начала зимних грузоперевозок, минимум, на месяц.</p>\n<p style="text-align: justify;">\n\tЧерез пару недель подоспеют российские новогодние праздники, затем и китайские. И вполне вероятно, что в 2011-2012 годах на пограничном переходе Благовещенск - Хэйхэ вообще не будет никаких грузоперевозок.</p>\n<p style="text-align: justify;">\n\t<strong>Георгий Самолетов.</strong></p>\n<p style="text-align: justify;">\n\tБлаговещенск &ndash; Хэйхэ.</p>\n<p>\n\tЕще по этой теме читайте на http://www.hei-he.info/p0235.htm</p>\n	\N	<p>\n\tДоставка контейнеров из Китая в Россию на переходе Благовещенск &ndash; Хэйхэ с треском провалена. Стороны хотели, как лучше, а получилось, как всегда.</p>\n	\N	\N	\N	\N
2	2012-01-13 00:17:12+04	t			Контейнер из Китая заботливо встретят в России	<p>\n\tПозитивные новости от ГКС. В новый год с новыми приобретениями</p>\n<p>\n\t&nbsp;</p>\n	kontejner-iz-kitaya-zabotlivo-2012-01-12-141712	<p style="text-align: justify;">\n\tНаша компания GCS-CHINA является дочерним предприятием Группы компаний &laquo;Глобальный контейнерный сервис&raquo; (ГКС) &ndash; одного из самых крупных грузоперевозчиков России.</p>\n<p style="text-align: justify;">\n\tУспех нашей работы в Китае во многом зависит от того, какими возможностями мы располагаем на территории России. А возможности эти растут из года в год. Ушедший 2011-й также был весьма успешным для ГКС.</p>\n<p style="text-align: justify;">\n\tНа рынке грузоперевозок Центрального федерального округа хорошо известен один из ведущих брокерских операторов Московской области ЦоллРу.</p>\n<p style="text-align: justify;">\n\tЦоллРу успешно работает с 1996 года и к настоящему времени располагает таможенными и складскими терминалами МАНП (Львовский ТП) и Северное Домодедово (Каширский ТП). ЦоллРу также оказывает услуги по таможенному оформлению на грузовых терминалах Шереметьево-2, Домодедово и Внуково.</p>\n<p style="text-align: justify;">\n\tПо итогам первого полугодия прошлого года компания ЦоллРу оформила 26&nbsp;138 ГТД и 25&nbsp;568 транспортных средств.</p>\n<p style="text-align: justify;">\n\tХорошая новость! ГКС консолидировал 75% активов ЦоллРу, что де юре и де факто означает вхождение последнего в холдинг.</p>\n<p style="text-align: justify;">\n\tГлавный автомобильный грузоперевозчик холдинга ООО &laquo;Рускон&raquo; до недавнего времени имел в своем парке 95 автомобилей-контейнеровозов. В эксплуатацию принято еще 20 новых контейнеровозов MAN. Таким образом собственный парк автомобилей для перевозки контейнеров у ООО &laquo;Рускон&raquo; вырос до 115 единиц.</p>\n<p style="text-align: justify;">\n\tНас радуют успехи холдинга. Ведь принцип работы GCS-CHINA: &laquo;Доставка контейнеров из Китая в Россию &ndash; от склада производителя до склада покупателя товаров&raquo; стал иметь еще более надежную опору в лице старых и новых предприятий&nbsp; ГКС.</p>\n<p>\n\t&nbsp;</p>\n	\N	\N	2012-01-12 10:00:00+04	9	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Контейнер из Китая заботливо встретят в России	\N	<p style="text-align: justify;">\n\tНаша компания GCS-CHINA является дочерним предприятием Группы компаний &laquo;Глобальный контейнерный сервис&raquo; (ГКС) &ndash; одного из самых крупных грузоперевозчиков России.</p>\n<p style="text-align: justify;">\n\tУспех нашей работы в Китае во многом зависит от того, какими возможностями мы располагаем на территории России. А возможности эти растут из года в год. Ушедший 2011-й также был весьма успешным для ГКС.</p>\n<p style="text-align: justify;">\n\tНа рынке грузоперевозок Центрального федерального округа хорошо известен один из ведущих брокерских операторов Московской области ЦоллРу.</p>\n<p style="text-align: justify;">\n\tЦоллРу успешно работает с 1996 года и к настоящему времени располагает таможенными и складскими терминалами МАНП (Львовский ТП) и Северное Домодедово (Каширский ТП). ЦоллРу также оказывает услуги по таможенному оформлению на грузовых терминалах Шереметьево-2, Домодедово и Внуково.</p>\n<p style="text-align: justify;">\n\tПо итогам первого полугодия прошлого года компания ЦоллРу оформила 26&nbsp;138 ГТД и 25&nbsp;568 транспортных средств.</p>\n<p style="text-align: justify;">\n\tХорошая новость! ГКС консолидировал 75% активов ЦоллРу, что де юре и де факто означает вхождение последнего в холдинг.</p>\n<p style="text-align: justify;">\n\tГлавный автомобильный грузоперевозчик холдинга ООО &laquo;Рускон&raquo; до недавнего времени имел в своем парке 95 автомобилей-контейнеровозов. В эксплуатацию принято еще 20 новых контейнеровозов MAN. Таким образом собственный парк автомобилей для перевозки контейнеров у ООО &laquo;Рускон&raquo; вырос до 115 единиц.</p>\n<p style="text-align: justify;">\n\tНас радуют успехи холдинга. Ведь принцип работы GCS-CHINA: &laquo;Доставка контейнеров из Китая в Россию &ndash; от склада производителя до склада покупателя товаров&raquo; стал иметь еще более надежную опору в лице старых и новых предприятий&nbsp; ГКС.</p>\n<p>\n\t&nbsp;</p>\n	\N	<p>\n\tПозитивные новости от ГКС. В новый год с новыми приобретениями</p>\n<p>\n\t&nbsp;</p>\n	\N	\N	\N	\N
2	2012-01-19 18:47:53+04	t			Новые офисы ECU Line в Китае	<p>\n\tОтправка малых грузовиз Китая стала проще</p>\n	novyie-ofisyi-ecu-line-2012-01-19-084753	<p style="text-align: justify">\n\tДалеко не у всех заказчиков есть потребность в товарах из Китая, которыми можно полностью заполнить контейнер. А поскольку таких клиентов много, у грузовой компании возникает потребность в формировании сборного контейнера.</p>\n<p style="text-align: justify">\n\tСпецифика доставки сборных консолидированных грузов из Китая хорошо известна специалистам группы компаний ECU Line. ECU Line динамично развивается. Так, с 1-го января на территории КНР заработал ряд новых офисов компании ECU Line. Такой результат был достигнут, благодаря долгосрочному планированию деятельности. Еще в начале 2011 года группа компаний ECU Line приняла решение о создании полной сети своих офисов по всему Китаю. Четыре вновь открытых офиса - в Даляне, Ухане, Нанкине и Ханчжоу - стали уже вторым этапом в осуществлении данного проекта. И теперь вместе с ними у ECU Line в КНР всего работают 13 офисов, включая Сянган (Гонконг).</p>\n<p style="text-align: justify">\n\tЗанимая лидирующие позиции на азиатском рынке сборных грузов, ECU Line выполняет регулярные отправки малых грузов в страны Европы и Азии, а также еженедельные отгрузки в страны Ближнего Востока, Африки и Америки.</p>\n<p style="text-align: justify">\n\tКомпания GCSCHINA активно сотрудничает с ECU Line по доставке сборных грузов из Китая в Россию. Наши клиенты получили новые возможности в этом сегменте логистического рынка.</p>\n	\N	\N	2012-01-19 10:00:00+04	10	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Новые офисы ECU Line в Китае	\N	<p style="text-align: justify">\n\tДалеко не у всех заказчиков есть потребность в товарах из Китая, которыми можно полностью заполнить контейнер. А поскольку таких клиентов много, у грузовой компании возникает потребность в формировании сборного контейнера.</p>\n<p style="text-align: justify">\n\tСпецифика доставки сборных консолидированных грузов из Китая хорошо известна специалистам группы компаний ECU Line. ECU Line динамично развивается. Так, с 1-го января на территории КНР заработал ряд новых офисов компании ECU Line. Такой результат был достигнут, благодаря долгосрочному планированию деятельности. Еще в начале 2011 года группа компаний ECU Line приняла решение о создании полной сети своих офисов по всему Китаю. Четыре вновь открытых офиса - в Даляне, Ухане, Нанкине и Ханчжоу - стали уже вторым этапом в осуществлении данного проекта. И теперь вместе с ними у ECU Line в КНР всего работают 13 офисов, включая Сянган (Гонконг).</p>\n<p style="text-align: justify">\n\tЗанимая лидирующие позиции на азиатском рынке сборных грузов, ECU Line выполняет регулярные отправки малых грузов в страны Европы и Азии, а также еженедельные отгрузки в страны Ближнего Востока, Африки и Америки.</p>\n<p style="text-align: justify">\n\tКомпания GCSCHINA активно сотрудничает с ECU Line по доставке сборных грузов из Китая в Россию. Наши клиенты получили новые возможности в этом сегменте логистического рынка.</p>\n	\N	<p>\n\tОтправка малых грузовиз Китая стала проще</p>\n	\N	\N	\N	\N
2	2012-02-05 23:36:55+04	t			Авария на Транссибе может затруднить перевозки контейнеров	<p>\n\tСкажется ли мариупольский брак на доставке контейнеров из Китая?</p>\n	avariya-na-transsibe-mozhet-2012-02-05-133655	<p style="text-align: justify">\n\t31 января 5 часов 30 минут по местному времени на Транссибе возле станции Бурея Амурской области сошел с рельсов состав нефтяных цистерн, шесть из которых опрокинулись.&nbsp;</p>\n<p style="text-align: justify">\n\tРазлившаяся нефть загорелась из-за замыкания проводов контактной сети, окружающей природе причинен значительный экологический вред. На аварийном участке железной дороги было перекрыто движение поездов, что вызвало сбои их расписаний. Но на этом неприятные последствия от аварии не закончились.</p>\n<p style="text-align: justify">\n\tДело в том, что по статистике МЧС и РЖД с начала этого года случилось уже несколько подобных аварий. И везде причиной стали поломки грузовых тележек подвижного состава, произведенных заводом &laquo;АзовЭлектроСталь&raquo; (Украина, г. Мариуполь). В данном случае, по предварительной оценке, причиной аварии стал излом боковой рамы тележки.</p>\n<p style="text-align: justify">\n\tКак заявил вице-президент Российских Железных Дорог Вадим Морозов, в бижайшее время будет приостановлена эксплуатация 25&nbsp;000 вагонов, изготовленных в Мариуполе.</p>\n<p style="text-align: justify">\n\tОжидается, что на какое-то время на РЖД возникнет дефицит грузового подвижного состава, в частности, и платформ для перевозки контейнеров, в том числе и из Китая.</p>\n	\N	\N	2012-02-05 10:00:00+04	11	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Авария на Транссибе может затруднить перевозки контейнеров	\N	<p style="text-align: justify">\n\t31 января 5 часов 30 минут по местному времени на Транссибе возле станции Бурея Амурской области сошел с рельсов состав нефтяных цистерн, шесть из которых опрокинулись.&nbsp;</p>\n<p style="text-align: justify">\n\tРазлившаяся нефть загорелась из-за замыкания проводов контактной сети, окружающей природе причинен значительный экологический вред. На аварийном участке железной дороги было перекрыто движение поездов, что вызвало сбои их расписаний. Но на этом неприятные последствия от аварии не закончились.</p>\n<p style="text-align: justify">\n\tДело в том, что по статистике МЧС и РЖД с начала этого года случилось уже несколько подобных аварий. И везде причиной стали поломки грузовых тележек подвижного состава, произведенных заводом &laquo;АзовЭлектроСталь&raquo; (Украина, г. Мариуполь). В данном случае, по предварительной оценке, причиной аварии стал излом боковой рамы тележки.</p>\n<p style="text-align: justify">\n\tКак заявил вице-президент Российских Железных Дорог Вадим Морозов, в бижайшее время будет приостановлена эксплуатация 25&nbsp;000 вагонов, изготовленных в Мариуполе.</p>\n<p style="text-align: justify">\n\tОжидается, что на какое-то время на РЖД возникнет дефицит грузового подвижного состава, в частности, и платформ для перевозки контейнеров, в том числе и из Китая.</p>\n	\N	<p>\n\tСкажется ли мариупольский брак на доставке контейнеров из Китая?</p>\n	\N	\N	\N	\N
2	2012-02-08 00:37:35+04	t			Контейнерный грузооборот китайского порта Нинбо растет	<p>\n\tВ Россию все чаще поступают контейнеры из китайского порта Нинбо</p>\n	kontejnernyij-gruzooborot-kitajskogo-porta-2012-02-07-143735	<p>\n\tВ 2011 году грузооборот китайского морского порта Нинбо достиг 433 млн тонн, достигнув исторического нового максимума, сообщает Госстат КНР.</p>\n<p>\n\tПрием и отправка контейнеров достигли 14,5 млн TEU, что поставило порт на 3 &ndash; е место в ряду китайских и 6-е место в числе мировых крупнейших портов.</p>\n<p>\n\tЗапоследние пять лет порт Нинбо инвестировал огромные средства в инфраструктуру, результатом чего стало значительное повышение его экономической мощности и усиление позиций в плане внутренней и международной конкурентноспособности.</p>\n<p>\n\tВ 2008 году порт Нинбо начал осуществлять свою стратегическую программу по превращению в мощный международный морской порт. Уже через год после этого контейнерный грузооборот достиг 10 млн TEU, а порт стал одним из четырех портов Китая, чей оборот достиг такого показателя.</p>\n<p>\n\tС 2006 по 2011 год погрузочно-разгрузочные мощности порта увеличились с 310 млн тонн до 430 млн тонн, а контенейнерный грузооброт увеличился с семи млн TEU до 14,5 млн TEU.</p>\n<p>\n\tС 2007 года порт Нинбо расширяет свой бизнес в направлении строительства на материке сухих портов для увеличения своих возможностей по консолидации грузов на удаленных от морского побережья территориях. За это время порты в Цзиньхуа, Иу, Шаосин, &nbsp;Цюйчжоу, &nbsp;Шаньжао и Интань были построены и сданы в эксплуатацию.</p>\n<p>\n\tВ 2011 году в порту было обработано 218 тыс. стандартных контейнеров из сухих портов, что на 95 процентов больше по сравнению с предыдущим годом.</p>\n	\N	\N	2012-02-07 10:00:00+04	12	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Контейнерный грузооборот китайского порта Нинбо растет	\N	<p>\n\tВ 2011 году грузооборот китайского морского порта Нинбо достиг 433 млн тонн, достигнув исторического нового максимума, сообщает Госстат КНР.</p>\n<p>\n\tПрием и отправка контейнеров достигли 14,5 млн TEU, что поставило порт на 3 &ndash; е место в ряду китайских и 6-е место в числе мировых крупнейших портов.</p>\n<p>\n\tЗапоследние пять лет порт Нинбо инвестировал огромные средства в инфраструктуру, результатом чего стало значительное повышение его экономической мощности и усиление позиций в плане внутренней и международной конкурентноспособности.</p>\n<p>\n\tВ 2008 году порт Нинбо начал осуществлять свою стратегическую программу по превращению в мощный международный морской порт. Уже через год после этого контейнерный грузооборот достиг 10 млн TEU, а порт стал одним из четырех портов Китая, чей оборот достиг такого показателя.</p>\n<p>\n\tС 2006 по 2011 год погрузочно-разгрузочные мощности порта увеличились с 310 млн тонн до 430 млн тонн, а контенейнерный грузооброт увеличился с семи млн TEU до 14,5 млн TEU.</p>\n<p>\n\tС 2007 года порт Нинбо расширяет свой бизнес в направлении строительства на материке сухих портов для увеличения своих возможностей по консолидации грузов на удаленных от морского побережья территориях. За это время порты в Цзиньхуа, Иу, Шаосин, &nbsp;Цюйчжоу, &nbsp;Шаньжао и Интань были построены и сданы в эксплуатацию.</p>\n<p>\n\tВ 2011 году в порту было обработано 218 тыс. стандартных контейнеров из сухих портов, что на 95 процентов больше по сравнению с предыдущим годом.</p>\n	\N	<p>\n\tВ Россию все чаще поступают контейнеры из китайского порта Нинбо</p>\n	\N	\N	\N	\N
2	2012-02-10 16:19:39+04	t			Доставка контейнеров из Китая в Европу подорожает	<p>\n\tСудоходные линии поднимают ставки фрахта более чем в два раза</p>\n	dostavka-kontejnerov-iz-kitaya-2012-02-10-061939	<p>\n\tГрузовладельцы в Европе, странах Средиземноморья и Юго-Восточной Азии в следующие несколько месяцев будут вынуждены увеличить расходы по доставке своих контейнеров из Китая, поскольку судоходные линии поднимают ставки фрахта вследствие понесеных ими убытков в несколько последних месяцев.</p>\n<p>\n\tПовышение ставок ожидается на некоторых направлениях более чем в 2 раза по сравнению с декабрем, при том, что общие убытки судоходных линий в прошлом году составили 5,2 миллиарда долларов.</p>\n<p>\n\tСпециалисты &ldquo;Асооциации грузоотправителей Гонконга&rdquo; критически относятся к таким мерам судоходных компаний, так как, по их мнению, потребительский спрос на услуги международных грузоперевозок остается вялым со стороны китайских и гонконгских экспортеров. &quot;Многие грузоотправители стоят на пороге очень трудного периода, когда на экспортный бизнес будет оказывать негативное влияние не только кризис в странах-импортерах, но и фактор повышения цен на грузопереовзки&rdquo;, - считают они.</p>\n<p>\n\tПервой о повышении ставок на750 долларовза TEU с 1 марта с.г. в направлении из Азии в Европу объявила немецкая контейнерная линия Hapag-Lloyd. При этом в обратном направлении ставки увеличатся на 100 долларов за TEU.</p>\n<p>\n\tДругие перевозчики, в томчисле OOCL, Cosco Container Lines и Maersk вслед за Hapag-Lloyd&nbsp; также объявили курс на повышение своих ставок на направлениях Азия-Европа и Средиземноморье.</p>\n<p>\n\tПредставители 15-ти контейнерных линий &ndash; участников Соглашения &ldquo;Transpacific Stabilization Agreement&rdquo;, в том числе, OOCL, COSCO и CSCL, соберутся в Гонконге на следующей неделе. И хотя данная группа не устанавливает цены на услуги перевозок, однако форум вырабатывает основные принципы и подходы в ценообразовательной политике крупнейших контейнерных грузоперевозчиков. Линии, входящие в группу, вместе контролируют около 90 процентов грузов в Тихоокенском регионе.</p>\n	\N	\N	2012-02-10 10:00:00+04	13	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Доставка контейнеров из Китая в Европу подорожает	\N	<p>\n\tГрузовладельцы в Европе, странах Средиземноморья и Юго-Восточной Азии в следующие несколько месяцев будут вынуждены увеличить расходы по доставке своих контейнеров из Китая, поскольку судоходные линии поднимают ставки фрахта вследствие понесеных ими убытков в несколько последних месяцев.</p>\n<p>\n\tПовышение ставок ожидается на некоторых направлениях более чем в 2 раза по сравнению с декабрем, при том, что общие убытки судоходных линий в прошлом году составили 5,2 миллиарда долларов.</p>\n<p>\n\tСпециалисты &ldquo;Асооциации грузоотправителей Гонконга&rdquo; критически относятся к таким мерам судоходных компаний, так как, по их мнению, потребительский спрос на услуги международных грузоперевозок остается вялым со стороны китайских и гонконгских экспортеров. &quot;Многие грузоотправители стоят на пороге очень трудного периода, когда на экспортный бизнес будет оказывать негативное влияние не только кризис в странах-импортерах, но и фактор повышения цен на грузопереовзки&rdquo;, - считают они.</p>\n<p>\n\tПервой о повышении ставок на750 долларовза TEU с 1 марта с.г. в направлении из Азии в Европу объявила немецкая контейнерная линия Hapag-Lloyd. При этом в обратном направлении ставки увеличатся на 100 долларов за TEU.</p>\n<p>\n\tДругие перевозчики, в томчисле OOCL, Cosco Container Lines и Maersk вслед за Hapag-Lloyd&nbsp; также объявили курс на повышение своих ставок на направлениях Азия-Европа и Средиземноморье.</p>\n<p>\n\tПредставители 15-ти контейнерных линий &ndash; участников Соглашения &ldquo;Transpacific Stabilization Agreement&rdquo;, в том числе, OOCL, COSCO и CSCL, соберутся в Гонконге на следующей неделе. И хотя данная группа не устанавливает цены на услуги перевозок, однако форум вырабатывает основные принципы и подходы в ценообразовательной политике крупнейших контейнерных грузоперевозчиков. Линии, входящие в группу, вместе контролируют около 90 процентов грузов в Тихоокенском регионе.</p>\n	\N	<p>\n\tСудоходные линии поднимают ставки фрахта более чем в два раза</p>\n	\N	\N	\N	\N
2	2012-02-15 00:49:31+04	t			Новые суда-контейнеровозы K Line	<p>\n\tПять новых судов K Line ускорят доставку контейнеров в Европу из Китая и Юго-Восточной Азии</p>\n	novyie-suda-kontejnerovozyi-k-line-2012-02-14-144931	<p style="text-align: justify;">\n\tНа рынке услуг по доставке контейнеров из Китая и стран Юго-Восточной Азии в Европу ужесточается конкуренция между морскими грузоперевозчиками.</p>\n<p style="text-align: justify;">\n\tЯпонская судоходная линия Kawasaki Kisen Kaisha (K Line) объявила о планах по вводу в строй пяти больших контейнеровозов между Азией и Европой в этом году, в контексте выполнения программы по повышению экономической эффективности компании.</p>\n<p style="text-align: justify;">\n\tНовые суда, все вместимостью по 8600 TEU контейнеровозов построены компанией&nbsp; IHI Marine United. Первое из них (длиной 335 м) называется Honolulu Bridge, оно было завершено в конце января. Еще четыре лайнера, как ожидается, будут спущены на воду в этом году.</p>\n<p style="text-align: justify;">\n\tВместе с новыми контейнеровозами флот компании к концу года будет состоять из 13-ти судов указанного типа и общим количеством 80 едениц.</p>\n<p style="text-align: justify;">\n\tКомпания K Line является членом CKYH GreenAlliance, которая включает в себя китайскую судоходную линию Cosco июжно-корейскую Hanjin.</p>\n<p style="text-align: justify;">\n\tВ апреле текущего года будет открыт совместный европейский сервис Альянса с тайваньской Evergreen Marine.</p>\n<p>\n\t&nbsp;</p>\n	\N	\N	2012-02-14 10:00:00+04	14	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Новые суда-контейнеровозы K Line	\N	<p style="text-align: justify;">\n\tНа рынке услуг по доставке контейнеров из Китая и стран Юго-Восточной Азии в Европу ужесточается конкуренция между морскими грузоперевозчиками.</p>\n<p style="text-align: justify;">\n\tЯпонская судоходная линия Kawasaki Kisen Kaisha (K Line) объявила о планах по вводу в строй пяти больших контейнеровозов между Азией и Европой в этом году, в контексте выполнения программы по повышению экономической эффективности компании.</p>\n<p style="text-align: justify;">\n\tНовые суда, все вместимостью по 8600 TEU контейнеровозов построены компанией&nbsp; IHI Marine United. Первое из них (длиной 335 м) называется Honolulu Bridge, оно было завершено в конце января. Еще четыре лайнера, как ожидается, будут спущены на воду в этом году.</p>\n<p style="text-align: justify;">\n\tВместе с новыми контейнеровозами флот компании к концу года будет состоять из 13-ти судов указанного типа и общим количеством 80 едениц.</p>\n<p style="text-align: justify;">\n\tКомпания K Line является членом CKYH GreenAlliance, которая включает в себя китайскую судоходную линию Cosco июжно-корейскую Hanjin.</p>\n<p style="text-align: justify;">\n\tВ апреле текущего года будет открыт совместный европейский сервис Альянса с тайваньской Evergreen Marine.</p>\n<p>\n\t&nbsp;</p>\n	\N	<p>\n\tПять новых судов K Line ускорят доставку контейнеров в Европу из Китая и Юго-Восточной Азии</p>\n	\N	\N	\N	\N
2	2012-02-27 23:05:01+04	t			Ноу-хау казахстанских грузоперевозчиков	<p>\n\tУ Казахстана не будет дефицита зерновых вагонов?</p>\n	nou-hau-kazahstanskih-gruzoperevozchikov-2012-02-27-130501	<p>\n\tГрузоперевозчики Казахстана придумали ноу-хау &ndash; вагонные вкладыши. Благодаря применению этих гигантских пластиковых пакетов (бигпэков) на 75 тонн (с клапанами, ламинированных и не пропускающих ультафиалетовые лучи) угольные полувагоны можно использовать для перевозки зерна.</p>\n<p>\n\tВыгоды от казахстанского рацпредложения налицо. Если в зерновой вагон входит 60 тонн, то в дооборудованный угольный полувагон &ndash; на 15 тонн зерна больше. Стоимость транспортировки снижается на 20%.</p>\n<p style="text-align: justify;">\n\tТранспортная компания &laquo;Казахстантемиржолы&raquo; закупила 1000 китайских полувагонов, а ТОО &laquo;Новопэк&raquo; приступило к производству вагонных вкладышей.</p>\n	\N	\N	2012-02-27 10:00:00+04	15	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Ноу-хау казахстанских грузоперевозчиков	\N	<p>\n\tГрузоперевозчики Казахстана придумали ноу-хау &ndash; вагонные вкладыши. Благодаря применению этих гигантских пластиковых пакетов (бигпэков) на 75 тонн (с клапанами, ламинированных и не пропускающих ультафиалетовые лучи) угольные полувагоны можно использовать для перевозки зерна.</p>\n<p>\n\tВыгоды от казахстанского рацпредложения налицо. Если в зерновой вагон входит 60 тонн, то в дооборудованный угольный полувагон &ndash; на 15 тонн зерна больше. Стоимость транспортировки снижается на 20%.</p>\n<p style="text-align: justify;">\n\tТранспортная компания &laquo;Казахстантемиржолы&raquo; закупила 1000 китайских полувагонов, а ТОО &laquo;Новопэк&raquo; приступило к производству вагонных вкладышей.</p>\n	\N	<p>\n\tУ Казахстана не будет дефицита зерновых вагонов?</p>\n	\N	\N	\N	\N
2	2012-02-28 00:07:11+04	t			Крупнейший перевозчик контейнеров из Китая в Европу резко изменил тактику	<p>\n\tСорен Скоу играет на повышение. Клиенты Maersk Line настрожились</p>\n	krupnejshij-perevozchik-kontejnerov-iz-2012-02-27-140711	<p>\n\tMaersk Line, крупнейший мировой контейнерный перевозчик заявил о сокращении на 9 процентов своего флота на азиатско-европейском направлении в целях создания предпосылок для увеличения стоимости фрахта на фоне избыточного предложения на рынке морских грузоперевозок, сообщает Reuters.</p>\n<p>\n\tMaersk Line &ndash; подразделение датской судоходно-нефтяной группы AP Moller-Maersk - заявило, что сокращение мощностей будет обеспечено соглашением о совместном использовании судов с французской линией CMA CGM.</p>\n<p style="text-align: justify;">\n\t&quot;Переизбыток контейнерных судов, работающих на азиатско-европейских сервисах, приводят к крайне низким ставкам морфрахта&quot;, - говорится в сообщении компании.</p>\n<p>\n\tАналитики полагают, что данное сокращение количества судов, которое стало первым значимым шагом нового генерального менеджера Maersk Line Сорена Скоу, может помочь компании в планах по резкому повышению ставок в марте.</p>\n<p>\n\tДанная мера расценивается специалистами как резкий поворот в стратегии компании, проводимой в 2011 году, когда предлагалис ьболеенизкие ставки в ожидании сокращения мощностей или даже разорения конкурентов компании.</p>\n<p>\n\tНовая тактика Сорена Скоу может спровоцировать общее повышение стоимости перевозок контейнеров из Китая в Европу.</p>\n<p>\n\t&nbsp;</p>\n	\N	\N	2012-02-27 10:00:00+04	16	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Крупнейший перевозчик контейнеров из Китая в Европу резко изменил тактику	\N	<p>\n\tMaersk Line, крупнейший мировой контейнерный перевозчик заявил о сокращении на 9 процентов своего флота на азиатско-европейском направлении в целях создания предпосылок для увеличения стоимости фрахта на фоне избыточного предложения на рынке морских грузоперевозок, сообщает Reuters.</p>\n<p>\n\tMaersk Line &ndash; подразделение датской судоходно-нефтяной группы AP Moller-Maersk - заявило, что сокращение мощностей будет обеспечено соглашением о совместном использовании судов с французской линией CMA CGM.</p>\n<p style="text-align: justify;">\n\t&quot;Переизбыток контейнерных судов, работающих на азиатско-европейских сервисах, приводят к крайне низким ставкам морфрахта&quot;, - говорится в сообщении компании.</p>\n<p>\n\tАналитики полагают, что данное сокращение количества судов, которое стало первым значимым шагом нового генерального менеджера Maersk Line Сорена Скоу, может помочь компании в планах по резкому повышению ставок в марте.</p>\n<p>\n\tДанная мера расценивается специалистами как резкий поворот в стратегии компании, проводимой в 2011 году, когда предлагалис ьболеенизкие ставки в ожидании сокращения мощностей или даже разорения конкурентов компании.</p>\n<p>\n\tНовая тактика Сорена Скоу может спровоцировать общее повышение стоимости перевозок контейнеров из Китая в Европу.</p>\n<p>\n\t&nbsp;</p>\n	\N	<p>\n\tСорен Скоу играет на повышение. Клиенты Maersk Line настрожились</p>\n	\N	\N	\N	\N
2	2012-03-28 18:43:38+04	t			Увеличение собственного парка ж-д платформ ГКС/«Рускон»	<p>\n\tГруппа ГКС приобретает 224 длиннобазные платформы</p>\n	uvelichenie-sobstvennogo-parka-zh-d-2012-03-28-094338	<p style="text-align: justify;">\n\tГруппа компаний Глобальеый Контейнерный Сервис подписала контракт на приобретение 224 длиннобазных (80&rsquo;) платформ для перевозки крупнотоннажных контейнеров. Заказ размещен на заводе &laquo;ТМХ Вагоностроение&raquo;, входящем в ЗАО &laquo;Трансмашхолдинг&raquo;. Поступление первых 32 платформ ожидается уже в середине апреля текущего года.</p>\n<p style="text-align: justify;">\n\tЗаказанные платформы планируется использовать в составе контейнерных поездов мультимодального оператора &laquo;Рускон&raquo;, входящего в группу ГКС. В настоящее время &laquo;Рускон&raquo; предлагает несколько регулярных маршрутных сервисов по железнодорожной доставке контейнеров между Новороссийским портом и станциями в Европейской части РФ, включая Москву.</p>\n<p style="text-align: justify;">\n\tЭто приобретение, безусловно, положительно повлияет на доставку контейнеров из Китая, осуществляемую компанией GCS-CHINA.</p>\n	\N	\N	2012-03-28 09:00:00+04	17	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Увеличение собственного парка ж-д платформ ГКС/«Рускон»	\N	<p style="text-align: justify;">\n\tГруппа компаний Глобальеый Контейнерный Сервис подписала контракт на приобретение 224 длиннобазных (80&rsquo;) платформ для перевозки крупнотоннажных контейнеров. Заказ размещен на заводе &laquo;ТМХ Вагоностроение&raquo;, входящем в ЗАО &laquo;Трансмашхолдинг&raquo;. Поступление первых 32 платформ ожидается уже в середине апреля текущего года.</p>\n<p style="text-align: justify;">\n\tЗаказанные платформы планируется использовать в составе контейнерных поездов мультимодального оператора &laquo;Рускон&raquo;, входящего в группу ГКС. В настоящее время &laquo;Рускон&raquo; предлагает несколько регулярных маршрутных сервисов по железнодорожной доставке контейнеров между Новороссийским портом и станциями в Европейской части РФ, включая Москву.</p>\n<p style="text-align: justify;">\n\tЭто приобретение, безусловно, положительно повлияет на доставку контейнеров из Китая, осуществляемую компанией GCS-CHINA.</p>\n	\N	<p>\n\tГруппа ГКС приобретает 224 длиннобазные платформы</p>\n	\N	\N	\N	\N
2	2012-05-09 11:20:28+04	t			Группа COSCO Pacific объявила о падении прибыли в первом квартале 2012 года	<p>\n\tКрупнейший мировой грузоперевозчик объявил о значительном снижении прибыли от достаки контейнеров из Китая</p>\n	gruppa-cosco-pacific-obyavila-2012-05-09-022028	<p style="text-align: justify;">\n\tГруппа COSCO Pacific объявила о падении прибыли в первом квартале 2012 года на 29 процентов по сравнению с тем же периодом прошлого года. При этом отмечается снижение вклада от контейнерного бизнеса группы, сообщает деловое издание Dow Jones Newswires.</p>\n<p style="text-align: justify;">\n\tТем не менее, представители COSCO Pacific, которая имеет доли в контейнерных терминалах в материковом Китае, Гонконге, Сингапуре, Бельгии, Египте и Греции, сообщили, что пропускная способность портовых мощностей в этом квартале увеличилась на 11,5 процентов.</p>\n<p style="text-align: justify;">\n\tПри этом не сообщается, какие меры намерена предпринять COSCO Pacific для увеличения своей прибыли от перевозки контейнеров из Китая. Возможно, это будет повышение стоимости услуг.</p>\n	\N	\N	2012-05-09 09:00:00+04	18	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Группа COSCO Pacific объявила о падении прибыли в первом квартале 2012 года	\N	<p style="text-align: justify;">\n\tГруппа COSCO Pacific объявила о падении прибыли в первом квартале 2012 года на 29 процентов по сравнению с тем же периодом прошлого года. При этом отмечается снижение вклада от контейнерного бизнеса группы, сообщает деловое издание Dow Jones Newswires.</p>\n<p style="text-align: justify;">\n\tТем не менее, представители COSCO Pacific, которая имеет доли в контейнерных терминалах в материковом Китае, Гонконге, Сингапуре, Бельгии, Египте и Греции, сообщили, что пропускная способность портовых мощностей в этом квартале увеличилась на 11,5 процентов.</p>\n<p style="text-align: justify;">\n\tПри этом не сообщается, какие меры намерена предпринять COSCO Pacific для увеличения своей прибыли от перевозки контейнеров из Китая. Возможно, это будет повышение стоимости услуг.</p>\n	\N	<p>\n\tКрупнейший мировой грузоперевозчик объявил о значительном снижении прибыли от достаки контейнеров из Китая</p>\n	\N	\N	\N	\N
2	2012-06-19 16:46:29+04	t			Рекорд контейнерных перевозок	<p>\n\tШанхайский порт установил мировой рекорд по перевозке контейнеров</p>\n	rekord-kontejnernyih-perevozok-2012-06-19-074629	<p>\n\tШанхайский порт зафиксировал в мае рост объемов грузов в контейнерах на 2,8 процента в сравнении с предыдущим годом.<br />\n\tОбщий объем в указанном месяце достиг 2830000 TEU - максимальный показатель за последних 10 месяцев.<br />\n\tПо мнению экономистов, опрошенных Reuters, рост экспорта в мае увеличится до 6,8 процента по сравнению с 4,9 процента в апреле. Рост импорта прогнозируется на уровне до пяти процентов в сравнении с 0,3 процента месяцем раньше.<br />\n\tВ 2011 году контейнерный оборот шанхайского порта вырос на 9,2 процента до 31,7 млн. TEU, тем самым порт стал первым в мире, побившим рекордный уровень 30 миллионов TEU в год.<br />\n\t&nbsp;</p>\n	\N	\N	2012-06-19 09:00:00+04	20	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	Рекорд контейнерных перевозок	\N	<p>\n\tШанхайский порт зафиксировал в мае рост объемов грузов в контейнерах на 2,8 процента в сравнении с предыдущим годом.<br />\n\tОбщий объем в указанном месяце достиг 2830000 TEU - максимальный показатель за последних 10 месяцев.<br />\n\tПо мнению экономистов, опрошенных Reuters, рост экспорта в мае увеличится до 6,8 процента по сравнению с 4,9 процента в апреле. Рост импорта прогнозируется на уровне до пяти процентов в сравнении с 0,3 процента месяцем раньше.<br />\n\tВ 2011 году контейнерный оборот шанхайского порта вырос на 9,2 процента до 31,7 млн. TEU, тем самым порт стал первым в мире, побившим рекордный уровень 30 миллионов TEU в год.<br />\n\t&nbsp;</p>\n	\N	<p>\n\tШанхайский порт установил мировой рекорд по перевозке контейнеров</p>\n	\N	\N	\N	\N
\.


--
-- Data for Name: zinnia_entry_authors; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY zinnia_entry_authors (id, entry_id, author_id) FROM stdin;
\.


--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_entry_authors_id_seq', 1, true);


--
-- Data for Name: zinnia_entry_categories; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY zinnia_entry_categories (id, entry_id, category_id) FROM stdin;
2	2	1
3	3	1
4	4	1
5	5	1
6	6	1
7	7	1
8	8	1
9	9	1
10	10	1
11	11	1
12	12	1
13	13	1
14	14	1
15	15	1
16	16	1
17	17	1
18	18	1
19	19	1
20	20	1
\.


--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_entry_categories_id_seq', 20, true);


--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_entry_id_seq', 20, true);


--
-- Data for Name: zinnia_entry_related; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY zinnia_entry_related (id, from_entry_id, to_entry_id) FROM stdin;
\.


--
-- Name: zinnia_entry_related_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_entry_related_id_seq', 1, false);


--
-- Data for Name: zinnia_entry_sites; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY zinnia_entry_sites (id, entry_id, site_id) FROM stdin;
2	2	1
3	3	1
4	4	1
5	5	1
6	6	1
7	7	1
8	8	1
9	9	1
10	10	1
11	11	1
12	12	1
13	13	1
14	14	1
15	15	1
16	16	1
17	17	1
18	18	1
19	19	1
20	20	1
\.


--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_entry_sites_id_seq', 20, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cms_cmsplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);


--
-- Name: cms_content_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_content
    ADD CONSTRAINT cms_content_pkey PRIMARY KEY (id);


--
-- Name: cms_en_content_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_en_content
    ADD CONSTRAINT cms_en_content_pkey PRIMARY KEY (id);


--
-- Name: cms_en_form_serviceorder_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_en_form_serviceorder
    ADD CONSTRAINT cms_en_form_serviceorder_pkey PRIMARY KEY (id);


--
-- Name: cms_en_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_en_menu
    ADD CONSTRAINT cms_en_menu_pkey PRIMARY KEY (id);


--
-- Name: cms_en_module_publications_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_en_module_publications
    ADD CONSTRAINT cms_en_module_publications_pkey PRIMARY KEY (id);


--
-- Name: cms_en_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_en_texts
    ADD CONSTRAINT cms_en_texts_pkey PRIMARY KEY (id);


--
-- Name: cms_form_serviceorder2_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_form_serviceorder2
    ADD CONSTRAINT cms_form_serviceorder2_pkey PRIMARY KEY (id);


--
-- Name: cms_form_serviceorder_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_form_serviceorder
    ADD CONSTRAINT cms_form_serviceorder_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: cms_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_menu
    ADD CONSTRAINT cms_menu_pkey PRIMARY KEY (id);


--
-- Name: cms_module_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_module_clients
    ADD CONSTRAINT cms_module_clients_pkey PRIMARY KEY (id);


--
-- Name: cms_module_faq_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_module_faq
    ADD CONSTRAINT cms_module_faq_pkey PRIMARY KEY (id);


--
-- Name: cms_module_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_module_gallery
    ADD CONSTRAINT cms_module_gallery_pkey PRIMARY KEY (id);


--
-- Name: cms_module_gallerygroups_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_module_gallerygroups
    ADD CONSTRAINT cms_module_gallerygroups_pkey PRIMARY KEY (id);


--
-- Name: cms_module_news_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_module_news
    ADD CONSTRAINT cms_module_news_pkey PRIMARY KEY (id);


--
-- Name: cms_module_publications_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_module_publications
    ADD CONSTRAINT cms_module_publications_pkey PRIMARY KEY (id);


--
-- Name: cms_module_spo_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_module_spo
    ADD CONSTRAINT cms_module_spo_pkey PRIMARY KEY (id);


--
-- Name: cms_page_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);


--
-- Name: cms_page_placeholders_page_id_598353cf6a0df834_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_598353cf6a0df834_uniq UNIQUE (page_id, placeholder_id);


--
-- Name: cms_page_placeholders_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);


--
-- Name: cms_page_publisher_public_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);


--
-- Name: cms_pagemoderator_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_pagemoderator
    ADD CONSTRAINT cms_pagemoderator_pkey PRIMARY KEY (id);


--
-- Name: cms_pagemoderatorstate_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_pagemoderatorstate
    ADD CONSTRAINT cms_pagemoderatorstate_pkey PRIMARY KEY (id);


--
-- Name: cms_pagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_pageuser_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: cms_pageusergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);


--
-- Name: cms_placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);


--
-- Name: cms_qlinks_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_qlinks
    ADD CONSTRAINT cms_qlinks_pkey PRIMARY KEY (id);


--
-- Name: cms_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_texts
    ADD CONSTRAINT cms_texts_pkey PRIMARY KEY (id);


--
-- Name: cms_title_page_id_45628dc0e8a26dd5_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_page_id_45628dc0e8a26dd5_uniq UNIQUE (page_id, language);


--
-- Name: cms_title_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_calendarentriesplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_calendarentriesplugin
    ADD CONSTRAINT cmsplugin_calendarentriesplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_contact
    ADD CONSTRAINT cmsplugin_contact_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_customcontact_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_customcontact
    ADD CONSTRAINT cmsplugin_customcontact_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_filer_image_thumbnailoption_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_filer_image_thumbnailoption
    ADD CONSTRAINT cmsplugin_filer_image_thumbnailoption_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_filerfolder_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_filerfolder
    ADD CONSTRAINT cmsplugin_filerfolder_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_filerimage_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_filerimage
    ADD CONSTRAINT cmsplugin_filerimage_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_googlemap_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_googlemap
    ADD CONSTRAINT cmsplugin_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_latestentriesplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_latestentriesplugin
    ADD CONSTRAINT cmsplugin_latestentriesplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_queryentriesplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_queryentriesplugin
    ADD CONSTRAINT cmsplugin_queryentriesplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_randomentriesplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_randomentriesplugin
    ADD CONSTRAINT cmsplugin_randomentriesplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_selectedentriesplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_selectedentriesplugin
    ADD CONSTRAINT cmsplugin_selectedentriesplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_teaser_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_teaser
    ADD CONSTRAINT cmsplugin_teaser_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cmsplugin_zinnia_l_latestentriesplugin_id_293f2f67952dc99e_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_categories
    ADD CONSTRAINT cmsplugin_zinnia_l_latestentriesplugin_id_293f2f67952dc99e_uniq UNIQUE (latestentriesplugin_id, category_id);


--
-- Name: cmsplugin_zinnia_l_latestentriesplugin_id_5d47ab05e6e576c8_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_authors
    ADD CONSTRAINT cmsplugin_zinnia_l_latestentriesplugin_id_5d47ab05e6e576c8_uniq UNIQUE (latestentriesplugin_id, user_id);


--
-- Name: cmsplugin_zinnia_l_latestentriesplugin_id_7b19879bbccb7f4a_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_tags
    ADD CONSTRAINT cmsplugin_zinnia_l_latestentriesplugin_id_7b19879bbccb7f4a_uniq UNIQUE (latestentriesplugin_id, tag_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_authors
    ADD CONSTRAINT cmsplugin_zinnia_latestentriesplugin_authors_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_categories
    ADD CONSTRAINT cmsplugin_zinnia_latestentriesplugin_categories_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_tags
    ADD CONSTRAINT cmsplugin_zinnia_latestentriesplugin_tags_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_selectedentriesplugin_entries
    ADD CONSTRAINT cmsplugin_zinnia_selectedentriesplugin_entries_pkey PRIMARY KEY (id);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_id_3be94f0eb3d73a02_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_zinnia_selectedentriesplugin_entries
    ADD CONSTRAINT cmsplugin_zinnia_selectedentriesplugin_id_3be94f0eb3d73a02_uniq UNIQUE (selectedentriesplugin_id, entry_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_user_id_comment_id_flag_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_comment_id_flag_key UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_source_name_7549c98cc6dd6969_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_name_7549c98cc6dd6969_uniq UNIQUE (name, storage_hash);


--
-- Name: easy_thumbnails_source_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnail_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnail_source_id_1f50d53db8191480_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_source_id_1f50d53db8191480_uniq UNIQUE (source_id, name, storage_hash);


--
-- Name: file_file_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_file
    ADD CONSTRAINT file_file_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: filer_clipboard_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);


--
-- Name: filer_clipboarditem_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);


--
-- Name: filer_file_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);


--
-- Name: filer_folder_parent_id_30ad83e34d901e49_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_30ad83e34d901e49_uniq UNIQUE (parent_id, name);


--
-- Name: filer_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);


--
-- Name: filer_folderpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);


--
-- Name: filer_image_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);


--
-- Name: link_link_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_link
    ADD CONSTRAINT link_link_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: menus_cachekey_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);


--
-- Name: picture_picture_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_picture
    ADD CONSTRAINT picture_picture_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: snippet_snippet_name_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY snippet_snippet
    ADD CONSTRAINT snippet_snippet_name_key UNIQUE (name);


--
-- Name: snippet_snippet_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY snippet_snippet
    ADD CONSTRAINT snippet_snippet_pkey PRIMARY KEY (id);


--
-- Name: snippet_snippetptr_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_snippetptr
    ADD CONSTRAINT snippet_snippetptr_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: tagging_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY tagging_tag
    ADD CONSTRAINT tagging_tag_name_key UNIQUE (name);


--
-- Name: tagging_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY tagging_tag
    ADD CONSTRAINT tagging_tag_pkey PRIMARY KEY (id);


--
-- Name: tagging_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY tagging_taggeditem
    ADD CONSTRAINT tagging_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: tagging_taggeditem_tag_id_content_type_id_object_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY tagging_taggeditem
    ADD CONSTRAINT tagging_taggeditem_tag_id_content_type_id_object_id_key UNIQUE (tag_id, content_type_id, object_id);


--
-- Name: text_text_cmsplugin_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY cmsplugin_text
    ADD CONSTRAINT text_text_cmsplugin_ptr_id_key UNIQUE (cmsplugin_ptr_id);


--
-- Name: zinnia_category_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_category
    ADD CONSTRAINT zinnia_category_pkey PRIMARY KEY (id);


--
-- Name: zinnia_category_slug_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_category
    ADD CONSTRAINT zinnia_category_slug_uniq UNIQUE (slug);


--
-- Name: zinnia_entry_authors_entry_id_4c997fb82fe99b1_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT zinnia_entry_authors_entry_id_4c997fb82fe99b1_uniq UNIQUE (entry_id, author_id);


--
-- Name: zinnia_entry_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT zinnia_entry_authors_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_categories_entry_id_4e673c6a4d789b1d_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT zinnia_entry_categories_entry_id_4e673c6a4d789b1d_uniq UNIQUE (entry_id, category_id);


--
-- Name: zinnia_entry_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT zinnia_entry_categories_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry
    ADD CONSTRAINT zinnia_entry_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_related_from_entry_id_1c6f37570b9f8939_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT zinnia_entry_related_from_entry_id_1c6f37570b9f8939_uniq UNIQUE (from_entry_id, to_entry_id);


--
-- Name: zinnia_entry_related_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT zinnia_entry_related_pkey PRIMARY KEY (id);


--
-- Name: zinnia_entry_sites_entry_id_7b0ddc9a2bc8a31b_uniq; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT zinnia_entry_sites_entry_id_7b0ddc9a2bc8a31b_uniq UNIQUE (entry_id, site_id);


--
-- Name: zinnia_entry_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: django_login; Tablespace: 
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT zinnia_entry_sites_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: cms_cmsplugin_language; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_language ON cms_cmsplugin USING btree (language);


--
-- Name: cms_cmsplugin_language_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_language_like ON cms_cmsplugin USING btree (language varchar_pattern_ops);


--
-- Name: cms_cmsplugin_level; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_level ON cms_cmsplugin USING btree (level);


--
-- Name: cms_cmsplugin_lft; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_lft ON cms_cmsplugin USING btree (lft);


--
-- Name: cms_cmsplugin_new_placeholder_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_new_placeholder_id ON cms_cmsplugin USING btree (placeholder_id);


--
-- Name: cms_cmsplugin_parent_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_parent_id ON cms_cmsplugin USING btree (parent_id);


--
-- Name: cms_cmsplugin_plugin_type; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_plugin_type ON cms_cmsplugin USING btree (plugin_type);


--
-- Name: cms_cmsplugin_plugin_type_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_plugin_type_like ON cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);


--
-- Name: cms_cmsplugin_rght; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_rght ON cms_cmsplugin USING btree (rght);


--
-- Name: cms_cmsplugin_tree_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_cmsplugin_tree_id ON cms_cmsplugin USING btree (tree_id);


--
-- Name: cms_globalpagepermission_group_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_globalpagepermission_group_id ON cms_globalpagepermission USING btree (group_id);


--
-- Name: cms_globalpagepermission_sites_globalpagepermission_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id ON cms_globalpagepermission_sites USING btree (globalpagepermission_id);


--
-- Name: cms_globalpagepermission_sites_site_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_globalpagepermission_sites_site_id ON cms_globalpagepermission_sites USING btree (site_id);


--
-- Name: cms_globalpagepermission_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_globalpagepermission_user_id ON cms_globalpagepermission USING btree (user_id);


--
-- Name: cms_page_in_navigation; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_in_navigation ON cms_page USING btree (in_navigation);


--
-- Name: cms_page_level; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_level ON cms_page USING btree (level);


--
-- Name: cms_page_lft; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_lft ON cms_page USING btree (lft);


--
-- Name: cms_page_limit_visibility_in_menu; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_limit_visibility_in_menu ON cms_page USING btree (limit_visibility_in_menu);


--
-- Name: cms_page_navigation_extenders; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_navigation_extenders ON cms_page USING btree (navigation_extenders);


--
-- Name: cms_page_navigation_extenders_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_navigation_extenders_like ON cms_page USING btree (navigation_extenders varchar_pattern_ops);


--
-- Name: cms_page_parent_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_parent_id ON cms_page USING btree (parent_id);


--
-- Name: cms_page_placeholders_page_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_placeholders_page_id ON cms_page_placeholders USING btree (page_id);


--
-- Name: cms_page_placeholders_placeholder_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_placeholders_placeholder_id ON cms_page_placeholders USING btree (placeholder_id);


--
-- Name: cms_page_publication_date; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_publication_date ON cms_page USING btree (publication_date);


--
-- Name: cms_page_publication_end_date; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_publication_end_date ON cms_page USING btree (publication_end_date);


--
-- Name: cms_page_publisher_is_draft; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_publisher_is_draft ON cms_page USING btree (publisher_is_draft);


--
-- Name: cms_page_publisher_state; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_publisher_state ON cms_page USING btree (publisher_state);


--
-- Name: cms_page_reverse_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_reverse_id ON cms_page USING btree (reverse_id);


--
-- Name: cms_page_reverse_id_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_reverse_id_like ON cms_page USING btree (reverse_id varchar_pattern_ops);


--
-- Name: cms_page_rght; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_rght ON cms_page USING btree (rght);


--
-- Name: cms_page_site_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_site_id ON cms_page USING btree (site_id);


--
-- Name: cms_page_soft_root; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_soft_root ON cms_page USING btree (soft_root);


--
-- Name: cms_page_tree_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_page_tree_id ON cms_page USING btree (tree_id);


--
-- Name: cms_pagemoderator_page_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_pagemoderator_page_id ON cms_pagemoderator USING btree (page_id);


--
-- Name: cms_pagemoderator_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_pagemoderator_user_id ON cms_pagemoderator USING btree (user_id);


--
-- Name: cms_pagemoderatorstate_page_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_pagemoderatorstate_page_id ON cms_pagemoderatorstate USING btree (page_id);


--
-- Name: cms_pagemoderatorstate_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_pagemoderatorstate_user_id ON cms_pagemoderatorstate USING btree (user_id);


--
-- Name: cms_pagepermission_group_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_pagepermission_group_id ON cms_pagepermission USING btree (group_id);


--
-- Name: cms_pagepermission_page_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_pagepermission_page_id ON cms_pagepermission USING btree (page_id);


--
-- Name: cms_pagepermission_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_pagepermission_user_id ON cms_pagepermission USING btree (user_id);


--
-- Name: cms_pageuser_created_by_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_pageuser_created_by_id ON cms_pageuser USING btree (created_by_id);


--
-- Name: cms_pageusergroup_created_by_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_pageusergroup_created_by_id ON cms_pageusergroup USING btree (created_by_id);


--
-- Name: cms_placeholder_slot; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_placeholder_slot ON cms_placeholder USING btree (slot);


--
-- Name: cms_placeholder_slot_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_placeholder_slot_like ON cms_placeholder USING btree (slot varchar_pattern_ops);


--
-- Name: cms_title_application_urls; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_application_urls ON cms_title USING btree (application_urls);


--
-- Name: cms_title_application_urls_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_application_urls_like ON cms_title USING btree (application_urls varchar_pattern_ops);


--
-- Name: cms_title_has_url_overwrite; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_has_url_overwrite ON cms_title USING btree (has_url_overwrite);


--
-- Name: cms_title_language; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_language ON cms_title USING btree (language);


--
-- Name: cms_title_language_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_language_like ON cms_title USING btree (language varchar_pattern_ops);


--
-- Name: cms_title_page_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_page_id ON cms_title USING btree (page_id);


--
-- Name: cms_title_path; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_path ON cms_title USING btree (path);


--
-- Name: cms_title_path_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_path_like ON cms_title USING btree (path varchar_pattern_ops);


--
-- Name: cms_title_slug; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_slug ON cms_title USING btree (slug);


--
-- Name: cms_title_slug_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cms_title_slug_like ON cms_title USING btree (slug varchar_pattern_ops);


--
-- Name: cmsplugin_filerfolder_folder_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_filerfolder_folder_id ON cmsplugin_filerfolder USING btree (folder_id);


--
-- Name: cmsplugin_filerimage_file_link_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_filerimage_file_link_id ON cmsplugin_filerimage USING btree (file_link_id);


--
-- Name: cmsplugin_filerimage_image_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_filerimage_image_id ON cmsplugin_filerimage USING btree (image_id);


--
-- Name: cmsplugin_filerimage_page_link_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_filerimage_page_link_id ON cmsplugin_filerimage USING btree (page_link_id);


--
-- Name: cmsplugin_filerimage_thumbnail_option_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_filerimage_thumbnail_option_id ON cmsplugin_filerimage USING btree (thumbnail_option_id);


--
-- Name: cmsplugin_picture_page_link_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_picture_page_link_id ON cmsplugin_picture USING btree (page_link_id);


--
-- Name: cmsplugin_teaser_page_link_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_teaser_page_link_id ON cmsplugin_teaser USING btree (page_link_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_latestentriesp61b2; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_authors_latestentriesp61b2 ON cmsplugin_zinnia_latestentriesplugin_authors USING btree (latestentriesplugin_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_authors_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_authors_user_id ON cmsplugin_zinnia_latestentriesplugin_authors USING btree (user_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_category_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_categories_category_id ON cmsplugin_zinnia_latestentriesplugin_categories USING btree (category_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_categories_latestentri1d11; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_categories_latestentri1d11 ON cmsplugin_zinnia_latestentriesplugin_categories USING btree (latestentriesplugin_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_latestentriesplug2872; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_tags_latestentriesplug2872 ON cmsplugin_zinnia_latestentriesplugin_tags USING btree (latestentriesplugin_id);


--
-- Name: cmsplugin_zinnia_latestentriesplugin_tags_tag_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_latestentriesplugin_tags_tag_id ON cmsplugin_zinnia_latestentriesplugin_tags USING btree (tag_id);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_entry_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_selectedentriesplugin_entries_entry_id ON cmsplugin_zinnia_selectedentriesplugin_entries USING btree (entry_id);


--
-- Name: cmsplugin_zinnia_selectedentriesplugin_entries_selectedentr6604; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX cmsplugin_zinnia_selectedentriesplugin_entries_selectedentr6604 ON cmsplugin_zinnia_selectedentriesplugin_entries USING btree (selectedentriesplugin_id);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_comment_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_comment_flags_comment_id ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_flag; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_comment_flags_flag ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_flag_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_comment_flags_flag_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comment_flags_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_comment_flags_user_id ON django_comment_flags USING btree (user_id);


--
-- Name: django_comments_content_type_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_comments_content_type_id ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_site_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_comments_site_id ON django_comments USING btree (site_id);


--
-- Name: django_comments_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_comments_user_id ON django_comments USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: easy_thumbnails_source_name; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX easy_thumbnails_source_name ON easy_thumbnails_source USING btree (name);


--
-- Name: easy_thumbnails_source_storage_hash; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX easy_thumbnails_source_storage_hash ON easy_thumbnails_source USING btree (storage_hash);


--
-- Name: easy_thumbnails_thumbnail_name; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX easy_thumbnails_thumbnail_name ON easy_thumbnails_thumbnail USING btree (name);


--
-- Name: easy_thumbnails_thumbnail_source_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX easy_thumbnails_thumbnail_source_id ON easy_thumbnails_thumbnail USING btree (source_id);


--
-- Name: easy_thumbnails_thumbnail_storage_hash; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash ON easy_thumbnails_thumbnail USING btree (storage_hash);


--
-- Name: filer_clipboard_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_clipboard_user_id ON filer_clipboard USING btree (user_id);


--
-- Name: filer_clipboarditem_clipboard_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_clipboarditem_clipboard_id ON filer_clipboarditem USING btree (clipboard_id);


--
-- Name: filer_clipboarditem_file_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_clipboarditem_file_id ON filer_clipboarditem USING btree (file_id);


--
-- Name: filer_file_folder_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_file_folder_id ON filer_file USING btree (folder_id);


--
-- Name: filer_file_owner_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_file_owner_id ON filer_file USING btree (owner_id);


--
-- Name: filer_file_polymorphic_ctype_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_file_polymorphic_ctype_id ON filer_file USING btree (polymorphic_ctype_id);


--
-- Name: filer_folder_level; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_folder_level ON filer_folder USING btree (level);


--
-- Name: filer_folder_lft; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_folder_lft ON filer_folder USING btree (lft);


--
-- Name: filer_folder_owner_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_folder_owner_id ON filer_folder USING btree (owner_id);


--
-- Name: filer_folder_parent_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_folder_parent_id ON filer_folder USING btree (parent_id);


--
-- Name: filer_folder_rght; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_folder_rght ON filer_folder USING btree (rght);


--
-- Name: filer_folder_tree_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_folder_tree_id ON filer_folder USING btree (tree_id);


--
-- Name: filer_folderpermission_folder_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_folderpermission_folder_id ON filer_folderpermission USING btree (folder_id);


--
-- Name: filer_folderpermission_group_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_folderpermission_group_id ON filer_folderpermission USING btree (group_id);


--
-- Name: filer_folderpermission_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX filer_folderpermission_user_id ON filer_folderpermission USING btree (user_id);


--
-- Name: link_link_page_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX link_link_page_id ON cmsplugin_link USING btree (page_link_id);


--
-- Name: snippet_snippetptr_snippet_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX snippet_snippetptr_snippet_id ON cmsplugin_snippetptr USING btree (snippet_id);


--
-- Name: tagging_taggeditem_content_type_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX tagging_taggeditem_content_type_id ON tagging_taggeditem USING btree (content_type_id);


--
-- Name: tagging_taggeditem_object_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX tagging_taggeditem_object_id ON tagging_taggeditem USING btree (object_id);


--
-- Name: tagging_taggeditem_tag_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX tagging_taggeditem_tag_id ON tagging_taggeditem USING btree (tag_id);


--
-- Name: zinnia_category_level; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_category_level ON zinnia_category USING btree (level);


--
-- Name: zinnia_category_lft; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_category_lft ON zinnia_category USING btree (lft);


--
-- Name: zinnia_category_parent_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_category_parent_id ON zinnia_category USING btree (parent_id);


--
-- Name: zinnia_category_rght; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_category_rght ON zinnia_category USING btree (rght);


--
-- Name: zinnia_category_slug; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_category_slug ON zinnia_category USING btree (slug);


--
-- Name: zinnia_category_slug_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_category_slug_like ON zinnia_category USING btree (slug varchar_pattern_ops);


--
-- Name: zinnia_category_tree_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_category_tree_id ON zinnia_category USING btree (tree_id);


--
-- Name: zinnia_entry_authors_entry_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_authors_entry_id ON zinnia_entry_authors USING btree (entry_id);


--
-- Name: zinnia_entry_authors_user_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_authors_user_id ON zinnia_entry_authors USING btree (author_id);


--
-- Name: zinnia_entry_categories_category_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_categories_category_id ON zinnia_entry_categories USING btree (category_id);


--
-- Name: zinnia_entry_categories_entry_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_categories_entry_id ON zinnia_entry_categories USING btree (entry_id);


--
-- Name: zinnia_entry_related_from_entry_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_related_from_entry_id ON zinnia_entry_related USING btree (from_entry_id);


--
-- Name: zinnia_entry_related_to_entry_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_related_to_entry_id ON zinnia_entry_related USING btree (to_entry_id);


--
-- Name: zinnia_entry_sites_entry_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_sites_entry_id ON zinnia_entry_sites USING btree (entry_id);


--
-- Name: zinnia_entry_sites_site_id; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_sites_site_id ON zinnia_entry_sites USING btree (site_id);


--
-- Name: zinnia_entry_slug; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_slug ON zinnia_entry USING btree (slug);


--
-- Name: zinnia_entry_slug_like; Type: INDEX; Schema: public; Owner: django_login; Tablespace: 
--

CREATE INDEX zinnia_entry_slug_like ON zinnia_entry USING btree (slug varchar_pattern_ops);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_7361f4dc8306a95d; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_categories
    ADD CONSTRAINT category_id_refs_id_7361f4dc8306a95d FOREIGN KEY (category_id) REFERENCES zinnia_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_7e6ce045459f8216; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT category_id_refs_id_7e6ce045459f8216 FOREIGN KEY (category_id) REFERENCES zinnia_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clipboard_id_refs_id_3e67f0ba46496bc2; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT clipboard_id_refs_id_3e67f0ba46496bc2 FOREIGN KEY (clipboard_id) REFERENCES filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_1253ee2fd6a15acd; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_teaser
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_1253ee2fd6a15acd FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_27a18a4d447cf852; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_link
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_27a18a4d447cf852 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_3301bd8419e4c2ec; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_queryentriesplugin
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_3301bd8419e4c2ec FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_344c4334bf9780bc; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_text
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_344c4334bf9780bc FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_360f0e33209e77c; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_randomentriesplugin
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_360f0e33209e77c FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_429eee6130503b22; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_file
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_429eee6130503b22 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_4bd46ee601c5135f; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_customcontact
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_4bd46ee601c5135f FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_4c030ec612cc9f9c; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_selectedentriesplugin
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_4c030ec612cc9f9c FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_4ec9557a35fc351a; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_googlemap
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_4ec9557a35fc351a FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_5b5bb680225ec8c8; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_latestentriesplugin
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_5b5bb680225ec8c8 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_624cc071dc33150a; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_picture
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_624cc071dc33150a FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_63ded10962cab895; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_snippetptr
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_63ded10962cab895 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_646d58e0c078c386; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_filerimage
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_646d58e0c078c386 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_67e792734c50eb22; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_filerfolder
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_67e792734c50eb22 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_a939976eb84ffa7; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_calendarentriesplugin
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_a939976eb84ffa7 FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cmsplugin_ptr_id_refs_id_d0cca256d2d8b7a; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_contact
    ADD CONSTRAINT cmsplugin_ptr_id_refs_id_d0cca256d2d8b7a FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: created_by_id_refs_id_23321fd516b8b1ea; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT created_by_id_refs_id_23321fd516b8b1ea FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: created_by_id_refs_id_47ce3c433dc63396; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT created_by_id_refs_id_47ce3c433dc63396 FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entry_id_refs_id_2ca8c253350895b0; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT entry_id_refs_id_2ca8c253350895b0 FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entry_id_refs_id_2e8e58e6fb6ebd9; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_categories
    ADD CONSTRAINT entry_id_refs_id_2e8e58e6fb6ebd9 FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entry_id_refs_id_456b2b7ada51dea2; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT entry_id_refs_id_456b2b7ada51dea2 FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entry_id_refs_id_7026db9978eac1ff; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_selectedentriesplugin_entries
    ADD CONSTRAINT entry_id_refs_id_7026db9978eac1ff FOREIGN KEY (entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: file_id_refs_id_3e35e74d03533711; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT file_id_refs_id_3e35e74d03533711 FOREIGN KEY (file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: file_link_id_refs_id_65d6aadba13c98d4; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_filerimage
    ADD CONSTRAINT file_link_id_refs_id_65d6aadba13c98d4 FOREIGN KEY (file_link_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: file_ptr_id_refs_id_b404a69d8c3bde1; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_image
    ADD CONSTRAINT file_ptr_id_refs_id_b404a69d8c3bde1 FOREIGN KEY (file_ptr_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: folder_id_refs_id_35aa694cb9be9f8c; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_filerfolder
    ADD CONSTRAINT folder_id_refs_id_35aa694cb9be9f8c FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: folder_id_refs_id_71125427565b7e06; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT folder_id_refs_id_71125427565b7e06 FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: folder_id_refs_id_7b25d795276dead; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_file
    ADD CONSTRAINT folder_id_refs_id_7b25d795276dead FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: from_entry_id_refs_id_233a09ab4d833995; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT from_entry_id_refs_id_233a09ab4d833995 FOREIGN KEY (from_entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: globalpagepermission_id_refs_id_2d0cf4fc2c730e06; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT globalpagepermission_id_refs_id_2d0cf4fc2c730e06 FOREIGN KEY (globalpagepermission_id) REFERENCES cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_1363fb0191cff1c5; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT group_id_refs_id_1363fb0191cff1c5 FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_4b6b4203d3639033; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT group_id_refs_id_4b6b4203d3639033 FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_4f6f13d5b12278f8; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT group_id_refs_id_4f6f13d5b12278f8 FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_ptr_id_refs_id_49e243cc99e5e357; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT group_ptr_id_refs_id_49e243cc99e5e357 FOREIGN KEY (group_ptr_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: image_id_refs_file_ptr_id_69d957ad90afa62a; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_filerimage
    ADD CONSTRAINT image_id_refs_file_ptr_id_69d957ad90afa62a FOREIGN KEY (image_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: latestentriesplugin_id_refs_cmsplugin_ptr_id_5d2b51b3278967ab; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_authors
    ADD CONSTRAINT latestentriesplugin_id_refs_cmsplugin_ptr_id_5d2b51b3278967ab FOREIGN KEY (latestentriesplugin_id) REFERENCES cmsplugin_latestentriesplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: latestentriesplugin_id_refs_cmsplugin_ptr_id_6efb0c12672935a2; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_categories
    ADD CONSTRAINT latestentriesplugin_id_refs_cmsplugin_ptr_id_6efb0c12672935a2 FOREIGN KEY (latestentriesplugin_id) REFERENCES cmsplugin_latestentriesplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: latestentriesplugin_id_refs_cmsplugin_ptr_id_6f912a9095869a39; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_tags
    ADD CONSTRAINT latestentriesplugin_id_refs_cmsplugin_ptr_id_6f912a9095869a39 FOREIGN KEY (latestentriesplugin_id) REFERENCES cmsplugin_latestentriesplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: new_placeholder_id_refs_id_74e135c7df6bb944; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT new_placeholder_id_refs_id_74e135c7df6bb944 FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: owner_id_refs_id_51d6dcfb4709f467; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT owner_id_refs_id_51d6dcfb4709f467 FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: owner_id_refs_id_6f38888395417f77; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_file
    ADD CONSTRAINT owner_id_refs_id_6f38888395417f77 FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_3cff375bf4dc9e9d; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagemoderatorstate
    ADD CONSTRAINT page_id_refs_id_3cff375bf4dc9e9d FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_5d795dd492bc8605; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagemoderator
    ADD CONSTRAINT page_id_refs_id_5d795dd492bc8605 FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_74739381d0206170; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_link
    ADD CONSTRAINT page_id_refs_id_74739381d0206170 FOREIGN KEY (page_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_772ba48efc98665f; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_title
    ADD CONSTRAINT page_id_refs_id_772ba48efc98665f FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_77f67714d31a36ca; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT page_id_refs_id_77f67714d31a36ca FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_id_refs_id_944f73bb22baae5; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT page_id_refs_id_944f73bb22baae5 FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_link_id_refs_id_2401223f74758dc2; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_picture
    ADD CONSTRAINT page_link_id_refs_id_2401223f74758dc2 FOREIGN KEY (page_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_link_id_refs_id_582eb8c0c28029c4; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_filerimage
    ADD CONSTRAINT page_link_id_refs_id_582eb8c0c28029c4 FOREIGN KEY (page_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_link_id_refs_id_7c39f228b9e9ae89; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_teaser
    ADD CONSTRAINT page_link_id_refs_id_7c39f228b9e9ae89 FOREIGN KEY (page_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_122ab180653a773; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT parent_id_refs_id_122ab180653a773 FOREIGN KEY (parent_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_1fffa484ce18ab03; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_category
    ADD CONSTRAINT parent_id_refs_id_1fffa484ce18ab03 FOREIGN KEY (parent_id) REFERENCES zinnia_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_47dbff1b60f1d8bd; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT parent_id_refs_id_47dbff1b60f1d8bd FOREIGN KEY (parent_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_4f240e19e0b32a03; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT parent_id_refs_id_4f240e19e0b32a03 FOREIGN KEY (parent_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: placeholder_id_refs_id_646a13f4b0df4960; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT placeholder_id_refs_id_646a13f4b0df4960 FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: polymorphic_ctype_id_refs_id_1d8f97b2d63e96cb; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_file
    ADD CONSTRAINT polymorphic_ctype_id_refs_id_1d8f97b2d63e96cb FOREIGN KEY (polymorphic_ctype_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: publisher_public_id_refs_id_122ab180653a773; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT publisher_public_id_refs_id_122ab180653a773 FOREIGN KEY (publisher_public_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: selectedentriesplugin_id_refs_cmsplugin_ptr_id_2bb045ee250f1f05; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_selectedentriesplugin_entries
    ADD CONSTRAINT selectedentriesplugin_id_refs_cmsplugin_ptr_id_2bb045ee250f1f05 FOREIGN KEY (selectedentriesplugin_id) REFERENCES cmsplugin_selectedentriesplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_104217d4ed70f71a; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_page
    ADD CONSTRAINT site_id_refs_id_104217d4ed70f71a FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_250ed0b2ebd96f36; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_sites
    ADD CONSTRAINT site_id_refs_id_250ed0b2ebd96f36 FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_70c81e4a38dfe611; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT site_id_refs_id_70c81e4a38dfe611 FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: snippet_id_refs_id_8063d83ce9512ce; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_snippetptr
    ADD CONSTRAINT snippet_id_refs_id_8063d83ce9512ce FOREIGN KEY (snippet_id) REFERENCES snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: source_id_refs_id_38c628a45bffe8f5; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT source_id_refs_id_38c628a45bffe8f5 FOREIGN KEY (source_id) REFERENCES easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tag_id_refs_id_77c431e0c66ec49e; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_tags
    ADD CONSTRAINT tag_id_refs_id_77c431e0c66ec49e FOREIGN KEY (tag_id) REFERENCES tagging_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tagging_taggeditem_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY tagging_taggeditem
    ADD CONSTRAINT tagging_taggeditem_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tagging_taggeditem_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY tagging_taggeditem
    ADD CONSTRAINT tagging_taggeditem_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES tagging_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: thumbnail_option_id_refs_id_372aa1a00917a93; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_filerimage
    ADD CONSTRAINT thumbnail_option_id_refs_id_372aa1a00917a93 FOREIGN KEY (thumbnail_option_id) REFERENCES cmsplugin_filer_image_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: to_entry_id_refs_id_233a09ab4d833995; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_related
    ADD CONSTRAINT to_entry_id_refs_id_233a09ab4d833995 FOREIGN KEY (to_entry_id) REFERENCES zinnia_entry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_16c8c3744ab53c64; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT user_id_refs_id_16c8c3744ab53c64 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_210628e22808fb19; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagemoderatorstate
    ADD CONSTRAINT user_id_refs_id_210628e22808fb19 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_2805f1124cc96fc2; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cmsplugin_zinnia_latestentriesplugin_authors
    ADD CONSTRAINT user_id_refs_id_2805f1124cc96fc2 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_280a94e34f0ab76c; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT user_id_refs_id_280a94e34f0ab76c FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_410656e2874b02ff; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY zinnia_entry_authors
    ADD CONSTRAINT user_id_refs_id_410656e2874b02ff FOREIGN KEY (author_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_447e6e76f5365069; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT user_id_refs_id_447e6e76f5365069 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4cbb99dfc574e281; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pagemoderator
    ADD CONSTRAINT user_id_refs_id_4cbb99dfc574e281 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_678f4d97e9ec83e0; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT user_id_refs_id_678f4d97e9ec83e0 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_831107f1; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_f2045483; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_ptr_id_refs_id_23321fd516b8b1ea; Type: FK CONSTRAINT; Schema: public; Owner: django_login
--

ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT user_ptr_id_refs_id_23321fd516b8b1ea FOREIGN KEY (user_ptr_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

