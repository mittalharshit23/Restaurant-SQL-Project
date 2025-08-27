INSERT INTO Customers (name, phone, email) VALUES
('Amit Sharma', '9876543210', 'amit@example.com'),
('Priya Verma', '9123456780', 'priya@example.com');

INSERT INTO Employees (name, role, salary) VALUES
('Ramesh', 'Waiter', 15000),
('Suresh', 'Chef', 25000),
('Anita', 'Manager', 40000);

INSERT INTO Menu (item_name, price) VALUES
('Veg Burger', 120.00),
('Chicken Pizza', 250.00),
('Pasta Alfredo', 180.00),
('Cold Coffee', 90.00);

INSERT INTO Orders (customer_id) VALUES
(1),
(2);

INSERT INTO Order_Items (order_id, item_id, quantity) VALUES
(1, 1, 2),
(1, 4, 1),
(2, 2, 1),
(2, 3, 2);

INSERT INTO Reservations (customer_id, reservation_date, table_no) VALUES
(1, '2025-08-30 19:00:00', 5),
(2, '2025-08-31 20:00:00', 3);

INSERT INTO Bills (order_id, customer_id, amount, payment_method) VALUES
(1, 1, 330.00, 'UPI'),
(2, 2, 610.00, 'Credit Card');
