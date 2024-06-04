# DB Creation

# 1. Art Gallery Database(Galleries.sql)
Designed to fit an art gallery chain.

## 1. Business Understanding
The specific art gallery chain has numerous branches in different locations.
The galleries have numerous drawings but each with unique pieces.
The drawings belong to artists 

## 2. Modelling
This is the breakdown of the model image of the database to be created.

![Galleries (1)](https://github.com/gykunju/DB_Creation_Module/assets/126544062/41432be3-8287-4a0e-a6bd-ec4d90ee22c5)

The model was created using [db diagram](https://www.dbdiagram.io/)

## 3. Physical Model
The database has 7 tables with 4 main entities namely:
1. <b>gallery</b>
2. <b>locations</b>
3. <b>drawings</b>
4. <b>artists</b>

And 3 weak entities:
1. <b>bioStatements</b>
2. <b>artistDrawing</b>
3. <b>masterpieces</b>

# 2. Pizza Hot Database (PizzaHot.sql)
Designed to fit a pizza restaurant chain.

## 1. Business Understanding
The pizza restaurant chain has several stores, each with employees, products, and vendor relationships. Each store sells a variety of products provided by various vendors.

## 2. Modelling
This is the breakdown of the model image of the database to be created.

 (![PizzaHot](https://github.com/gykunju/DB_Creation_Module/assets/126544062/d5ff2bd4-a437-4cd7-bac8-9ca2e55b779c)

The model was created using db diagram

## 3. Physical Model
The database has 5 tables with 4 main entities namely:
1. <b>stores</b>
2. <b>employees</b>
3. <b>products</b>
4. <b>Vendors</b>

And 1 weak entities:
1. <b>storesProducts</b>



# 3. True Trade Database (TrueTrade.sql)
Designed to fit a stock trading business.

## 1. Business Understanding
The stock trading business involves tracking stock information, customer portfolios, transaction records, and stock performance logs.

# 2. Modelling
This is the breakdown of the model image of the database to be created.

![TrueTrade](https://github.com/gykunju/DB_Creation_Module/assets/126544062/cfc29e9c-38b2-48ba-aaf4-c7a4489fd51b)


The model was created using [db diagram](https://www.dbdiagram.io/)

3. Physical Model
The database has 6 tables with 4 main entities namely:
1. <b>stocks</b>
2. <b>customers</b>
3. <b>porfolio</b>
4. <b>transactions</b>

And 2 weak entities:
1. <b>logs</b>
2. <b>portfolioStocks</b>

