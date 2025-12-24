CREATE TABLE "public"."page_contents" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "page_id" uuid NOT NULL, "content_id" uuid NOT NULL, "order" integer NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
