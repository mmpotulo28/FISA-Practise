-- Active: 1730831496897@@localhost@3306

-- Insert records into items table
INSERT INTO items (name, description, price, image, category, quantity, created_at, updated_at) VALUES
('Coffee', 'Hot brewed coffee', 2.50, 'coffee.jpg', 'Beverage', 100, CURDATE(), CURRENT_TIMESTAMP),
('Tea', 'Hot brewed tea', 2.00, 'tea.jpg', 'Beverage', 100, CURDATE(), CURRENT_TIMESTAMP),
('Sandwich', 'Ham and cheese sandwich', 5.00, 'sandwich.jpg', 'Food', 50, CURDATE(), CURRENT_TIMESTAMP),
('Salad', 'Fresh garden salad', 4.50, 'salad.jpg', 'Food', 30, CURDATE(), CURRENT_TIMESTAMP),
('Cake', 'Chocolate cake slice', 3.00, 'cake.jpg', 'Dessert', 20, CURDATE(), CURRENT_TIMESTAMP);

-- Insert records into users table
INSERT INTO users (first_name, last_name, email, cell, password, address, joined_at, updated_at) VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', 'password123', '123 Main St', CURDATE(), CURRENT_TIMESTAMP),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321', 'password123', '456 Elm St', CURDATE(), CURRENT_TIMESTAMP),
('Alice', 'Johnson', 'alice.johnson@example.com', '1122334455', 'password123', '789 Oak St', CURDATE(), CURRENT_TIMESTAMP),
('Bob', 'Brown', 'bob.brown@example.com', '6677889900', 'password123', '101 Pine St', CURDATE(), CURRENT_TIMESTAMP),
('Charlie', 'Davis', 'charlie.davis@example.com', '2233445566', 'password123', '202 Maple St', CURDATE(), CURRENT_TIMESTAMP);

-- Insert records into staffs table
INSERT INTO staffs (first_name, last_name, email, cell, password, address, salary, role, joined_at, updated_at) VALUES
('Emily', 'Clark', 'emily.clark@example.com', '3344556677', 'password123', '303 Birch St', 3000.00, 'Manager', CURDATE(), CURRENT_TIMESTAMP),
('David', 'Wilson', 'david.wilson@example.com', '4455667788', 'password123', '404 Cedar St', 2500.00, 'Chef', CURDATE(), CURRENT_TIMESTAMP),
('Sophia', 'Martinez', 'sophia.martinez@example.com', '5566778899', 'password123', '505 Spruce St', 2000.00, 'Waiter', CURDATE(), CURRENT_TIMESTAMP),
('James', 'Anderson', 'james.anderson@example.com', '6677889900', 'password123', '606 Fir St', 2200.00, 'Cashier', CURDATE(), CURRENT_TIMESTAMP),
('Olivia', 'Thomas', 'olivia.thomas@example.com', '7788990011', 'password123', '707 Willow St', 2400.00, 'Cleaner', CURDATE(), CURRENT_TIMESTAMP);

-- Insert records into orders table
INSERT INTO orders (order_no, order_date, order_total, order_status, user_id, staff_id, created_at, updated_at) VALUES
(1001, CURDATE(), 10.00, 'Completed', 6, 1, CURDATE(), CURRENT_TIMESTAMP),
(1002, CURDATE(), 15.50, 'Pending', 7, 2, CURDATE(), CURRENT_TIMESTAMP),
(1003, CURDATE(), 8.75, 'Completed', 8, 3, CURDATE(), CURRENT_TIMESTAMP),
(1004, CURDATE(), 12.00, 'Cancelled', 9, 4, CURDATE(), CURRENT_TIMESTAMP),
(1005, CURDATE(), 20.00, 'Completed', 10, 5, CURDATE(), CURRENT_TIMESTAMP);

-- Insert records into order_items table
INSERT INTO order_items (order_id, item_id, quantity, total, created_at, updated_at) VALUES
(11, 1, 2, 5.00, CURDATE(), CURRENT_TIMESTAMP),
(11, 3, 1, 5.00, CURDATE(), CURRENT_TIMESTAMP),
(12, 2, 3, 6.00, CURDATE(), CURRENT_TIMESTAMP),
(12, 4, 2, 9.50, CURDATE(), CURRENT_TIMESTAMP),
(13, 5, 1, 3.00, CURDATE(), CURRENT_TIMESTAMP),
(13, 1, 2, 5.75, CURDATE(), CURRENT_TIMESTAMP),
(14, 3, 2, 10.00, CURDATE(), CURRENT_TIMESTAMP),
(15, 4, 4, 18.00, CURDATE(), CURRENT_TIMESTAMP),
(15, 5, 1, 2.00, CURDATE(), CURRENT_TIMESTAMP);

DROP TABLE orders;