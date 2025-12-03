-- Insérer un nouveau customer
INSERT INTO Customers (full_name, email, phone, registration_date)
VALUES ('sarra abbih', 'sarra@gmail.com', '0712345678', '2025-01-10 10:00:00');

-- Modifier le numéro de téléphone d’un customer
UPDATE Customers 
SET phone = '0600000000' 
WHERE full_name = 'sarra abbih';

-- Afficher tous les customers
SELECT * FROM Customers;

-- Afficher uniquement les full_name et email des customers
SELECT full_name, email FROM Customers;

-- Afficher tous les accounts
SELECT * FROM Accounts;

-- Afficher uniquement les account_number
SELECT account_number FROM Accounts;

-- Afficher toutes les transactions
SELECT * FROM Transactions;

-- Afficher les accounts avec un balance > 10000
SELECT * FROM Accounts WHERE balance > 10000;

-- Afficher les accounts avec un balance ≤ 0
SELECT * FROM Accounts WHERE balance <= 0;

-- Afficher les transactions de type "debit"
SELECT * FROM Transactions WHERE transaction_type = 'debit';

-- Afficher les transactions de type "credit"
SELECT * FROM Transactions WHERE transaction_type = 'credit';

-- Afficher les transactions du account_id = 1
SELECT * FROM Transactions WHERE account_id = 1;

