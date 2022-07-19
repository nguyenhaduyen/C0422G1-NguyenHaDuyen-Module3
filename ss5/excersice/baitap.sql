DROP DATABASE IF EXISTS product;

CREATE DATABASE product;

USE product;

CREATE TABLE product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_code INT,
    product_name VARCHAR(20),
    product_price DOUBLE,
    product_amount INT,
    product_description VARCHAR(30),
    product_status BIT
);

INSERT INTO product(product_code,product_name,product_price,product_amount,product_description,product_status) 
VALUES (1, "quan_jean", 220000,12,"day",1),
(2, "giay", 280000,12,"mau_den",1),
(3, "vay", 240000,32,"mau_xanh",1),
(4, "ao thun", 120000,22,"mau_trang",0);

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
-- So sánh câu truy vấn trước và sau khi tạo index

CREATE INDEX i_product_code ON product(product_code);
EXPLAIN SELECT *
FROM product 
WHERE product_code = 4;
DROP INDEX i_product_code ON product;

CREATE INDEX i_product ON product(product_name,product_price);
EXPLAIN SELECT * 
FROM product 
WHERE product_name = "ao thun" AND product_price = 120000;
DROP INDEX i_product ON product;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
-- Tiến hành sửa đổi view
-- Tiến hành xoá view
CREATE VIEW product_view AS
    SELECT 
        product_code, product_name, product_price, product_status
    FROM
        product;

SELECT 
    *
FROM
    product_view;

CREATE OR REPLACE VIEW product_view AS
    SELECT 
        product_code,
        product_name,
        product_price,
        product_status,
        product_description
    FROM
        product;

SELECT 
    *
FROM
    product_view;

drop view product_view;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //
CREATE procedure find_product()
BEGIN
	SELECT * 
	FROM product;
END //
delimiter ;
CALL find_product();

-- Tạo store procedure thêm một sản phẩm mới
delimiter //
CREATE procedure add_product()
BEGIN
	INSERT INTO product (product_code,product_name,product_price,product_amount,product_description,product_status) 
	VALUES (5, "quan_thun", 340000,182,"mau_do",1);
END //
delimiter ;
CALL add_product();
SELECT 
    *
FROM
    product;

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure edit_product(product_id int,code int,name VARCHAR(20),price DOUBLE,amount INT,description VARCHAR(30),status BIT)
BEGIN
SET sql_safe_updates = 0;
UPDATE 
	product set product_code = code, 
	product_name = name, 
    product_price = price, 
    product_amount = amount, 
    product_description = description, 
    product_status = status
    WHERE id = product_id;
    SET sql_safe_updates = 1;
END //
delimiter ; 
CALL edit_product (2,3,"quan_baggy",253000,125,"mau_vang",1) ;
SELECT 
    *
FROM
    product;

-- Tạo store procedure xoá sản phẩm theo id
delimiter //
CREATE procedure delete_product(product_id int)
BEGIN
	DELETE FROM product id
	WHERE id = product_id;
END //
delimiter ; 
CALL delete_product (2) ;
SELECT 
    *
FROM
    product;
