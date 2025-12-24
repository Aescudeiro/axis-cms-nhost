alter table "public"."pages"
  add constraint "pages_organization_id_fkey"
  foreign key ("organization_id")
  references "public"."organizations"
  ("id") on update restrict on delete restrict;
