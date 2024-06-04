CREATE DATABASE trueTrade;

USE trueTrade;

CREATE TABLE stocks (
  stockNum integer PRIMARY KEY,
  companyName varchar(255),
  exchangeMarket varchar(255),
  description varchar(255)
);

CREATE TABLE customers (
  customerID integer PRIMARY KEY,
  name varchar(255),
  contact integer
);

CREATE TABLE portfolio (
  portfolioID integer,
  customerID integer,
  currentValue decimal,
  stockNum integer,
  FOREIGN KEY(customerID) REFERENCES customers,
  FOREIGN KEY(stockNum) REFERENCES stocks
);

CREATE TABLE logs (
  stockNum integer,
  openPrice decimal,
  closePrice decimal,
  date date,
  FOREIGN KEY(stockNum) REFERENCES stocks
);

CREATE TABLE transactions (
  customerID integer,
  portfolioID integer,
  stockNum integer,
  quantity integer,
  price decimal,
  date date,
  time timestamp,
  FOREIGN KEY(customerID) REFERENCES customers,
  FOREIGN KEY(portfolioID) REFERENCES portfolio,
  FOREIGN KEY(stockNum) REFERENCES stocks
);

CREATE TABLE portfolioStocks (
  stockNum integer,
  portfolioID integer,
  FOREIGN KEY(stockNum) REFERENCES stocks,
  FOREIGN KEY(porfolioID) REFERENCES portfolio
);

