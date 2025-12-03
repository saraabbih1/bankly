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

