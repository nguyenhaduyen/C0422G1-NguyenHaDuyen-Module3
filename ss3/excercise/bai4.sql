DROP DATABASE IF EXISTS quan_ly_ban_hang;

CREATE DATABASE quan_ly_ban_hang;

USE quan_ly_ban_hang;

CREATE TABLE customer (
    customer_id INT auto_increment KEY,
    customer_name VARCHAR(30) NOT NULL,
    customer_age INT
);
INSERT INTO customer (customer_name,customer_age) VALUES ("Minh Quan",10) , ("Ngoc Oanh",20), ("Hong Ha",50);

CREATE TABLE `order` (
    order_id INT PRIMARY KEY auto_increment,
    customer_id INT NOT NULL,
    order_date DATE,
    order_total_price FLOAT,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
);
INSERT INTO `order` (customer_id,order_date,order_total_price) VALUES (1,"2006-3-21",NULL),(2,"2006-3-23",NULL),(1,"2006-3-16",NULL);

CREATE TABLE product (
    product_id INT PRIMARY KEY auto_increment,
    product_name VARCHAR(50),
    product_price FLOAT
);

INSERT INTO product(product_name,product_price) VALUES ("May Giat",3),("Tu Lanh",5),("Dieu Hoa",7),("Quat",1),("Bep Dien",2);

CREATE TABLE order_detail (
    order_id INT,
    product_id INT,
    order_quanity INT,
    primary key (order_id,product_id),
    FOREIGN KEY (order_id)
        REFERENCES `order` (order_id),
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
);

INSERT INTO order_detail(order_id,product_id,order_quanity) VALUE (1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT o.customer_id, o.order_date,o.order_total_price
FROM `order` o;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT c.customer_name, p.product_name
FROM customer c
JOIN `order` o
ON c.customer_id = o.customer_id
JOIN order_detail od
ON o.order_id = od.order_id
JOIN product p
ON od.product_id = p.product_id;
    
--  Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    c.customer_name
FROM
    customer c
        LEFT JOIN
    `order` o ON c.customer_id = o.customer_id
WHERE
    o.order_date IS NULL; 

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
--  Giá bán của từng loại được tính = odQTY*pPrice)
;
SELECT o.order_id, o.order_date, SUM((p.product_price*od.order_quanity)) AS price
FROM `order` o JOIN order_detail od 
ON o.order_id = od.order_id
JOIN product p
ON od.product_id = p.product_id
GROUP BY o.order_id;

