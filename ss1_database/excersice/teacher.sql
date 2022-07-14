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
INSERT INTO teacher(name,age,nation) 
VALUE ("ngan",15,"VN");


CREATE TABLE class (
    id_class INT AUTO_INCREMENT,
    name_class VARCHAR(55),
    PRIMARY KEY (id_class)
);

INSERT INTO
 class (name_class) VALUE ("C04");
 
CREATE TABLE student (
    id_student INT AUTO_INCREMENT,
    name_student VARCHAR(55),
    date_of_birth DATE,
    PRIMARY KEY (id_student)
);


 


