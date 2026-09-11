# data-digger

# 🗄️ Data Digger — E-Commerce Database Management System

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![Database](https://img.shields.io/badge/Database-Design-blue?style=for-the-badge)

**Data Digger** is an enterprise-grade relational database design developed to demonstrate core principles of Relational Database Management Systems (RDBMS) within an E-Commerce domain. The system models an online marketplace by structuring customer data, inventory catalogs, orders, and transactional line items into normalized tables.

---

## 📌 Project Overview & Purpose

In a modern digital marketplace, maintaining data consistency, preventing redundancy, and extracting real-time business insights are critical. **Data Digger** establishes a normalized relational architecture that ensures data integrity while supporting scalable transaction processing.

### Key Learning & Architectural Objectives:
* **Relational Schema Design:** Structuring dynamic E-Commerce entities into 3rd Normal Form (3NF) tables.
* **Integrity Constraints:** Enforcing structural rules using Primary Keys (PK), Foreign Keys (FK), and NOT NULL constraints.
* **Data Lifecycle Operations:** Demonstrating complete CRUD (Create, Read, Update, Delete) transactional dynamics.
* **Business Intelligence Analytics:** Applying aggregate expressions to compute platform sales metrics and operational summaries.

---

## 🧠 Core Relational Database Concepts Covered

* **Database Normalization (3NF):** Elimination of insertion, update, and deletion anomalies by separating entity data into atomic tables.
* **Referential Integrity:** Enforcing strict parent-child logical links across entities using foreign keys.
* **ACID Compliance Principles:** Ensuring transaction processing reliability, consistency, and structural durability.
* **Aggregate Data Analysis:** Generating business metrics using grouped queries and summary metrics.

---

## 🗂️ Database Schema Architecture

The architecture consists of **four primary entities** connected through relational mappings:

<p align="center">
  <img width="850" alt="Entity Relationship Diagram" src="https://github.com/user-attachments/assets/9aa18c62-0bd1-4af5-a06f-8332f53e4d9f" />
</p>

---

### 📋 Detailed Entity Specifications

#### 1. Customers Entity
Stores identity, demographic, and contact profiles for shoppers registered on the platform.

| Attribute | Field Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| `CustomerID` | Integer | Primary Key | Unique identification number for each user. |
| `Name` | String (100) | Required | Full registered name of the customer. |
| `Email` | String (100) | Unique, Required | Primary contact and authentication address. |
| `Address` | String (200) | Optional | Physical location for order fulfillment. |

<p align="center">
  <img width="850" alt="Customers Table Schema" src="https://github.com/user-attachments/assets/8ee44239-b4bf-49be-a353-a1aa46e52e09" />
</p>

---

#### 2. Orders Entity
Captures transactional metadata for every checkout session completed on the platform.

| Attribute | Field Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| `OrderID` | Integer | Primary Key | Unique transaction invoice number. |
| `CustomerID` | Integer | Foreign Key | References `Customers(CustomerID)`. |
| `OrderDate` | Date | Required | Timestamp of purchase completion. |
| `TotalAmount` | Decimal (10,2) | Required | Total financial value of the order. |

<p align="center">
  <img width="600" alt="Orders Table Schema" src="https://github.com/user-attachments/assets/7a780568-802c-40b7-8127-a8d57d89e7bb" />
</p>

---

#### 3. Products Entity
Maintains active store inventory, unit pricing, and stock status.

| Attribute | Field Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| `ProductID` | Integer | Primary Key | Unique catalog item number. |
| `ProductName` | String (100) | Required | Commercial title of the product. |
| `Price` | Decimal (10,2) | Required | Standard retail price per unit. |
| `Stock` | Integer | Default 0 | Current quantity available in warehouse. |

<p align="center">
  <img width="650" alt="Products Table Schema" src="https://github.com/user-attachments/assets/9090589c-af64-49e1-ae6a-c0d94e60467f" />
</p>

---

#### 4. OrderDetails Entity (Junction Table)
Resolves the **Many-to-Many (N:M)** relationship between `Orders` and `Products`.

| Attribute | Field Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| `OrderDetailID` | Integer | Primary Key | Unique line-item identifier. |
| `OrderID` | Integer | Foreign Key | References `Orders(OrderID)`. |
| `ProductID` | Integer | Foreign Key | References `Products(ProductID)`. |
| `Quantity` | Integer | Required | Number of units purchased. |
| `SubTotal` | Decimal (10,2) | Computed | Computed total price (`Price × Quantity`). |

<p align="center">
  <img width="500" alt="OrderDetails Table Schema" src="url?id=1user-attachments/assets/50de2163-faef-44d1-810b-69f372866500" />
</p>

---

## ⚙️ Data Management Lifecycle (CRUD Patterns)

<p align="center">
  <img width="850" alt="CRUD Architecture Lifecycle" src="https://github.com/user-attachments/assets/3ac812ec-85e2-4802-b4cf-736978af275a" />
</p>

1. **Create (Data Insertion):** Onboarding customer accounts, inserting inventory items, and logging new orders.
2. **Read (Data Retrieval):** Fetching purchase logs, filtering catalog items by price ranges, and combining data via relational JOINS.
3. **Update (Data Modification):** Adjusting stock counts following sales, changing user contact info, or updating item prices.
4. **Delete (Data Removal):** Clearing discontinued products or inactive user accounts while upholding referential integrity rules.

---

## 📊 Business Intelligence & Analytics Model

<p align="center">
  <img width="600" alt="Aggregate Analytics Engine" src="https://github.com/user-attachments/assets/d2f5ed8e-09da-4651-ab45-82d4bb9e35c4" />
</p>

The transactional data enables essential reporting metrics:

* **Gross Platform Revenue (`SUM`):** Accumulates line-item subtotals across all transactions.
* **Average Basket Value (`AVG`):** Evaluates mean customer spend per order session.
* **Pricing Extrema (`MAX` / `MIN`):** Identifies highest-value orders and entry-level catalog pricing.
* **Sales Frequency (`COUNT`):** Tracks volume counts to pinpoint high-demand catalog items.

---

## 🏬 Real-World Applications

* **E-Commerce Order Management Systems (OMS)**
* **Inventory Control & Warehouse Tracking**
* **Customer Relationship Management (CRM) Data Pipeline**
* **Business Intelligence & Sales Reporting Analytics**

---

## 📌 Domain Assumptions

1. Every customer account possesses a unique primary identifier.
2. An order cannot exist without referencing a valid, pre-registered customer.
3. Catalog stock levels dynamically reflect item availability.
4. An individual transaction can incorporate multiple line-item products.

---

## 💡 Conclusion

The **Data Digger** framework demonstrates how relational schema engineering converts raw platform interactions into organized, accessible business insights. By applying foreign key dependencies, normalization standardizations, and aggregate reporting capabilities, this architecture serves as a scalable model for enterprise database systems.
