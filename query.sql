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

-- Afficher les customers ayant un account géré par l’advisor_id = 2
SELECT c.* 
FROM Customers c 
JOIN Accounts a ON c.id = a.customer_id
WHERE a.advisor_id = 2;


-- Afficher les accounts ayant account_type = "Savings"
SELECT * FROM Accounts WHERE account_type = 'Savings';


-- Afficher les transactions avec un amount ≥ 500
SELECT * FROM Transactions WHERE amount >= 500;

-- Afficher les transactions avec un amount entre 100 et 1000
SELECT * FROM Transactions WHERE amount BETWEEN 100 AND 1000;

-- Afficher les accounts du customer_id = 1
SELECT * FROM Accounts WHERE customer_id = 1;

-- Afficher les accounts triés par balance (ordre croissant)
SELECT * FROM Accounts ORDER BY balance ASC;

-- Afficher les transactions triées par amount (ordre décroissant)
SELECT * FROM Transactions ORDER BY amount DESC;

-- Afficher les 5 plus grandes transactions
SELECT * FROM Transactions ORDER BY amount DESC LIMIT 5;

-- Afficher toutes les transactions triées par transaction_date décroissante
SELECT * FROM Transactions ORDER BY transaction_date DESC;

-- Afficher les 3 dernières transactions
SELECT * FROM Transactions ORDER BY transaction_date DESC LIMIT 3;

-- Afficher chaque account avec le nom du customer et le nom de l’advisor (JOIN)
SELECT 
    a.*, 
    c.full_name AS customer_name,
    adv.full_name AS advisor_name
FROM Accounts a
JOIN Customers c ON a.customer_id = c.id
JOIN Advisors adv ON a.advisor_id = adv.id;
