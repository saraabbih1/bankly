CREATE DATABASE bankly;
USE bankly;

CREATE TABLE IF NOT EXISTS Customers(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE,
    phone VARCHAR(150),
    registration_date DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS Advisors(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE
);

CREATE TABLE IF NOT EXISTS Accounts(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    account_number INT UNSIGNED UNIQUE,
    balance DECIMAL(12,2) NOT NULL,
    account_type ENUM('Checking','Savings','Business'),
    customer_id INT UNSIGNED,
    advisor_id INT UNSIGNED,
    FOREIGN KEY (customer_id) REFERENCES Customers(id),
    FOREIGN KEY (advisor_id) REFERENCES Advisors(id)
);

CREATE TABLE IF NOT EXISTS Transactions(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(12,2) NOT NULL,
    transaction_type ENUM('debit','credit'),
    transaction_date DATETIME NOT NULL,
    account_id INT UNSIGNED,
    FOREIGN KEY (account_id) REFERENCES Accounts(id)
);

INSERT INTO Customers (full_name, email, phone, registration_date) VALUES
('Karim El Fassi', 'karim.fassi@gmail.com', '0610203040', '2025-02-01 09:20:00'),
('Samira Ouahid', 'samira.ouahid@gmail.com', '0621314151', '2025-02-02 10:10:00'),
('Youssef Haddad', 'youssef.haddad@gmail.com', '0632425262', '2025-02-03 14:30:00'),
('Lina Ajour', 'lina.ajour@gmail.com', '0643536373', '2025-02-04 11:45:00');
