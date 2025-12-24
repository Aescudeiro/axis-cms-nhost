alter table "public"."pages" alter column "organization_id" drop not null;
alter table "public"."pages" add column "organization_id" uuid;
