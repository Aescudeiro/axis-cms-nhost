alter table "public"."page_contents"
  add constraint "page_contents_organization_id_fkey"
  foreign key ("organization_id")
  references "public"."organizations"
  ("id") on update restrict on delete restrict;
