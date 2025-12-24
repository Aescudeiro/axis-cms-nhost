CREATE TABLE "public"."sites" ("id" serial NOT NULL, "updated_at" timestamptz NOT NULL DEFAULT now(), "created_at" timestamptz NOT NULL DEFAULT now(), "organization_id" uuid NOT NULL, "name" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("organization_id") REFERENCES "public"."organizations"("id") ON UPDATE restrict ON DELETE restrict);
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_sites_updated_at"
BEFORE UPDATE ON "public"."sites"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_sites_updated_at" ON "public"."sites"
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
