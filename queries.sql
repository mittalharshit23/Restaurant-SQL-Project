-- Show all reservations
SELECT c.name, r.table_no, r.reservation_date
FROM Reservations r
JOIN Customers c ON r.customer_id = c.customer_id;

-- Employee salary report
SELECT role, AVG(salary) AS avg_salary
FROM Employees
GROUP BY role;

-- Total revenue generated
SELECT SUM(amount) AS total_revenue FROM Bills;
