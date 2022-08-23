PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20220808142537');
INSERT INTO schema_migrations VALUES('20220808145652');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO posts VALUES(1,'I wonder what I should read next...','2017-03-31 05:24:15.529063','2017-03-31 05:24:15.529063');
INSERT INTO posts VALUES(2,'Lunch was delicious today!','2017-03-31 05:24:32.004378','2017-03-31 05:24:32.004378');
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password" varchar);
INSERT INTO users VALUES(2,'Ken Ninja','ken@prog-8.com','2022-08-08 14:42:51.310445','2022-08-08 15:14:52.367517','2.jpg','123456789');
INSERT INTO users VALUES(3,'Rizky Hermawan','rhermawan@gmail.com','2022-08-08 15:42:48.896421','2022-08-08 15:43:27.827599','3.jpg','123');
INSERT INTO users VALUES(4,'Rizky Hermawan','rhermawan56@gmail.com','2022-08-08 16:02:47.808942','2022-08-08 16:02:47.808942','default_user.jpg','123');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',4);
INSERT INTO sqlite_sequence VALUES('users',4);
COMMIT;
