--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16 (Debian 11.16-0+deb10u1)
-- Dumped by pg_dump version 11.16 (Debian 11.16-0+deb10u1)

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

DROP INDEX public.idx_settings_key;
ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_key_key;
DROP TABLE public.settings;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: tim03_lstmnk
--

CREATE TABLE public.settings (
    key text NOT NULL,
    value jsonb DEFAULT '{}'::jsonb NOT NULL,
    updated_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.settings OWNER TO tim03_lstmnk;

--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: tim03_lstmnk
--

COPY public.settings (key, value, updated_at) FROM stdin;
app.favicon_url	""	2022-08-16 00:16:41.627469+02
app.logo_url	""	2022-08-16 00:16:41.627469+02
app.concurrency	10	2022-08-16 00:16:41.627469+02
app.message_rate	10	2022-08-16 00:16:41.627469+02
app.batch_size	1000	2022-08-16 00:16:41.627469+02
app.max_send_errors	1000	2022-08-16 00:16:41.627469+02
app.message_sliding_window	false	2022-08-16 00:16:41.627469+02
app.message_sliding_window_duration	"1h"	2022-08-16 00:16:41.627469+02
app.message_sliding_window_rate	10000	2022-08-16 00:16:41.627469+02
app.enable_public_subscription_page	true	2022-08-16 00:16:41.627469+02
app.send_optin_confirmation	true	2022-08-16 00:16:41.627469+02
app.check_updates	true	2022-08-16 00:16:41.627469+02
app.lang	"en"	2022-08-16 00:16:41.627469+02
privacy.individual_tracking	false	2022-08-16 00:16:41.627469+02
privacy.unsubscribe_header	true	2022-08-16 00:16:41.627469+02
privacy.allow_blocklist	true	2022-08-16 00:16:41.627469+02
privacy.allow_export	true	2022-08-16 00:16:41.627469+02
privacy.allow_wipe	true	2022-08-16 00:16:41.627469+02
privacy.exportable	["profile", "subscriptions", "campaign_views", "link_clicks"]	2022-08-16 00:16:41.627469+02
privacy.domain_blocklist	[]	2022-08-16 00:16:41.627469+02
upload.provider	"filesystem"	2022-08-16 00:16:41.627469+02
upload.filesystem.upload_path	"uploads"	2022-08-16 00:16:41.627469+02
upload.filesystem.upload_uri	"/uploads"	2022-08-16 00:16:41.627469+02
upload.s3.url	"https://ap-south-1.s3.amazonaws.com"	2022-08-16 00:16:41.627469+02
upload.s3.public_url	""	2022-08-16 00:16:41.627469+02
upload.s3.aws_access_key_id	""	2022-08-16 00:16:41.627469+02
upload.s3.aws_secret_access_key	""	2022-08-16 00:16:41.627469+02
upload.s3.aws_default_region	"ap-south-1"	2022-08-16 00:16:41.627469+02
upload.s3.bucket	""	2022-08-16 00:16:41.627469+02
upload.s3.bucket_domain	""	2022-08-16 00:16:41.627469+02
upload.s3.bucket_path	"/"	2022-08-16 00:16:41.627469+02
upload.s3.bucket_type	"public"	2022-08-16 00:16:41.627469+02
upload.s3.expiry	"14d"	2022-08-16 00:16:41.627469+02
smtp	[{"host": "{{pac}}.hostsharing.net", "port": 4025, "enabled": true, "password": "{{password}}", "tls_type": "STARTTLS", "username": "{{pac}}-{{user}}", "max_conns": 10, "idle_timeout": "15s", "wait_timeout": "5s", "auth_protocol": "login", "email_headers": [], "hello_hostname": "", "max_msg_retries": 2, "tls_skip_verify": false}, {"host": "smtp.gmail.com", "port": 465, "enabled": false, "password": "password", "tls_type": "TLS", "username": "username@gmail.com", "max_conns": 10, "idle_timeout": "15s", "wait_timeout": "5s", "auth_protocol": "login", "email_headers": [], "hello_hostname": "", "max_msg_retries": 2, "tls_skip_verify": false}]	2022-08-16 00:16:41.627469+02
messengers	[]	2022-08-16 00:16:41.627469+02
bounce.enabled	false	2022-08-16 00:16:41.627469+02
bounce.webhooks_enabled	false	2022-08-16 00:16:41.627469+02
bounce.count	2	2022-08-16 00:16:41.627469+02
bounce.action	"blocklist"	2022-08-16 00:16:41.627469+02
bounce.ses_enabled	false	2022-08-16 00:16:41.627469+02
bounce.sendgrid_enabled	false	2022-08-16 00:16:41.627469+02
bounce.sendgrid_key	""	2022-08-16 00:16:41.627469+02
bounce.mailboxes	[{"host": "{{pac}}.hostsharing.net", "port": 995, "type": "pop", "enabled": false, "password": "{{password}}", "username": "{{pac}}-{{user}}", "return_path": "bounce@{{domain}}", "tls_enabled": true, "auth_protocol": "userpass", "scan_interval": "15m", "tls_skip_verify": false}]	2022-08-16 00:16:41.627469+02
appearance.admin.custom_css	""	2022-08-16 00:16:41.627469+02
appearance.admin.custom_js	""	2022-08-16 00:16:41.627469+02
appearance.public.custom_css	""	2022-08-16 00:16:41.627469+02
appearance.public.custom_js	""	2022-08-16 00:16:41.627469+02
migrations	["v{{listmonk_version}}"]	2022-08-16 00:16:41.746+02
app.root_url	"https://{{domain}}"	2022-08-16 00:16:41.627469+02
app.from_email	"listmonk <noreply@{{domain}}>"	2022-08-16 00:16:41.627469+02
app.notify_emails	["{{admin_email}}"]	2022-08-16 00:16:41.627469+02
\.


--
-- Name: settings settings_key_key; Type: CONSTRAINT; Schema: public; Owner: tim03_lstmnk
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_key_key UNIQUE (key);


--
-- Name: idx_settings_key; Type: INDEX; Schema: public; Owner: tim03_lstmnk
--

CREATE INDEX idx_settings_key ON public.settings USING btree (key);


--
-- PostgreSQL database dump complete
--
