Q3-B
Script:

CREATE DATABASE dbname;

\c dbnamne;

CREATE TABLE users (
id INTEGER NOT NULL,
name VARCHAR(40) NOT NULL,
CONSTRAINT users_pk PRIMARY KEY (id)
);

CREATE TABLE comments (
id INTEGER NOT NULL,
id_user INTEGER NOT NULL,
text VARCHAR(400) NOT NULL,
CONSTRAINT comments_pk PRIMARY KEY (id, id_user)
);

ALTER TABLE comments ADD CONSTRAINT users_comments_fk
FOREIGN KEY (id_user)
REFERENCES users (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;