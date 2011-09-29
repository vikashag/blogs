CREATE TABLE "categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "catName" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "commenter" varchar(255), "body" text, "post_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "title" varchar(255), "content" text, "created_at" datetime, "updated_at" datetime, "category_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255), "password_hash" varchar(255), "password_salt" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_comments_on_post_id" ON "comments" ("post_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20110920125634');

INSERT INTO schema_migrations (version) VALUES ('20110920140717');

INSERT INTO schema_migrations (version) VALUES ('20110921080520');

INSERT INTO schema_migrations (version) VALUES ('20110923073208');

INSERT INTO schema_migrations (version) VALUES ('20110923081853');