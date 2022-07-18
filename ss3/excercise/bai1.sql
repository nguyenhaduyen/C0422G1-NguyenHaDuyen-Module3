DROP DATABASE IF EXISTS quan_li_sinh_vien1;

CREATE DATABASE quan_li_sinh_vien1;

USE quan_li_sinh_vien1;

CREATE TABLE class (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(20),
    start_date DATE,
    `status` INT
);

INSERT INTO class (class_name, start_date,`status`) 
VALUES ("A1", "2008-12-20",1),("A2","2008-12-22",1),("B3", CURRENT_DATE,0);

SELECT 
    *
FROM
    class
WHERE
    class_name = 'A1';

CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(20),
    address VARCHAR(20),
    phone VARCHAR(20),
    `status` INT,
    class_id INT,
    FOREIGN KEY (class_id)
       REFERENCES class (class_id)
);

INSERT INTO student (student_name,address,phone,`status`,class_id) 
VALUES ("Hung","Ha Noi","0912113113",1,1),("Hoa","Hai Phong",NULL,1,1),("Manh","HCM", "	
0123123123",0,2);

SELECT *
FROM student;

SELECT *
FROM student WHERE `status` = TRUE;

SELECT 
    S.student_id, S.student_name, C.class_name AS a
FROM
    student S
        JOIN
    class c ON S.class_id = C.class_id
WHERE
    C.class_name = 'A1';

SELECT 
    S.student_id, S.student_name, Sub.sub_name, M.mark
FROM
    Student S
        JOIN
    Mark M ON S.student_id = M.student_id
        JOIN
    Subject Sub ON M.sub_id = Sub.sub_id
WHERE
    Sub.sub_name = 'CF';

CREATE TABLE subject (
    sub_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(20),
    credit INT,
    `status` INT
);

INSERT INTO subject (sub_name,credit,`status`) 
VALUES ("CF",5,1),("C",6,1),("HDJ",5,1),("RDBMS",10,1);

SELECT 
    *
FROM
    subject
WHERE
    credit < 10;

CREATE TABLE mark (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_id INT,
    student_id INT,
    mark INT,
    exam_times INT,
    FOREIGN KEY (sub_id)
        REFERENCES subject (sub_id),
    FOREIGN KEY (student_id)
        REFERENCES student (student_id)
); 

INSERT INTO  mark (sub_id,student_id,mark,exam_times) 
VALUES (1,1,8,1),(1,2,10,2),(2,1,12,1);

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT 
    *
FROM
    student s
WHERE
    s.student_name LIKE 'H%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT 
    *
FROM
    class c
WHERE
    MONTH(c.start_date) = 12;

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
SELECT 
    *
FROM
    subject s
WHERE
    s.credit BETWEEN 3 AND 5; 

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
SET sql_safe_updates = 0;
UPDATE student 
SET 
    class_id = 2
WHERE
    student_name = 'Hung';
SET sql_safe_updates = 1;
SELECT 
    *
FROM
    student;

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần, nếu trùng sắp theo tên tăng dần.
SELECT 
    s.student_name, sub.sub_name, m.mark
FROM
    student s
        JOIN
    mark m ON s.student_id = m.student_id
        JOIN
   SUBJECT sub ON m.sub_id = sub.sub_id
ORDER BY m.mark , m.mark DESC;