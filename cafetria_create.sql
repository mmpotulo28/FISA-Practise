-- Active: 1730831496897@@localhost@3306
CREATE DATABASE IF NOT EXISTS cafetria;

SHOW DATABASES;

USE cafetria;

-- Table structure for table `cafetria`
SHOW tables;

-- items table
-- id, name, description, price, image, category, quantity, created_at, updated_at
CREATE TABLE items (
 id int PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(50) NOT NULL,
 description VARCHAR(255) NOT NULL,
 price DEC(3, 2) NOT NULL,
 image VARCHAR(255) NOT NULL,
 category VARCHAR(50) NOT NULL,
 quantity INT NOT NULL,
 created_at DATE NOT NULL,
 updated_at TIMESTAMP NOT NULL
);

-- users table
-- id, first_name, last_name, email, cell, password, address, joined_at, updated_at
CREATE TABLE users (
 id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL UNIQUE,
 cell INT NOT NULL UNIQUE,
 password VARCHAR(255) NOT NULL,
 address VARCHAR(255) NOT NULL,
 joined_at DATE,
 updated_at TIMESTAMP NOT NULL
);

-- staffs table
-- id, first_name, last_name, email, cell, password, address, salary, role, joined_at, updated_at
CREATE TABLE staffs (
 id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL UNIQUE,
 cell INT NOT NULL UNIQUE,
 password VARCHAR(255) NOT NULL,
 address VARCHAR(255) NOT NULL,
 salary DEC(6, 2) NOT NUll,
 role VARCHAR(50) NOT NULL,
 joined_at DATE NOT NULL,
 updated_at TIMESTAMP NOT NULL
);

-- orders table
-- id, order_no, order_date, user_id, order_total, order_status, staff_id, created_at, updated_at
CREATE TABLE orders (
 id INT PRIMARY KEY AUTO_INCREMENT,
 order_no INT NOT NULL,
 order_date DATE NOT NULL,
 order_total DEC(3, 2) NOT NULL,
 order_status VARCHAR(50) NOT NULL,
 user_id INT NOT NULL,
 staff_id INT NOT NULL,
 created_at DATE NOT NULL,
 updated_at TIMESTAMP NOT NULL,
 FOREIGN KEY (user_id) REFERENCES users(id),
 FOREIGN KEY (staff_id) REFERENCES staffs(id)
);

-- order_items table
-- id, order_id, item_id, quantity, total, created_at, updated_at
CREATE TABLE order_items (
 id INT PRIMARY KEY AUTO_INCREMENT,
 order_id INT NOT NULL,
 item_id INT NOT NULL,
 quantity INT NOT NULL DEFAULT 0,
 total DEC(5, 2) NOT NULL,
 created_at DATE NOT NULL,
 updated_at TIMESTAMP NOT NULL,
 FOREIGN KEY (order_id) REFERENCES orders(id),
 FOREIGN KEY (item_id) REFERENCES items(id)
);

-- change cell type to string
ALTER TABLE
 staffs
MODIFY
 cell VARCHAR(20) NOT NULL;

ALTER TABLE
 staffs
MODIFY
 salary DEC(6, 2) NOT NUll;

 ALTER TABLE orders MODIFY order_total DEC(5, 2) NOT NULL;