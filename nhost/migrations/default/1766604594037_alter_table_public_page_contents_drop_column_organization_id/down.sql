alter table "public"."page_contents" alter column "organization_id" drop not null;
alter table "public"."page_contents" add column "organization_id" uuid;
