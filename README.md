# data-digger

Data Digger is a practical relational database project designed to demonstrate the fundamental concepts of SQL and database management in an E-Commerce environment. The project focuses on organizing customer, order, product, and order-related information into a structured database system.

The main purpose of this project is to gain practical experience with relational databases, data manipulation, relationships between tables, and SQL operations. It demonstrates how an E-Commerce system can store and manage information efficiently while maintaining data consistency and integrity.

The project is developed using a PostgreSQL relational database and follows a structured approach to database design. Different entities are separated into individual tables and connected through primary and foreign key relationships.

Project Objectives

The main objectives of the Data Digger project are:

1.To understand the fundamentals of relational database management.
2.To design a structured database for an E-Commerce environment.
3.To practice creating and managing database tables.
4.To understand the use of primary keys and foreign keys.
5.To perform basic data management operations.

Database Structure

The Data Digger project consists of four main relational tables:

1. Customers

The Customers table stores information about people who use the E-Commerce system.

It contains details such as:

1.Customer identification number
2.Customer name
3.Email address
4.Customer address

<img width="855" height="242" alt="Screenshot 2026-09-11 091027" src="https://github.com/user-attachments/assets/8ee44239-b4bf-49be-a353-a1aa46e52e09" />

Each customer is uniquely identified using a primary key. This ensures that every customer record has a unique identification value.

The customer information is also connected with order information, allowing the system to determine which customer has placed a particular order.

2. Orders

The Orders table stores information about customer orders.

It contains information such as:

1.Order identification number
2.Customer identification number
3.Date on which the order was placed
4.Total amount of the order

<img width="597" height="250" alt="Screenshot 2026-09-11 091730" src="https://github.com/user-attachments/assets/7a780568-802c-40b7-8127-a8d57d89e7bb" />

Each order has a unique identification number. The customer identification value connects an order with the appropriate customer.

This relationship allows the database to maintain a connection between customers and their orders.

3. Products

The Products table contains information about products available in the E-Commerce store.

It includes:

1.Product identification number
2.Product name
3.Product price
4.Available stock quantity

<img width="662" height="235" alt="Screenshot 2026-09-11 092623" src="https://github.com/user-attachments/assets/9090589c-af64-49e1-ae6a-c0d94e60467f" />

Each product has a unique identification number. The stock information can be used to determine whether a product is currently available or out of stock.

The product price information can also be used for sorting, filtering, and price-based analysis.

4. OrderDetails

The OrderDetails table stores detailed information about the products included in individual orders.

<img width="477" height="168" alt="image" src="https://github.com/user-attachments/assets/50de2163-faef-44d1-810b-69f372866500" />

It contains:

1.Order detail identification number
2.Order identification number
3.Product identification number
4.Quantity ordered
5.Subtotal amount

This table acts as a connection between the Orders and Products tables.

For example, one order can contain multiple products, and the OrderDetails table records which products belong to that order along with their quantities and subtotal values.

5.Database Relationships

<img width="1536" height="1024" alt="ChatGPT Image Sep 11, 2026, 10_22_21 AM" src="https://github.com/user-attachments/assets/9aa18c62-0bd1-4af5-a06f-8332f53e4d9f" />

6.Primary Keys

A Primary Key is a field that uniquely identifies each record in a table.

7.Foreign Keys

1.A Foreign Key is used to create a relationship between two tables.

2.The project uses foreign keys to maintain connections between related data.

3.The Orders table uses the customer identification value to connect with the Customers table.

4.The OrderDetails table uses order and product identification values to connect with the Orders and Products tables.

5.Foreign keys help maintain referential integrity, which means that related records must correspond to valid records in the referenced tables.

8.Data Management
<img width="1536" height="1024" alt="ChatGPT Image Sep 11, 2026, 10_26_10 AM" src="https://github.com/user-attachments/assets/3ac812ec-85e2-4802-b4cf-736978af275a" />

The project demonstrates the basic CRUD concept of database management.

CRUD represents:

1.Create – Adding new records to the database.
2.Read – Retrieving stored information.
3.Update – Modifying existing information.
4.Delete – Removing unwanted records.

These operations are essential for managing real-world database systems.

In this project, CRUD operations are demonstrated across customer, order, and product information.

9.Aggregate Functions

Aggregate functions are used to perform calculations on multiple records.

The project demonstrates the use of important aggregate functions such as:

<img width="577" height="107" alt="Screenshot 2026-09-11 091825" src="https://github.com/user-attachments/assets/d2f5ed8e-09da-4651-ab45-82d4bb9e35c4" />

1.SUM – Used to calculate a total value.
2.MAX – Used to identify the highest value.
3.MIN – Used to identify the lowest value.
4.AVG – Used to calculate an average value.
5.COUNT – Used to count records.

These functions help generate useful business information from the database.
10.Assumptions

The project is based on the following assumptions:

1.Each customer has a unique identification number.
2.Each order belongs to an existing customer.
3.Each product has a unique identification number.
4.An order can contain one or more products.
5.Order details maintain the quantity and subtotal for purchased products.
6.Product stock represents the currently available quantity.

11.Conclusion

Data Digger provides practical experience in designing and managing a relational database for an E-Commerce environment. The project demonstrates how different types of information can be organized into separate but connected tables.

By using customers, orders, products, and order details, the system represents a simplified real-world E-Commerce database. Primary keys and foreign keys maintain relationships and data integrity, while CRUD operations provide basic data management capabilities.

The use of filtering, sorting, aggregate functions, and table relationships allows the stored data to be transformed into useful information. Overall, this project provides a strong foundation for understanding SQL, relational database design, and practical database management.

<img width="855" height="242" alt="Screenshot 2026-09-11 091027" src="https://github.com/user-attachments/assets/55c98b5b-225c-4f9c-a650-51edd8e743ac" />
