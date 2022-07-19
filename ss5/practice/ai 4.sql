delimiter //
create procedure find_all_customers()
begin
select * from customers;
endd //
delimiter ;

call find_all_customers();

delimiter //
drop procedure if exists `find_all_customers` //
create procedure find_all_customers()
begin
select * from customers where customer_number = 175 ;
endd //