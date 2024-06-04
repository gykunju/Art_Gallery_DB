DROP DATABASE IF EXISTS artGalleries;

CREATE DATABASE artGalleries;

USE artGalleries;


CREATE TABLE gallery (
  galleryNum int PRIMARY KEY,
  name varchar(255),
  phone integer,
  hours int,
  intro varchar(255),
  locationID integer,
  FOREIGN KEY(locationID) REFERENCES locations
);

CREATE TABLE locations (
  id int PRIMARY KEY,
  country varchar(255),
  state varchar(255),
  city varchar(255),
  street varchar(255),
  zipCode int
);

CREATE TABLE drawings (
  drawingNum integer PRIMARY KEY,
  size integer,
  material varchar(255),
  date date,
  galleryNum integer,
  artistNum integer,
  FOREIGN KEY(galleryNum) REFERENCES gallery,
  FOREIGN KEY(artistNum) REFERENCES artists
);

CREATE TABLE artists (
  artsistNum integer PRIMARY KEY,
  name varchar(255),
  phone integer,
  birthday date,
  email varchar(255),
  bioID integer,
  FOREIGN KEY(bioID) REFERENCES bioStatements
);

CREATE TABLE artistDrawing (
	artistNum integer,
	drawingNum integer,
    FOREIGN KEY(artistNum) REFERENCES artists,
    FOREIGN KEY(drawignNum) REFERENCES drawings
);

CREATE TABLE bioStatements (
  bioID int PRIMARY KEY,
  citizenship varchar(255),
  education varchar(255),
  experience varchar(255)
);

CREATE TABLE masterpieces (
	name varchar(255),
	bioID integer,
    PRIMARY KEY(name),
    FOREIGN KEY(bioID) REFERENCES bioStatements 
);


