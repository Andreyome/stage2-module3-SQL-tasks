SELECT * FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM payment WHERE amount < 300 ORDER BY amount ASC;
SELECT * FROM paymenttype ORDER BY name;
SELECT * FROM student ORDER BY name DESC;
SELECT DISTINCT * FROM student WHERE id IN (SELECT student_id FROM payment WHERE amount >1000) ORDER BY birthday;