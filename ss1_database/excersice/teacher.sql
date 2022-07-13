use student_management;

create table teacher (
id_teacher int auto_increment,
name varchar(50),
age int,
nation varchar(55),
primary key (id_teacher)
);
insert into teacher(name,age,nation) 
value ("Nggu",15,"VN");
select *
 from teacher;

use student_management;
create table class (
id_class int auto_increment,
name_class varchar (55),
primary key (id_class)
);
insert into
 class (name_class) value ("C04");
select *
 from class;