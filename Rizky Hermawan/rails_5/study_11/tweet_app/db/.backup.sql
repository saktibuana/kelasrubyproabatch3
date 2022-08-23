PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20170427063848');
INSERT INTO schema_migrations VALUES('20170515060224');
INSERT INTO schema_migrations VALUES('20170526082243');
INSERT INTO schema_migrations VALUES('20170607073838');
INSERT INTO schema_migrations VALUES('20220818151731');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
INSERT INTO posts VALUES(1,'Looking for a good book to read.','2017-03-31 05:24:15.529063','2017-03-31 05:24:15.529063',1);
INSERT INTO posts VALUES(2,'Today''s lunch was great!','2017-03-31 05:24:32.004378','2017-03-31 05:24:32.004378',2);
INSERT INTO posts VALUES(3,'Master Wooly taught me how to use Git! Now I can teach my little brother Ben.','2017-03-31 06:00:32.004378','2017-03-31 06:00:32.004378',1);
INSERT INTO posts VALUES(4,'My brother Ken is studying so hard! Apparently he wants to become an engineer. Maybe I should also give it a shot.','2017-04-15 07:24:32.004378','2017-03-31 07:24:32.004378',3);
INSERT INTO posts VALUES(5,'Learning to code on Progate. I just completed Rails/Study/3!','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378',4);
INSERT INTO posts VALUES(6,'I went to a programming workshop at Progate! Learned so much & got a really cute sticker :)','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378',5);
INSERT INTO posts VALUES(7,'Almost done with our TweetApp!','2017-06-01 02:32:59.458984','2017-06-01 02:32:59.458984',1);
CREATE TABLE IF NOT EXISTS "likes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "post_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO likes VALUES(1,1,2,'2017-06-15 11:08:17.693706','2017-06-15 11:08:17.693706');
INSERT INTO likes VALUES(2,1,4,'2017-06-23 02:55:59.682026','2017-06-23 02:55:59.682026');
INSERT INTO likes VALUES(3,1,5,'2017-06-23 02:56:19.331528','2017-06-23 02:56:19.331528');
INSERT INTO likes VALUES(4,1,6,'2017-06-23 02:56:26.741958','2017-06-23 02:56:26.741958');
INSERT INTO likes VALUES(5,2,7,'2017-06-23 02:57:59.387263','2017-06-23 02:57:59.387263');
INSERT INTO likes VALUES(6,2,5,'2017-06-23 02:58:05.392782','2017-06-23 02:58:05.392782');
INSERT INTO likes VALUES(7,2,3,'2017-06-23 02:58:14.214305','2017-06-23 02:58:14.214305');
INSERT INTO likes VALUES(8,2,6,'2017-06-23 02:58:19.997630','2017-06-23 02:58:19.997630');
INSERT INTO likes VALUES(9,3,7,'2017-06-23 02:58:47.299819','2017-06-23 02:58:47.299819');
INSERT INTO likes VALUES(10,3,5,'2017-06-23 02:58:59.211449','2017-06-23 02:58:59.211449');
INSERT INTO likes VALUES(11,3,3,'2017-06-23 02:59:08.061375','2017-06-23 02:59:08.061375');
INSERT INTO likes VALUES(12,3,1,'2017-06-23 02:59:16.910039','2017-06-23 02:59:16.910039');
INSERT INTO likes VALUES(13,3,2,'2017-06-23 02:59:22.134075','2017-06-23 02:59:22.134075');
INSERT INTO likes VALUES(14,5,7,'2017-06-23 02:59:42.179684','2017-06-23 02:59:42.179684');
INSERT INTO likes VALUES(15,5,4,'2017-06-23 02:59:49.338710','2017-06-23 02:59:49.338710');
INSERT INTO likes VALUES(16,5,6,'2017-06-23 03:00:06.638632','2017-06-23 03:00:06.638632');
INSERT INTO likes VALUES(17,5,3,'2017-06-23 03:00:12.878890','2017-06-23 03:00:12.878890');
INSERT INTO likes VALUES(18,5,1,'2017-06-23 03:00:28.501397','2017-06-23 03:00:28.501397');
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password_digest" varchar);
INSERT INTO users VALUES(1,'Ken the Ninja','ken@prog-8.com','2017-04-18 08:06:52.739295','2022-08-18 15:22:27.465697','default_user.jpg','$2a$10$czLubpUVHm9aSHzzAGI3WOeOC39V9imn2sWa5uihTEc8e59w8.cFq');
INSERT INTO users VALUES(2,'Master Wooly','master@prog-8.com','2017-04-18 11:23:07.328713','2017-04-18 11:23:07.328713','2.jpg',NULL);
INSERT INTO users VALUES(3,'Ben the Baby Ninja','ben@prog-8.com','2017-04-18 12:23:07.328713','2017-04-18 12:23:07.328713','3.jpg',NULL);
INSERT INTO users VALUES(4,'Mike','mike@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','4.jpg',NULL);
INSERT INTO users VALUES(5,'Kate','kate@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','5.jpg',NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',7);
INSERT INTO sqlite_sequence VALUES('likes',18);
INSERT INTO sqlite_sequence VALUES('users',5);
COMMIT;
