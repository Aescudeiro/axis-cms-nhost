alter table "public"."organization_users" drop constraint "organization_users_user_id_fkey",
  add constraint "organization_users_id_fkey"
  foreign key ("id")
  references "auth"."users"
  ("id") on update restrict on delete restrict;
