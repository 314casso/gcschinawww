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
1	picasso			picasso75@yandex.ru	pbkdf2_sha256$10000$wiMXlvIXAgsx$mIIKoAg0iL+5BhRl7K6T0KgHFiEqFK1axPWbk5/xg3o=	t	t	t	2013-03-11 09:52:42.233697+04	2013-03-07 14:18:54.264245+04
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
\.


--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_cmsplugin_id_seq', 48, true);


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
2	0		\N	\N	f	f	2013-03-14 16:29:25.697125+04	1	\N	page.html	6	2013-03-14 16:29:34.795+04	t	10	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-14 16:40:04.063343+04
2	0		\N	\N	f	f	2013-03-12 09:19:35.98308+04	1	\N	base.html	4	\N	f	3	0	f	1	picasso	picasso	t	1	\N	\N	2013-03-12 09:20:45.204417+04
4	2		5	\N	f	f	2013-03-12 14:53:02.693313+04	3	\N	INHERIT	5	2013-03-12 14:53:10.165457+04	t	6	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-12 14:53:10.170074+04
6	2		5	\N	f	f	2013-03-12 16:46:53.118189+04	5	\N	INHERIT	5	2013-03-12 16:47:03.952403+04	t	8	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-12 16:47:03.954601+04
11	1		4	\N	f	f	2013-03-12 16:45:38.692118+04	8	\N	INHERIT	5	2013-03-12 16:45:44.323116+04	t	7	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-12 16:45:44.325383+04
10	2		7	\N	f	f	2013-03-13 08:41:18.01703+04	9	\N	INHERIT	5	2013-03-13 08:41:44.666116+04	t	9	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-13 08:41:44.668854+04
7	1		4	\N	f	f	2013-03-12 14:44:42.828826+04	2	\N	INHERIT	5	2013-03-12 14:45:33.580223+04	t	5	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-14 09:31:29.614247+04
12	0		\N	service	f	f	2013-03-12 12:53:14.650307+04	1	\N	page.html	5	2013-03-12 12:53:30.893605+04	t	4	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-14 09:44:54.896259+04
2	0		\N	\N	f	f	2013-03-15 14:11:14.288251+04	1	\N	page.html	2	2013-03-15 14:11:19.935284+04	t	11	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-15 14:11:35.749685+04
2	0		\N	\N	f	f	2013-03-07 16:12:02.709618+04	1	\N	home.html	1	2013-03-07 16:12:44.408524+04	t	1	0	t	1	picasso	picasso	t	1	\N	\N	2013-03-14 09:35:19.976756+04
2	0		\N	global_placeholder	f	f	2013-03-07 16:15:34.624996+04	1	\N	global_placeholder.html	3	\N	f	2	0	f	1	picasso	picasso	t	1	\N	\N	2013-03-15 15:32:51.954268+04
\.


--
-- Name: cms_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_page_id_seq', 11, true);


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
34	9	34
35	9	35
36	9	36
37	9	37
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
\.


--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_page_placeholders_id_seq', 47, true);


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
header-image	34	\N
custom-title	35	\N
page-content	36	\N
bigpromo-title	37	\N
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
\.


