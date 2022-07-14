DROP DATABASE IF EXISTS student_management;

CREATE DATABASE student_management;

USE student_management;

CREATE TABLE teacher (
    id_teacher INT AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    nation VARCHAR(55),
    PRIMARY KEY (id_teacher)
);
insert into teacher(name,age,nation) 
value ("ngan",15,"VN");


CREATE TABLE class (
    id_class INT AUTO_INCREMENT,
    name_class VARCHAR(55),
    PRIMARY KEY (id_class)
);

insert into
 class (name_class) value ("C04");
 
CREATE TABLE student (
    id_student INT AUTO_INCREMENT,
    name_student VARCHAR(55),
    date_of_birth DATE,
    PRIMARY KEY (id_student)
);


 


