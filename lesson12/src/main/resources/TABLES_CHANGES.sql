ALTER TABLE mark DROP CONSTRAINT mark_student_id_fkey;
ALTER TABLE mark DROP CONSTRAINT mark_subject_id_fkey;
ALTER TABLE mark ADD CONSTRAINT mark_student_id_fkey FOREIGN KEY (student_id) references student(id) ON DELETE CASCADE;
ALTER TABLE mark ADD CONSTRAINT mark_subject_id_fkey FOREIGN KEY (subject_id) references subject(id) ON DELETE CASCADE;
ALTER TABLE payment DROP CONSTRAINT payment_type_id_fkey;
ALTER TABLE payment DROP CONSTRAINT payment_student_id_fkey;
ALTER TABLE payment ADD CONSTRAINT payment_type_id_fkey FOREIGN KEY (type_id) references paymenttype(id) ON DELETE CASCADE;
ALTER TABLE payment ADD CONSTRAINT payment_student_id_fkey FOREIGN KEY (student_id) references student(id) ON DELETE CASCADE;