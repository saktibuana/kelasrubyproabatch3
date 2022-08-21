PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20170427063848');
INSERT INTO schema_migrations VALUES('20220821064930');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO posts VALUES(1,'Looking for a good book to read.','2017-03-31 05:24:15.529063','2017-03-31 05:24:15.529063');
INSERT INTO posts VALUES(2,'Today''s lunch was great!','2017-03-31 05:24:32.004378','2017-03-31 05:24:32.004378');
INSERT INTO posts VALUES(3,'Master Wooly taught me how to use Git! Now I can teach my little brother Ben.','2017-03-31 06:00:32.004378','2017-03-31 06:00:32.004378');
INSERT INTO posts VALUES(4,'My brother Ken is studying so hard! Apparently he wants to become an engineer. Maybe I should also give it a shot.','2017-04-15 07:24:32.004378','2017-03-31 07:24:32.004378');
INSERT INTO posts VALUES(5,'Learning to code on Progate. I just completed Rails/Study/3!','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378');
INSERT INTO posts VALUES(6,'I went to a programming workshop at Progate! Learned so much & got a really cute sticker :)','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378');
INSERT INTO posts VALUES(7,'Almost done with our TweetApp!','2017-06-01 02:32:59.458984','2017-06-01 02:32:59.458984');
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password" varchar);
INSERT INTO users VALUES(1,'Ken the Ninja','ken@prog-8.com','2017-04-18 08:06:52.739295','2022-08-21 06:52:08.813339','default_user.jpg','Some Password');
INSERT INTO users VALUES(2,'Master Wooly','master@prog-8.com','2017-04-18 11:23:07.328713','2017-04-18 11:23:07.328713','2.jpg',NULL);
INSERT INTO users VALUES(3,'Ben the Baby Ninja','ben@prog-8.com','2017-04-18 12:23:07.328713','2017-04-18 12:23:07.328713','3.jpg',NULL);
INSERT INTO users VALUES(4,'Mike','mike@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','4.jpg',NULL);
INSERT INTO users VALUES(5,'Kate','kate@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','5.jpg',NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',7);
INSERT INTO sqlite_sequence VALUES('users',5);
COMMIT;
