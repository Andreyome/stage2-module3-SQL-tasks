SELECT * FROM payment WHERE amount>=500;
SELECT * FROM student WHERE birthday< DATEADD(YEAR,-20,CURDATE());
SELECT * FROM student WHERE birthday> DATEADD(YEAR,-20,CURDATE()) AND groupnumber=10;
SELECT * FROM student WHERE groupnumber IN (4, 5, 6) OR name LIKE 'Mike%';
SELECT * FROM payment WHERE  DATEADD(month,-8,CURRENT_DATE) <= payment_date ;
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE (name LIKE 'Roxi%' AND groupnumber =4) OR (name LIKE 'Tallie%' AND groupnumber = 9);
