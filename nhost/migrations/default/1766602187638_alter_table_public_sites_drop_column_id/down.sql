alter table "public"."sites" alter column "id" set default nextval('sites_id_seq'::regclass);
alter table "public"."sites" alter column "id" drop not null;
alter table "public"."sites" add column "id" int4;
