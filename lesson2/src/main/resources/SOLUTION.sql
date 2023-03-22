INSERT INTO student (name,groupnumber,birthday)
VALUES('John',1,CURRENT_DATE()),
('Chris',1,CURRENT_DATE()),
('Carl',1,CURRENT_DATE()),
('Oliver',2,CURRENT_DATE()),
('James',2,CURRENT_DATE()),
('Lucas',2,CURRENT_DATE()),
('Henry',2,CURRENT_DATE()),
('Jacob',3,CURRENT_DATE()),
('Logan',3,CURRENT_DATE()),
('Billy',4,CURRENT_DATE()),
('Mary',4,CURRENT_DATE()),
('Henric',5,CURRENT_DATE()),
('Teddy',5,CURRENT_DATE()),
('Brann',5,CURRENT_DATE());
INSERT INTO subject(name,grade)
VALUE('Art',1),
('Geography',2),
('History',2),
('PE',3),
('Math',3),
('Science',4),
('IT',4),
('Chemistry',5),
('Biology',5);
INSERT INTO paymenttypes(name)
VALUES('DAILY'),
('WEEKLY'),
('MONTHLY');
INSERT INTO payment(student_id,amount,type_id)
VALUES(
(SELECT id FROM student WHERE name='John'),
500.1,
(SELECT id FROM paymenttypes WHERE name = 'WEEKLY')
),
(
(SELECT id FROM student WHERE name='Oliver'),
1000.2,
(SELECT id FROM paymenttypes WHERE name = 'MONTHLY')
),
(
(SELECT id FROM student WHERE name='Henry'),
530.5,
(SELECT id FROM paymenttypes WHERE name = 'WEEKLY')
),
(
(SELECT id FROM student WHERE name='James'),
50.0,
(SELECT id FROM paymenttypes WHERE name = 'DAILY')
),
(
(SELECT id FROM student WHERE name='Teddy'),
540.0,
(SELECT id FROM paymenttypes WHERE name = 'WEEKLY')
),
(
(SELECT id FROM student WHERE name='Henric'),
500.0,
(SELECT id FROM paymenttypes WHERE name = 'MONTHLY')
),
(
(SELECT id FROM student WHERE name='Brann'),
100.0,
(SELECT id FROM paymenttypes WHERE name = 'WEEKLY')
),
(
(SELECT id FROM student WHERE name='Jacob'),
30.0,
(SELECT id FROM paymenttypes WHERE name = 'DAILY')
);
INSERT INTO mark (student_id,subject_id,mark)
VALUES
(
(SELECT id FROM student WHERE name = 'Chris'),
(SELECT id FROM subject WHERE name = 'Art'),
8
),
(
(SELECT id FROM student WHERE name = 'Oliver'),
(SELECT id FROM subject WHERE name = 'History'),
5
),
(
(SELECT id FROM student WHERE name = 'James'),
(SELECT id FROM subject WHERE name = 'Geography'),
9
),
(
(SELECT id FROM student WHERE name = 'Jacob'),
(SELECT id FROM subject WHERE name = 'Math'),
4
),
(
(SELECT id FROM student WHERE name = 'Logan'),
(SELECT id FROM subject WHERE name = 'PE'),
9
),
(
(SELECT id FROM student WHERE name = 'Mary'),
(SELECT id FROM subject WHERE name = 'Art'),
2
),
(
(SELECT id FROM student WHERE name = 'Billy'),
(SELECT id FROM subject WHERE name = 'Chemistry'),
3
),
(
(SELECT id FROM student WHERE name = 'Brann'),
(SELECT id FROM subject WHERE name = 'IT'),
9
);