CREATE DATABASE `catalog`
    WITH 
    OWNER = postgres
    
CREATE TABLE item (
	id INT GENERATED ALWAYS AS IDENTITY,
  publish_date DATE NOT NULL,
  archived BOOL default false,
  PRIMARY KEY(id)
);

CREATE TABLE music_album (
  id INT GENERATED ALWAYS AS IDENTITY,
  item_id INT,
  on_spotify BOOL NOT NULL,
  FOREIGN KEY(item_id) REFERENCES item(id)
);

CREATE TABLE genre (
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(20) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE games (
  id INT GENERATED ALWAYS AS IDENTITY,
  item_id INT,
  multiplayer BOOLEAN NOT NULL,
  last_played_at DATE NOT NULL,
  FOREIGN KEY (item_id) REFERENCES item(id),
  PRIMARY KEY (id)
);

CREATE TABLE author (
  id INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE books (
  id INT GENERATED ALWAYS AS IDENTITY,
  item_id INT,
  publisher VARCHAR(50) NOT NULL,
  cover_state VARCHAR(20) NOT NULL,
  FOREIGN KEY (item_id) REFERENCES item(id),
  PRIMARY KEY(id)
);

CREATE TABLE label (
  id INT GENERATED ALWAYS AS IDENTITY,
  title VARCHAR (50) NOT NULL,
  color VARCHAR (50) NOT NULL,
  PRIMARY KEY(id)
);