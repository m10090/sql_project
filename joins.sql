-- Active: 1684524067416@@172.17.0.2@3306@School
use School;
select *, s.id as s_id from Students s inner join `Attendance` on s.id = `Attendance`.`student_id`;
select *, s.id as s_id from Students s left join `Attendance` on s.id = `Attendance`.`student_id`;
select *, s.id as s_id from Students s right join `Attendance` on s.`id` = `Attendance`.`student_id`;
select *, s.id as s_id from Students s full join `Attendance` on s.`id` = `Attendance`.`student_id`;
-- Carcartesian product
select *, s.id as s_id from Students s cross join `Attendance`; 