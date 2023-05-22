-- Active: 1684524067416@@172.17.0.2@3306@School
CREATE DATABASE School;
USE School;
create table Students(
    id int not null auto_increment,
    name varchar(255) not null,
    age int not null,
    primary key(id)
);
create table Attendance(
    id int not null auto_increment,
    student_id int not null,
    course_name VARCHAR(255) not null,
    date date not null,
    primary key(id),
    foreign key(student_id) references School.Students(id)
);