# 🍴 Restaurant Management System (SQL Project)

## 📌 Overview
This project simulates a **restaurant management system** using SQL.  
It includes database schema design, sample data, and queries for:  
- Managing customers  
- Handling food orders & billing  
- Tracking employees & reservations  
- Generating restaurant reports  

---

## 🛠️ Tech Stack
- **Database**: MySQL / PostgreSQL  
- **Tools**: MySQL Workbench, pgAdmin  
- **Concepts**: Joins, Aggregate Queries, Foreign Keys, Normalization  

---

## 📂 Files
- `schema.sql` → Creates database tables  
- `data.sql` → Inserts sample records  
- `queries.sql` → Example queries & reports  

---

## 🗄️ Database Schema
**Tables:**
1. `Customers` – Stores customer details  
2. `Employees` – Staff info (waiters, chefs, managers)  
3. `Menu` – Food items with price  
4. `Orders` – Customer orders  
5. `Order_Items` – Order details (items & quantities)  
6. `Reservations` – Table booking info  
7. `Bills` – Billing and payments  

---

## 🔍 Example Queries
```sql

SELECT c.name, SUM(b.amount) AS total_spent
FROM Customers c
JOIN Bills b ON c.customer_id = b.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;


SELECT DATE(order_date) AS day, SUM(amount) AS revenue
FROM Bills
GROUP BY day
ORDER BY day;


SELECT m.item_name, COUNT(oi.item_id) AS total_orders
FROM Order_Items oi
JOIN Menu m ON oi.item_id = m.item_id
GROUP BY m.item_name
ORDER BY total_orders DESC
LIMIT 1;

