
\restrict Kbr4VzPQI81aTrBvbqcEoDPHQ65w3rTrNkC9mJHehI6XfvmgDRoPDgl3evqerfz


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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body) VALUES ('5f49ae8d-7ccb-4554-9052-fa6fd23c5d39', 'Hello World', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.schema_migrations DISABLE TRIGGER ALL;

INSERT INTO public.schema_migrations (revision) VALUES (1757978454);


ALTER TABLE public.schema_migrations ENABLE TRIGGER ALL;


\unrestrict Kbr4VzPQI81aTrBvbqcEoDPHQ65w3rTrNkC9mJHehI6XfvmgDRoPDgl3evqerfz

