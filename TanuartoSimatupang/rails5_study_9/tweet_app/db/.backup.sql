PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20170427063848');
INSERT INTO schema_migrations VALUES('20170515060224');
INSERT INTO schema_migrations VALUES('20220823080100');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
INSERT INTO posts VALUES(1,'Test','2022-08-23 08:07:36.459111','2022-08-23 08:07:36.459111',1);
INSERT INTO posts VALUES(2,'I love coding','2022-08-23 08:15:18.978783','2022-08-23 08:15:18.978783',1);
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password" varchar);
INSERT INTO users VALUES(1,'Ken the Ninja','ken@prog-8.com','2017-04-18 08:06:52.739295','2017-04-18 08:06:52.739295','default_user.jpg','ninja0310');
INSERT INTO users VALUES(2,'Master Wooly','master@prog-8.com','2017-04-18 11:23:07.328713','2017-04-18 11:23:07.328713','2.jpg','master0919');
INSERT INTO users VALUES(3,'Ben the Baby Ninja','ben@prog-8.com','2017-04-18 12:23:07.328713','2017-04-18 12:23:07.328713','3.jpg','ben0507');
INSERT INTO users VALUES(4,'Mike','mike@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','4.jpg','mike0510');
INSERT INTO users VALUES(5,'Kate','kate@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','5.jpg','kate0513');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('users',5);
INSERT INTO sqlite_sequence VALUES('posts',2);
COMMIT;
