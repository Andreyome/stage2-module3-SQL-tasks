
CREATE TABLE Student
(
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20),
birthdate DATE NOT NULL,
groupnumber INT NOT NULL
);
CREATE TABLE Subject
(
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(40),
description VARCHAR(256),
grade INT NOT NULL
);
CREATE TABLE PaymentType
(
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(256)
);
CREATE TABLE Payment
(
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
type_id BIGINT NOT NULL,
amount DECIMAL NOT NULL,
payment_date DATETIME NOT NULL,
student_id BIGINT NOT NULL,
foreign key (student_id) references Student(id),
foreign key (type_id) references PaymentType(id)
 );
 CREATE TABLE Mark
 (
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
student_id BIGINT NOT NULL,
foreign key (student_id) references Student(id),
subject_id BIGINT NOT NULL,
foreign key (subject_id) references Subject(id),
mark INT NOT NULL
 );



