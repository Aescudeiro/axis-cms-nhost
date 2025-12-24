alter table "public"."page_contents"
  add constraint "page_contents_content_id_fkey"
  foreign key ("content_id")
  references "public"."contents"
  ("id") on update restrict on delete restrict;
