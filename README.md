Homework. Amazon.
=================

### Business logic structure:

#### Book

* Should contain title, descirption, price and how many books in stock
* Should belong to author and category
* Should have many ratings from costomers

#### Category

* Has a title
* Should have many books

#### Author

* Should contain firstname, lastname, photo, biography
* Should have many books

#### Rating

* Should contain text review and rating number from one to ten
* Should belong to customer and book

#### Customer

* Should contain email, password, firstname, lastname
* Should have many orders

#### Order

* Should contain total price, completed date and state (in progress/complited/shipped)
* Should belong to customer
* Should have one billing address and one shipping address

#### OrderItem

* Should contain price and quantity
* Should belong to book and order

#### Address

* Should contain address, zipcode, city, phone, country

#### Country

* Should contain a name

#### CreditCard

* Should contain number, CVV, expiration month, expiration year, firstname, lastname
* Should belong to customer and have many orders

### MVP

* As a customer I should be able to order a book if it's exist in the stock
* As a customer I should be able to rate a book and add my comments. But only once and for book what I ordered.
