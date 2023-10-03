-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."users" add column "age" integer
--  not null default '0';
alter table "public"."users" drop column "age";

