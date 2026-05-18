CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email, password, role) VALUES 
('admin_husi', 'admin@ecommerce.com', 'hashed_password_here', 'admin'),
('test_user', 'user@ecommerce.com', 'hashed_password_here', 'user');

INSERT INTO categories (name, description) VALUES 
('Electronics', 'Phones, Computers and Smart Devices'),
('Clothing', 'Men and Women Apparel');
