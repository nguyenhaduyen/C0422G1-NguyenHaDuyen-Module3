USE quan_li_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT 
    *
FROM
    `subject`
WHERE
    credit = (SELECT 
            MAX(credit)
        FROM
            `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT 
    s.sub_id,
    s.sub_name,
    s.credit,
    s.status,
    m.mark AS diem_lon_nhat
FROM
    subject s
        INNER JOIN
    mark m ON s.sub_id = m.sub_id
WHERE
    mark = (SELECT 
            MAX(mark)
        FROM
            mark);


-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT 
    s.student_id,
    s.student_name,
    s.address,
    s.phone,
    s.status,
    s.class_id,
    AVG(m.mark) AS diem_trung_binh
FROM
    student s
        INNER JOIN
    mark m ON s.student_id = m.student_id
GROUP BY s.student_id
ORDER BY AVG(m.mark) DESC;