CREATE DATABASE pizzaHot;

USE pizzaHot;

CREATE TABLE stores (
  storeID integer PRIMARY KEY,
  name varchar(255),
  location varchar(255),
  contactInfo varchar(255)
);

CREATE TABLE employees (
  employeeID integer PRIMARY KEY,
  SSN varchar(255),
  name varchar(255),
  gender varchar(255),
  DOB date,
  position varchar(255),
  salary decimal(10,2),
  affiliateStore integer,
  FOREIGN KEY(affiliateStore) REFERENCES stores
);

CREATE TABLE Vendors (
  name varchar(255) PRIMARY KEY,
  address varchar(255),
  contactPerson varchar(255),
  productName varchar(255),
  FOREIGN KEY(productName) REFERENCES products
);

CREATE TABLE products (
  name varchar(255) PRIMARY KEY,
  vendor integer,
  price decimal(10,2),
  quantity integer
);

CREATE TABLE storesProducts (
  storeID integer,
  productName varchar(255),
  FOREIGN KEY(storeID) REFERENCES stores,
  FOREIGN KEY(productName) REFERENCES products
);

