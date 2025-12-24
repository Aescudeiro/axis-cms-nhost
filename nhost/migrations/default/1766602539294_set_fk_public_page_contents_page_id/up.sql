alter table "public"."page_contents"
  add constraint "page_contents_page_id_fkey"
  foreign key ("page_id")
  references "public"."pages"
  ("id") on update restrict on delete restrict;
