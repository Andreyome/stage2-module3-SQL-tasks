SELECT * FROM payment WHERE amount>=500;
SELECT * FROM student WHERE birthday<= DATEADD(YEAR,-20,GETDATE());
SELECT * FROM student WHERE birthday>=DATEADD(YEAR,-20,GETDATE()) AND groupnumber=10;
SELECT * FROM student WHERE groupnumber=4 OR groupnumber=5 OR groupnumber=6 OR name = 'Mike';
SELECT * FROM payment WHERE payment_date>= DATEADD(month,-8,GETDATE());
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE (name = 'Roxi' AND groupnumber =4) OR (name = 'Tallie' AND groupnumber = 9);
