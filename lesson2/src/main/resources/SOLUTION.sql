INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'John', '2013-01-03', 1);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'Chris', '2013-01-03', 1);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'Carl', '2013-01-03', 1);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'Oliver', '2013-01-03', 2);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'James', '2013-01-03', 2);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'Lucas', '2013-01-03', 2);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'Henry', '2013-01-03', 2);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'Jacob', '2013-01-03', 3);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'Logan', '2013-01-03', 3);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'Kate', '2013-01-03', 4);
INSERT INTO STUDENT ( NAME, BIRTHDAY, GROUPNUMBER) values ( 'Yura', '2013-01-03', 5);

INSERT INTO SUBJECT ( name, grade)  values ( 'Art', 1);
INSERT INTO SUBJECT ( name, grade)  values (  'Geography', 2 );
INSERT INTO SUBJECT ( name, grade)  values (  'PE', 3);
INSERT INTO SUBJECT ( name, grade)  values (  'Science', 4 );
INSERT INTO SUBJECT ( name, grade)  values (  'Math', 5);
INSERT INTO SUBJECT ( name, grade)  values (  'History', 5 );

INSERT INTO PAYMENTTYPE (NAME) values ( 'DAILY');
INSERT INTO PAYMENTTYPE ( NAME) values (  'WEEKLY' );
INSERT INTO PAYMENTTYPE ( NAME) values (  'MONTHLY' );

INSERT INTO PAYMENT (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID) VALUES ( 2, 50, '2013-01-03' ,  1);
INSERT INTO PAYMENT (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID) VALUES ( 3, 50, '2013-01-03' ,  4);
INSERT INTO PAYMENT (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID) VALUES ( 2, 50, '2013-01-03' ,  7);
INSERT INTO PAYMENT (TYPE_ID, AMOUNT, PAYMENT_DATE, STUDENT_ID) VALUES ( 1, 50, '2013-01-03' ,  5);


insert into MARK (student_id, SUBJECT_ID, MARK) values (2, 1, 8);
insert into MARK (student_id, SUBJECT_ID, MARK) values (4, 4,  5);
insert into MARK (student_id, SUBJECT_ID, MARK) values (5, 3,  9);
insert into MARK (student_id, SUBJECT_ID, MARK) values (8, 6,  4);
insert into MARK (student_id, SUBJECT_ID, MARK) values (9, 5,  9);
insert into MARK (student_id, SUBJECT_ID, MARK) values (1, 8,  6);
insert into MARK (student_id, SUBJECT_ID, MARK) values (7, 7,  2);

select (s.NAME, P3.NAME) from STUDENT s inner join PAYMENT P2 on s.ID = P2.STUDENT_ID inner join PAYMENTTYPE P3 on P3.ID = P2.TYPE_ID;