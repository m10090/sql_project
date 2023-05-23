-- Active: 1684524067416@@172.17.0.2@3306@School
use School;
select *, s.id as s_id from Students s inner join `Attendance` on s.id = `Attendance`.`student_id`;
select *, s.id as s_id from Students s left join `Attendance` on s.id = `Attendance`.`student_id`;
select *, s.id as s_id from Students s right join `Attendance` on s.`id` = `Attendance`.`student_id`;
(select *, Students.id as s_id from Students left join `Attendance` on Students.`id` = `Attendance`.`student_id`)
union
(SELECT *, Students.id as s_id from Students  right join `Attendance` on Students.`id` = `Attendance`.`student_id`) ;
 -- Carcartesian product
select *, s.id as s_id from Students s cross join `Attendance`; 