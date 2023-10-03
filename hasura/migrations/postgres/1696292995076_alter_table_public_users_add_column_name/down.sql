-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."users" add column "name" text
--  not null;
alter table "public"."users" drop column "name";
