drop database if exists `user`;
create database `user`;
use `user`;
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120),
    PRIMARY KEY (id)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');
update users set name =1, email=1,country=1 where id =1;
select * from users where country like '%1';
select * from users where country=2;
select * from users where country like '%1%';