SELECT max(birthday) FROM student;
SELECT min(payment_date) FROM payment;
SELECT avg(mark) FROM mark WHERE subject_id IN (Select id FROM subject WHERE name = 'Math');
SELECT min(amount) FROM payment WHERE type_id IN (SELECT id FROM paymenttype WHERE name = 'WEEKLY');