--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_placeholder_id_seq', 47, true);


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
ru	Доставка контейнеров	5	12	services/kompleksnaya_dostavka_gruzov	2013-03-12 14:44:42.868086+04	kompleksnaya_dostavka_gruzov	f						
zh-cn	全方位货物运输服务	5	18	services/kompleksnaya_dostavka_gruzov	2013-03-14 09:31:29.652319+04	kompleksnaya_dostavka_gruzov	f	\N	\N				
ru	Морские перевозки из Китая	6	13	services/kompleksnaya_dostavka_gruzov/morskie_perevozki	2013-03-12 14:53:02.718893+04	morskie_perevozki	f	\N	\N	\N	\N	\N	\N
ru	Железнодорожные перевозки из Китая	8	15	services/kompleksnaya_dostavka_gruzov/zheleznodorozhnye_perevozki	2013-03-12 16:46:53.144034+04	zheleznodorozhnye_perevozki	f	\N	\N	\N	\N	\N	\N
ru	Таможенная очистка	7	14	services/tamozhennoe_oformlenie	2013-03-12 16:45:38.717986+04	tamozhennoe_oformlenie	f	\N	\N	\N	\N	\N	\N
ru	Услуги по таможенной очистке импорта из Китая	9	16	services/tamozhennoe_oformlenie/tamozhennaya_ochstka_importa_iz_knr	2013-03-13 08:41:18.049285+04	tamozhennaya_ochstka_importa_iz_knr	f	\N	\N	\N	\N	\N	\N
ru	Услуги	4	8	services	2013-03-12 12:53:14.804523+04	services	f						
ru	Блог	3	5	blog	2013-03-12 09:19:36.241085+04	blog	f	ZinniaApphook					
zh-cn	Blog	3	7	blog	2013-03-12 09:20:27.423741+04	blog	f	ZinniaApphook					
en	Blog	3	6	blog	2013-03-12 09:20:20.586805+04	blog	f	ZinniaApphook					
en	Home	1	4		2013-03-11 13:54:00.372902+04	home	f						
ru	Главная	1	1		2013-03-07 16:12:02.774966+04	home	f						
en	Services	4	9	services	2013-03-12 14:34:02.241738+04	services	f	\N	\N				
zh-cn	我们的服务	4	19	services	2013-03-14 09:34:05.867145+04	services	f	\N	\N				
zh-cn	家	1	3		2013-03-11 11:17:25.153934+04	home	f						
en	Through deliveries	5	17	services/kompleksnaya_dostavka_gruzov	2013-03-14 09:29:16.772314+04	kompleksnaya_dostavka_gruzov	f						
ru	Заявка	10	20	order	2013-03-14 16:29:25.894698+04	order	f						
ru	Статьи	11	21	news	2013-03-15 14:11:14.462394+04	news	f	\N	\N	\N	\N	\N	\N
ru	Global Placeholder	2	2	global-placeholde	2013-03-07 16:15:34.632001+04	global-placeholde	f						
en	Global Placeholder	2	10	global-placeholde	2013-03-12 14:39:05.029971+04	global-placeholde	f						
zh-cn	Global Placeholder	2	11	global-placeholde	2013-03-12 14:39:38.187057+04	global-placeholde	f						
\.


--
-- Name: cms_title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('cms_title_id_seq', 21, true);


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
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 81, true);


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
e24fc6a380c46c723b833fc721b8eb0b	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:25:34.243059+04
e120eca5278d9baf471fa4737b4a6374	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:30:53.906083+04
c495ceda2fe0f1c31b37a817062c5108	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:33:44.432312+04
ebb28efebb9bafa86bde8e8a9261c17a	N2MzNDQwZDE5Y2U5M2ZkYTkwODZkYjhiN2EwZmU3MzYzZWFkODU2MDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJVAnJ1cQNzLg==\n	2013-03-29 15:35:01.589731+04
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
65	ru	1	cms-menu_nodes_ru_1_1_user
66	en	1	cms-menu_nodes_en_1_1_user
\.


--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('menus_cachekey_id_seq', 66, true);


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
2	2013-03-15 14:15:54.008628+04	t			123		123	<p>1234</p>	\N	\N	2013-03-15 14:15:32+04	1	t	f		entry_detail.html	f	0	0	0	t	zinnia/_entry_detail.html	123		<p>1234</p>						
\.


--
-- Data for Name: zinnia_entry_authors; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY zinnia_entry_authors (id, entry_id, author_id) FROM stdin;
1	1	1
\.


--
-- Name: zinnia_entry_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_entry_authors_id_seq', 1, true);


--
-- Data for Name: zinnia_entry_categories; Type: TABLE DATA; Schema: public; Owner: django_login
--

COPY zinnia_entry_categories (id, entry_id, category_id) FROM stdin;
1	1	1
\.


--
-- Name: zinnia_entry_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_entry_categories_id_seq', 1, true);


--
-- Name: zinnia_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_entry_id_seq', 1, true);


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
1	1	1
\.


--
-- Name: zinnia_entry_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('zinnia_entry_sites_id_seq', 1, true);


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

