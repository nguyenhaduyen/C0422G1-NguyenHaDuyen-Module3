create table student (
id int auto_increment,
name varchar (50),
age int,
nation varchar (50),
primary key (id)
);
select * from student;
insert into student (name,age,nation) value ("Ha Duyen",22,"Viet Nam"),("Anna",22,"Viet Nam");
select * from student;