-- Active: 1684524067416@@172.17.0.2@3306@School
use School;
alter table Attendance add column attend int;
update Attendance set attend = 1;
SELECT att.course_name, att.date, s.name, IFNULL( A.attend, 0) AS attend
FROM Attendance att
CROSS JOIN Students s
LEFT JOIN (
    SELECT student_id, course_name, date, attend
    FROM Attendance
) AS A ON A.student_id = s.id AND A.course_name = att.course_name AND A.date = att.date
group by att.course_name, att.date, s.name, A.attend;
alter table `Attendance` drop COLUMN attend;