# data-digger

# 🗄️ Data Digger — E-Commerce Database Management System

**Data Digger** is a structured relational database project designed to demonstrate the core concepts of Relational Database Management Systems (RDBMS) in an E-Commerce environment. The system models a digital marketplace by systematically organizing customer data, product catalogs, transactional orders, and line-item details.

---

## 📌 Project Overview

In a modern E-Commerce ecosystem, managing transactional data efficiently is critical for maintaining order processing accuracy, tracking inventory levels, and generating business intelligence. **Data Digger** structures raw business information into normalized entities to prevent data redundancy and maintain strong referential integrity.

### Key Objectives
* **Relational Schema Design:** Structure complex E-Commerce entities into individual normalized tables.
* **Data Integrity & Relationships:** Establish parent-child links using Primary Keys and Foreign Keys.
* **Core Operations:** Demonstrate data life cycle management through CRUD (Create, Read, Update, Delete) operations.
* **Business Analytics:** Execute aggregate computations to generate key business performance indicators.

---

## 🗂️ Core Database Architecture & Tables

The database model consists of four core relational tables:

### 1. Customers Table
Stores identity, demographic, and contact information for shoppers registered on the platform.
* **Key Attributes:** Customer Identifier, Customer Name, Email Address, Physical Address.
* **Role:** Uniquely identifies users and forms the primary entity for tracking purchase histories.

<p align="center">
  <img width="850" alt="Customers Table Overview" src="https://github.com/user-attachments/assets/8ee44239-b4bf-49be-a353-a1aa46e52e09" />
</p>

---

### 2. Orders Table
Captures high-level transaction data for every purchase placed on the platform.
* **Key Attributes:** Order Identifier, Customer Identifier (Foreign Key), Order Placement Date, Total Transaction Amount.
* **Role:** Links financial transactions back to specific customers while tracking order timestamps and total spend.

<p align="center">
  <img width="600" alt="Orders Table Overview" src="https://github.com/user-attachments/assets/7a780568-802c-40b7-8127-a8d57d89e7bb" />
</p>

---

### 3. Products Table
Maintains the inventory catalog of available items in the store.
* **Key Attributes:** Product Identifier, Product Name, Unit Price, Stock Quantity.
* **Role:** Monitors live inventory stock levels, item pricing, and product catalog availability.

<p align="center">
  <img width="650" alt="Products Table Overview" src="https://github.com/user-attachments/assets/9090589c-af64-49e1-ae6a-c0d94e60467f" />
</p>

---

### 4. OrderDetails Table
Functions as a junction (bridge) table resolving the many-to-many relationship between `Orders` and `Products`.
* **Key Attributes:** Detail Identifier, Order Identifier (Foreign Key), Product Identifier (Foreign Key), Quantity Ordered, Subtotal Amount.
* **Role:** Captures individual line items within an order, permitting single orders to hold multiple products with unique quantities.

<p align="center">
  <img width="500" alt="OrderDetails Table Overview" src="https://github.com/user-attachments/assets/50de2163-faef-44d1-810b-69f372866500" />
</p>

---

## 🔗 Entity Relationships & Integrity Constraints

<p align="center">
  <img width="850" alt="Entity Relationship Diagram" src="https://github.com/user-attachments/assets/9aa18c62-0bd1-4af5-a06f-8332f53e4d9f" />
</p>

### Key Principles Applied:
* **Primary Keys:** Ensure that every entity row possesses a unique, immutable identifier preventing duplicate entries.
* **Foreign Keys:** Enforce referential integrity constraints across the database:
  * An order cannot exist without referencing a valid `CustomerID`.
  * Order line items in `OrderDetails` must reference existing `OrderID` and `ProductID` records.
* **Referential Integrity:** Guarantees that deleting or modifying records across tables maintains logical system stability without creating orphaned records.

---

## ⚙️ Data Management & Workflow Operations

<p align="center">
  <img width="850" alt="Data Flow Operations" src="https://github.com/user-attachments/assets/3ac812ec-85e2-4802-b4cf-736978af275a" />
</p>

The project covers complete **CRUD** lifecycle management:

* **Create (Insert):** Onboarding new customers, adding catalog products, and generating order records.
* **Read (Select):** Retrieving customer order histories, filtering high-value items, and joining tables for consolidated reports.
* **Update (Modify):** Adjusting stock counts after purchases, updating customer profile details, or revising order values.
* **Delete (Remove):** Clearing inactive records or out-of-stock items while preserving foreign key dependencies.

---

## 📊 Business Intelligence & Aggregate Analytics

<p align="center">
  <img width="600" alt="Aggregate Analytics" src="https://github.com/user-attachments/assets/d2f5ed8e-09da-4651-ab45-82d4bb9e35c4" />
</p>

The system leverages mathematical aggregate functions to extract actionable insights from raw relational data:

* **`SUM`:** Computes gross platform revenue across order subtotals.
* **`AVG`:** Determines average order spend and item pricing averages.
* **`MAX` / `MIN`:** Identifies peak order values, cheapest items, and highest price points in the catalog.
* **`COUNT`:** Measures operational metrics such as product sales frequencies and total order volume.

---

## 📌 Domain Assumptions

1. Every customer is assigned a unique system ID upon registration.
2. An order must belong to a pre-existing, valid customer.
3. Every catalog item maintains distinct unit pricing and real-time stock levels.
4. An individual order can contain multiple unique products with individual line-item subtotals.

---

## 💡 Conclusion

The **Data Digger** database project illustrates how relational database architecture converts raw operational data into structured, meaningful business insights. By applying primary and foreign key constraints, normalized schema design, and aggregate computation, the model serves as a foundation for scalable E-Commerce transaction platforms.
