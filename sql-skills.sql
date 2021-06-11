--ARTIST TABLE
INSERT INTO artist ( name)
VALUES ('Young the Giant'),
('AJR'),
('Bleachers');

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

--EMPLOYEE TABLE
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * from employee
WHERE reports_to  = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

--INVOICE TABLE
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT SUM(total) FROM invoice;

--JOIN 
SELECT * FROM invoice_line il
JOIN invoice i ON il.invoice_id = i.invoice_id
WHERE unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i 
JOIN customer c ON i.customer_id = c.customer_id;

SELECT c.first_name "customer first name", c.last_name "customer last name", e.first_name "employee first name", e.last_name "employee last name" FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT al.title, a.name FROM album al
JOIN artist a ON al.artist_id = a.artist_id;