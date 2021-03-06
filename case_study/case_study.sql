DROP DATABASE IF EXISTS case_study;

CREATE DATABASE case_study;

USE case_study;

CREATE TABLE vi_tri (
    ma_vi_tri INT AUTO_INCREMENT,
    ten_vi_tri VARCHAR(45),
    PRIMARY KEY (ma_vi_tri)
);

CREATE TABLE trinh_do (
    ma_trinh_do INT AUTO_INCREMENT,
    ten_trinh_do VARCHAR(45),
    PRIMARY KEY (ma_trinh_do)
);

CREATE TABLE bo_phan (
    ma_bo_phan INT AUTO_INCREMENT,
    ten_bo_phan VARCHAR(45),
    PRIMARY KEY (ma_bo_phan)
);

CREATE TABLE nhan_vien (
    ma_nhan_vien INT AUTO_INCREMENT,
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    so_cmnd VARCHAR(45) NOT NULL,
    luong DOUBLE NOT NULL,
    so_dien_thoai VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    ma_vi_tri INT,
    ma_trinh_do INT,
    ma_bo_phan INT,
    PRIMARY KEY (ma_nhan_vien),
    FOREIGN KEY (ma_vi_tri)
        REFERENCES vi_tri (ma_vi_tri),
    FOREIGN KEY (ma_trinh_do)
        REFERENCES trinh_do (ma_trinh_do),
    FOREIGN KEY (ma_bo_phan)
        REFERENCES bo_phan (ma_bo_phan)
        on delete set null
);

CREATE TABLE loai_khach (
    ma_loai_khach INT auto_increment,
    ten_loai_khach VARCHAR(45),
    PRIMARY KEY (ma_loai_khach)
);

CREATE TABLE khach_hang (
    ma_khach_hang INT AUTO_INCREMENT,
    ho_ten VARCHAR(45) NOT NULL,
    ngay_sinh DATE NOT NULL,
    gioi_tinh BIT(1) NOT NULL,
    so_cmnd VARCHAR(45) NOT NULL,
    so_dien_thoai VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    dia_chi VARCHAR(45),
     ma_loai_khach INT,
    PRIMARY KEY (ma_khach_hang),
    FOREIGN KEY (ma_loai_khach)
        REFERENCES loai_khach (ma_loai_khach)
        on delete set null
);

CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT AUTO_INCREMENT,
    ten_loai_dich_vu VARCHAR(45),
    PRIMARY KEY (ma_loai_dich_vu)
);

CREATE TABLE kieu_thue (
    ma_kieu_thue INT AUTO_INCREMENT,
    ten_kieu_thue VARCHAR(45),
    PRIMARY KEY (ma_kieu_thue)
);

CREATE TABLE dich_vu (
    ma_dich_vu INT AUTO_INCREMENT,
    ten_dich_vu VARCHAR(45) NOT NULL,
    dien_tich INT,
    chi_phi_thue DOUBLE NOT NULL,
    so_nguoi_toi_da INT,
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khac VARCHAR(45),
    dien_tich_ho_boi DOUBLE,
    so_tang INT,
    dich_vu_mien_phi_di_kem TEXT,
      ma_kieu_thue INT,
    ma_loai_dich_vu INT,
    PRIMARY KEY (ma_dich_vu),
    FOREIGN KEY (ma_kieu_thue)
        REFERENCES kieu_thue (ma_kieu_thue),
    FOREIGN KEY (ma_loai_dich_vu)
        REFERENCES loai_dich_vu (ma_loai_dich_vu)
        on delete set null
);

CREATE TABLE hop_dong (
    ma_hop_dong INT AUTO_INCREMENT,
    ngay_lam_hop_dong DATETIME NOT NULL,
    ngay_ket_thuc DATETIME NOT NULL,
    tien_dat_coc DOUBLE NOT NULL,
    ma_nhan_vien INT,
    ma_khach_hang INT,
    ma_dich_vu INT,
    FOREIGN KEY (ma_nhan_vien)
        REFERENCES nhan_vien (ma_nhan_vien),
    FOREIGN KEY (ma_khach_hang)
        REFERENCES khach_hang (ma_khach_hang),
    FOREIGN KEY (ma_dich_vu)
        REFERENCES dich_vu (ma_dich_vu)
        	on delete set null,
    PRIMARY KEY (ma_hop_dong)
);

CREATE TABLE dich_vu_di_kem (
    ma_dich_vu_di_kem INT AUTO_INCREMENT,
    ten_dich_vu_di_kem VARCHAR(45) NOT NULL,
    gia DOUBLE NOT NULL,
    don_vi VARCHAR(10) NOT NULL,
    trang_thai VARCHAR(45),
    PRIMARY KEY (ma_dich_vu_di_kem)
);

CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT AUTO_INCREMENT,
	so_luong INT NULL,
    ma_hop_dong INT,
    ma_dich_vu_di_kem INT,
    PRIMARY KEY (ma_hop_dong_chi_tiet),
    FOREIGN KEY (ma_hop_dong)
        REFERENCES hop_dong (ma_hop_dong),
    FOREIGN KEY (ma_dich_vu_di_kem)
        REFERENCES dich_vu_di_kem (ma_dich_vu_di_kem)
        on delete set null
);

insert into vi_tri(ten_vi_tri) values ("Qu???n L??"),("Nh??n Vi??n");

insert into trinh_do (ten_trinh_do) values ("Trung C???p"),("Cao ?????ng"),("?????i H???c"),("Sau ?????i H???c");

insert into bo_phan (ten_bo_phan) values ("Sale-Marketing"),("H??nh ch??nh"),("Ph???c v???"),("Qu???n l??");

insert into nhan_vien (ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan) 
values
 ("Nguy???n V??n An","1970-11-07","456231786","10000000","0901234121","annguyen@gmail.com","295 Nguy???n T???t Th??nh,???? N???ng",1,3,1),
("L?? V??n B??nh","1997-04-09","654231234","7000000","0934212314","binhlv@gmail.com","22 Y??n B??i, ???? N???ng",1,2,2),
("H??? Th??? Y???n","1995-12-12","999231723","14000000","0412352315","thiyen@gmail.com","K234/11 ??i???n Bi??n Ph???,Gia Lai",1,3,2),
("V?? C??ng To???n","1980-04-04","123231365","17000000","0374443232","toan0404@gmail.com","77 Ho??ng Di???u, Qu???ng Tr???",1,4,4),
("Nguy???n B???nh Ph??t","1999-12-09","454363232","6000000","0902341231","phatphat@gmail.com","43 Y??n B??i, ???? N???ng",2,1,1),
("Kh??c Nguy???n An Nghi","2000-11-08","964542311","7000000","0978653213","annghi20@gmail.com","294 Nguy???n T???t Th??nh, ???? N???ng",2,2,3),
("Nguy???n H???u H??","1993-01-01","534323231","8000000","0941234553","nhh0101@gmail.com","4 Nguy???n Ch?? Thanh, Hu???",2,3,2),
("Nguy???n H?? ????ng","1989-09-03","234414123","9000000","0642123111","donghanguyen@gmail.com","111 H??ng V????ng, H?? N???i",2,4,4),
("T??ng Hoang","1982-09-03","256781231","6000000","0245144444","hoangtong@gmail.com","213 H??m Nghi, ???? N???ng",2,4,4),
("Nguy???n C??ng ?????o","1994-01-08","755434343","8000000","0988767111","nguyencongdao12@gmail.com","6 Ho?? Kh??nh, ?????ng Nai",2,3,2);

INSERT INTO loai_khach (ten_loai_khach) VALUEs ("Diamond"),("Platinium"),("Gold"),("Silver"),("Member");

INSERT INTO khach_hang (ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach) 
VALUEs 
("Nguy???n Th??? H??o","1970-11-07",0,"643431213","0945423362","thihao07@gmail.com","23 Nguy???n Ho??ng, ???? N???ng",5),
("Ph???m Xu??n Di???u","1992-08-08",1,"865342123","0954333333","xuandieu92@gmaiL.com","K77/22 Th??i Phi??n, Qu???ng Tr???",3),
("Tr????ng ????nh Ngh???","1990-02-27",1,"488645199","0373213122","nghenhan2702@gMail.com","K323/12 ??ng ??ch Khi??m, Vinh",1),
("D????ng V??n Quan","1981-07-08",1,"543432111","0490039241","duongquan@gmail.com","K453/12 L?? L???i, ???? N???ng",1),
("Ho??ng Tr???n Nhi Nhi","1995-12-09",0,"795453345","0312345678","nhinhi123@gmail.COM","224 L?? Th??i T???, Gia LAi",4),
("T??n N??? M???c Ch??u","2005-12-06",0,"732434215","0988888844","tonnuchau@gmaIl.com","37 Y??N Th???, ???? N???ng",4),
("Nguy???n M??? Kim","1984-04-08",0,"856453123","0912345698","kimcuong84@gmail.com","K123/45 L?? L???i, H??? Ch?? Minh",1),
("Nguy???n Th??? H??o","1999-04-08",0,"965656433","0763212345","haohao99@GMAiL.com","55 Nguy???n V??n Linh, Kon Tum",3),
("Tr???n ?????i Danh","1994-07-01",1,"432341235","0643343433","danhhai99@gmail.cOM","24 L?? Th?????ng Ki???t, Qu???ng Ng??i",1),
("Nguy???n T??m ?????c","1989-07-01",1,"344343432","0987654321","dactam@gmail.com","22 Ng?? Quy???n,???? N???ng",2);

INSERT INTO kieu_thue(ten_kieu_thue) VALUEs ("year"),("month"),("day"),("hour");

INSERT INTO loai_dich_vu(ten_loai_dich_vu) VALUEs ("Villa"),("House"),("Room");

INSERT INTO dich_vu (ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,dich_vu_mien_phi_di_kem,ma_kieu_thue,ma_loai_dich_vu)
VALUEs ("Villa Beach Front",25000,1000000,10,"vip","C?? h??? b??i",500,4,NULL,3,1),
("HoUse Princess 01",14000,5000000,7,"VIP","C?? th??m b???p n?????ng",null,3,nulL,2,2),
("ROOM TWIn 01",5000,1000000,2,"NORMAL","C?? tivi",Null,null,"1 XE M??Y, 1 Xe ?????p",4,3),
("Villa NO BEACh Front",22000,9000000,8,"NORMAL","C?? H??? b??i",300,3,null,3,1),
("HOUSE PRINCESS 02",10000,4000000,5,"noRMAL","C?? TH??M B???p n?????ng",null,2,null,3,2),
("Room TWIN 02",3000,900000,2,"normal","C?? TIVI",NULL,NULl,"1 Xe M??y",4,3);

insert into dich_vu_di_kem (ten_dich_vu_di_kem,gia,don_vi,trang_thai) 
values ("Karaoke",10000,"gi???","ti???n nghi,hi???n d???i"),
("Thu?? xe m??y",10000,"chi???c","h???ng 1 xe"),
("Thu?? xe ?????p",	20000,"chi???c","t???t"),
("Buffet bu???i s??ng",15000,"su???t","?????y ????? ????? ??n,tr??ng mi???ng"),
("Buffet bu???i tr??a",90000,"su???t","?????y ????? ????? ??n,tr??ng mi???ng"),
("Buffet bu???i t???i",16000,"su???t"," ?????y ????? ????? ??n, tr??ng mi???ng");

INSERT INTO hop_dong (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu)
VALUEs ("2020-12-08","2020-12-08",0,3,1,3),
("2020-07-14","2020-07-21",	200000,	7,3,1),
("2021-03-15","2021-03-17",	50000,3,4,2),
("2021-01-14","2021-01-18",100000,7,5,5),
("2021-07-14","2021-07-15",0,7,	2,6),
("2021-06-01","2021-06-03",	0,7,7,6),
("2021-09-02","2021-09-05",100000,7,4,4),
("2021-06-17","2021-06-18",	150000,3,4,	1),
("2020-11-19","2020-11-19",0,3,4,3),
("2021-04-12","2021-04-14",0,10,3,5),
("2021-04-25","2021-04-25",0,2,	2,1),
("2021-05-25","2021-05-27",0,7,10,1);

INSERT INTO hop_dong_chi_tiet(so_luong,ma_hop_dong,ma_dich_vu_di_kem)
VALUEs (5,2,4),
(8,2,5),
(15,2,6),
(1,3,1),
(11,3,2),
(1,1,3),
(2,1,2),
(2,12,2);

-- Hi???n th??? th??ng tin c???a t???t c??? nh??n vi??n c?? trong h??? th???ng c?? t??n b???t ?????u l??
-- m???t trong c??c k?? t??? ???H???, ???T??? ho???c ???K??? v?? c?? t???i ??a 15 k?? t???.
SELECT nv.ma_nhan_vien,nv.ho_ten,nv.ngay_sinh,nv.so_cmnd,nv.luong,nv.so_dien_thoai,nv.email,nv.dia_chi,nv.ma_vi_tri,vt.ten_vi_tri,nv.ma_trinh_do,td.ten_trinh_do,nv.ma_bo_phan,bp.ten_bo_phan
FROM nhan_vien nv
JOIN vi_tri vt
ON vt.ma_vi_tri = nv.ma_vi_tri
JOIN trinh_do td ON nv.ma_trinh_do = td.ma_trinh_do
JOIN bo_phan bp ON nv.ma_bo_phan = bp.ma_bo_phan
WHERE nv.ho_ten REGEXP '^(\\S+(\\s\\S+)*(\\s(H|K|T)\\S+)+)$' AND CHAR_LENGTH(nv.ho_ten) <= 15;

-- 3. Hi???n th??? th??ng tin c???a t???t c??? kh??ch h??ng c?? ????? tu???i t??? 18 ?????n 50 tu???i v??
-- c?? ?????a ch??? ??? ??????? N???ng??? ho???c ???Qu???ng Tr??????.
SELECT kh.ma_khach_hang, kh.ho_ten,kh.ngay_sinh,kh.gioi_tinh,kh.so_cmnd,kh.so_dien_thoai,kh.email,kh.dia_chi,kh.ma_loai_khach,lk.ten_loai_khach
FROM khach_hang kh
JOIN loai_khach lk
ON kh.ma_loai_khach = lk.ma_loai_khach
WHERE
    TIMESTAMPDIFF(YEAR,
        kh.ngay_sinh,
        DATE(NOW())) > 18
        AND TIMESTAMPDIFF(YEAR,
        kh.ngay_sinh,
        DATE(NOW())) < 50
        AND kh.dia_chi LIKE '%???? n???ng'
        OR kH.dia_chi LIKE '%Qu???ng tr???';
        
-- 4.?????m xem t????ng ???ng v???i m???i kh??ch h??ng ???? t???ng ?????t ph??ng bao nhi??u
-- l???n. K???t qu??? hi???n th??? ???????c s???p x???p t??ng d???n theo s??? l???n ?????t ph??ng c???a
-- kh??ch h??ng. Ch??? ?????m nh???ng kh??ch h??ng n??o c?? T??n lo???i kh??ch h??ng l??
-- ???Diamond???.
SELECT COUNT(*) AS so_lan_dat, kh.ho_ten
FROM khach_hang kh
JOIN hop_dong hd
ON kh.ma_khach_hang = hd.ma_khach_hang
JOIN loai_khach lk
ON kh.ma_loai_khach = lk.ma_loai_khach
WHERE lk.ten_loai_khach LIKE 'Diamond'
GROUP BY kh.ma_khach_hang
ORDER BY so_lan_dat;

-- 5. Hi???n th??? ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong,
-- ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (V???i
-- t???ng ti???n ???????c t??nh theo c??ng th???c nh?? sau: Chi Ph?? Thu?? + S??? L?????ng *
-- Gi??, v???i S??? L?????ng v?? Gi?? l?? t??? b???ng dich_vu_di_kem,
-- hop_dong_chi_tiet) cho t???t c??? c??c kh??ch h??ng ???? t???ng ?????t ph??ng. (nh???ng
-- kh??ch h??ng n??o ch??a t???ng ?????t ph??ng c??ng ph???i hi???n th??? ra).

SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    SUM(dv.chi_phi_thue + hdct.so_luong * gia) AS tong_tien
FROM
    loai_khach lk
        LEFT JOIN
    khach_hang kh ON lk.ma_loai_khach = kh.ma_loai_khach
        LEFT JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY kh.ma_khach_hang
ORDER BY kh.ma_khach_hang;

-- 6. Hi???n th??? ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue,
-- ten_loai_dich_vu c???a t???t c??? c??c lo???i d???ch v??? ch??a t???ng ???????c kh??ch h??ng
-- th???c hi???n ?????t t??? qu?? 1 c???a n??m 2021 (Qu?? 1 l?? th??ng 1, 2, 3).
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
WHERE
    dv.ma_dich_vu NOT IN (SELECT 
           hd.ma_dich_vu
        FROM
           hop_dong hd
        WHERE
            (hd.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-03-31')
                OR (hd.ngay_ket_thuc BETWEEN '2021-01-01' AND '2021-03-31'))
GROUP BY hd.ma_dich_vu;

-- 7. Hi???n th??? th??ng tin ma_dich_vu, ten_dich_vu, dien_tich,
-- so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu c???a t???t c??? c??c lo???i
-- d???ch v??? ???? t???ng ???????c kh??ch h??ng ?????t ph??ng trong n??m 2020 nh??ng
-- ch??a t???ng ???????c kh??ch h??ng ?????t ph??ng trong n??m 2021.
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.so_nguoi_toi_da,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
WHERE
    dv.ma_dich_vu IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            (YEAR(hd.ngay_lam_hop_dong) = 2020
                OR (YEAR(hd.ngay_ket_thuc) = 2020)))
        AND dv.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            (YEAR(hd.ngay_lam_hop_dong) = 2021
                OR (YEAR(hd.ngay_ket_thuc) = 2021)))
GROUP BY hd.ma_dich_vu;

-- 8. Hi???n th??? th??ng tin ho_ten kh??ch h??ng c?? trong h??? th???ng, v???i y??u c???u
-- ho_ten kh??ng tr??ng nhau.
-- H???c vi??n s??? d???ng theo 3 c??ch kh??c nhau ????? th???c hi???n y??u c???u tr??n.
-- cach 1
SELECT 
    kh.ho_ten
FROM
    khach_hang kh
GROUP BY kh.ho_ten;
-- cach 2
SELECT DISTINCT
    kh.ho_ten
FROM
    khach_hang kh;
-- cach 3
SELECT 
    t.ho_ten
FROM
    (SELECT 
        ho_ten, COUNT(ho_ten) AS a
    FROM
        khach_hang
    GROUP BY ho_ten
    HAVING a > 1) AS t;

-- 9.-- Th???c hi???n th???ng k?? doanh thu theo th??ng, ngh??a l?? t????ng ???ng v???i m???i
-- -- th??ng trong n??m 2021 th?? s??? c?? bao nhi??u kh??ch h??ng th???c hi???n ?????t
-- -- ph??ng.
SELECT 
    MONTH(hd.ngay_lam_hop_dong) AS thang, COUNT(hd.ma_hop_dong)
FROM
    hop_dong hd
WHERE
    YEAR(ngay_lam_hop_dong) = 2021
GROUP BY thang
ORDER BY thang;

 
--  10. Hi???n th??? th??ng tin t????ng ???ng v???i t???ng h???p ?????ng th?? ???? s??? d???ng bao nhi??u
-- d???ch v??? ??i k??m. K???t qu??? hi???n th??? bao g???m ma_hop_dong,
-- ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc,
-- so_luong_dich_vu_di_kem (???????c t??nh d???a tr??n vi???c sum so_luong ???
-- dich_vu_di_kem).
SELECT 
    hd.ma_hop_dong,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    hd.tien_dat_coc,
    SUM(hdct.so_luong)
FROM
    hop_dong hd
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
GROUP BY hd.ma_hop_dong;

-- 11. Hi???n th??? th??ng tin c??c d???ch v??? ??i k??m ???? ???????c s??? d???ng b???i nh???ng kh??ch
-- h??ng c?? ten_loai_khach l?? ???Diamond??? v?? c?? dia_chi ??? ???Vinh??? ho???c
-- ???Qu???ng Ng??i???.
SELECT 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    dvdk.gia,
    dvdk.don_vi,
    dvdk.trang_thai
FROM
    loai_khach lk
        JOIN
    khach_hang kh ON lk.ma_loai_khach = kh.ma_loai_khach
        JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
WHERE
    lk.ten_loai_khach = 'Diamond'
        AND (kh.dia_chi LIKE '% Vinh'
        OR kh.dia_chi LIKE '% Qu???ng Ng??i');

-- 12. Hi???n th??? th??ng tin ma_hop_dong, ho_ten (nh??n vi??n), ho_ten (kh??ch
-- h??ng), so_dien_thoai (kh??ch h??ng), ten_dich_vu,
-- so_luong_dich_vu_di_kem (???????c t??nh d???a tr??n vi???c sum so_luong ???
-- dich_vu_di_kem), tien_dat_coc c???a t???t c??? c??c d???ch v??? ???? t???ng ???????c
-- kh??ch h??ng ?????t v??o 3 th??ng cu???i n??m 2020 nh??ng ch??a t???ng ???????c
-- kh??ch h??ng ?????t v??o 6 th??ng ?????u n??m 2021.
SELECT 
    hd.ma_hop_dong,
    nv.ho_ten,
    kh.ho_ten,
    kh.so_dien_thoai,
    dv.ten_dich_vu,
    hd.tien_dat_coc,
    SUM(hdct.so_luong) AS tong_so_luong
FROM
    nhan_vien nv
        LEFT JOIN
    hop_dong hd ON nv.ma_nhan_vien = hd.ma_nhan_vien
        LEFT JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
WHERE
    hd.ma_hop_dong IN (SELECT 
            hd.ma_hop_dong
        FROM
            hop_dong hd
        WHERE
            ((MONTH(hd.ngay_lam_hop_dong) BETWEEN 10 AND 12
                OR MONTH(hd.ngay_ket_thuc) BETWEEN 10 AND 12)
                AND (YEAR(hd.ngay_lam_hop_dong) = 2020
                OR YEAR(hd.ngay_ket_thuc) = 2020))
                AND hd.ma_hop_dong NOT IN ((MONTH(hd.ngay_lam_hop_dong) BETWEEN 1 AND 6
                OR MONTH(hd.ngay_ket_thuc) BETWEEN 1 AND 6)
                AND (YEAR(hd.ngay_lam_hop_dong) = 2021
                OR YEAR(hd.ngay_ket_thuc) = 2021)))
GROUP BY hd.ma_hop_dong;

-- 13. Hi???n th??? th??ng tin c??c D???ch v??? ??i k??m ???????c s??? d???ng nhi???u nh???t b???i c??c
-- Kh??ch h??ng ???? ?????t ph??ng. (L??u ?? l?? c?? th??? c?? nhi???u d???ch v??? c?? s??? l???n s???
-- d???ng nhi???u nh?? nhau).
SELECT 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    dvdk.gia,
    dvdk.don_vi,
    dvdk.trang_thai,
    hdct.so_luong AS so_luong
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
WHERE
    hdct.so_luong = (SELECT 
            MAX(so_luong)
        FROM
            hop_dong_chi_tiet)
GROUP BY hdct.ma_dich_vu_di_kem;

-- 14.-- Hi???n th??? th??ng tin t???t c??? c??c D???ch v??? ??i k??m ch??? m???i ???????c s??? d???ng m???t
-- l???n duy nh???t. Th??ng tin hi???n th??? bao g???m ma_hop_dong,
-- ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (???????c t??nh
-- d???a tr??n vi???c count c??c ma_dich_vu_di_kem).
SELECT 
    hd.ma_hop_dong,
    ldv.ten_loai_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    COUNT(hdct.ma_dich_vu_di_kem) AS so_lan_su_dung
FROM
    dich_vu dv
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem
HAVING so_lan_su_dung = 1
ORDER BY hd.ma_hop_dong;

-- 15. Hi???n thi th??ng tin c???a t???t c??? nh??n vi??n bao g???m ma_nhan_vien, ho_ten,
-- ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi m???i ch??? l???p ???????c
-- t???i ??a 3 h???p ?????ng t??? n??m 2020 ?????n 2021.
SELECT 
    nv.ma_nhan_vien,
    nv.ho_ten,
    td.ten_trinh_do,
    bp.ten_bo_phan,
    nv.so_dien_thoai,
    nv.dia_chi,
    COUNT(hd.ma_nhan_vien) AS so_lan_thuc_hien_hop_dong
FROM
    nhan_vien nv
        JOIN
    trinh_do td ON nv.ma_trinh_do = td.ma_trinh_do
        JOIN
    bo_phan bp ON nv.ma_bo_phan = bp.ma_bo_phan
        JOIN
    hop_dong hd ON nv.ma_nhan_vien = hd.ma_nhan_vien
GROUP BY hd.ma_nhan_vien
HAVING so_lan_thuc_hien_hop_dong <= 3;

-- X??a nh???ng Nh??n vi??n ch??a t???ng l???p ???????c h???p ?????ng n??o t??? n??m 2019
-- ?????n n??m 2021.
set sql_safe_updates = 0;
DELETE FROM nhan_vien 
WHERE
    nhan_vien.ma_nhan_vien NOT IN (SELECT 
        hd.ma_nhan_vien
    FROM
        hop_dong hd
    
    WHERE
        YEAR(hd.ngay_lam_hop_dong) BETWEEN 2019 AND 2021);
set sql_safe_updates = 1;

-- 17. C???p nh???t th??ng tin nh???ng kh??ch h??ng c?? ten_loai_khach t??? Platinum
-- l??n Diamond, ch??? c???p nh???t nh???ng kh??ch h??ng ???? t???ng ?????t ph??ng v???i
-- T???ng Ti???n thanh to??n trong n??m 2021 l?? l???n h??n 10.000.000 VN??.
set sql_safe_updates =0;
update khach_hang set ma_loai_khach = 1 
where ma_khach_hang in (
	select temp.ma_khach_hang from ( SELECT 
    hd.ma_khach_hang
FROM
    loai_khach lk
        LEFT JOIN
    khach_hang kh ON lk.ma_loai_khach = kh.ma_loai_khach
        LEFT JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
    where  kh.ma_loai_khach = 2
GROUP BY kh.ma_khach_hang
having SUM(dv.chi_phi_thue + hdct.so_luong * gia) > 1000000
ORDER BY kh.ma_khach_hang) temp) ;
set sql_safe_updates =1;

-- 20. Hi???n th??? th??ng tin c???a t???t c??? c??c nh??n vi??n v?? kh??ch h??ng c?? trong h???
-- th???ng, th??ng tin hi???n th??? bao g???m id (ma_nhan_vien, ma_khach_hang),
-- ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
SELECT 
    kh.ma_khach_hang AS id,
    kh.ho_ten,
    kh.ngay_sinh,
    kh.email,
    kh.so_dien_thoai,
    kh.dia_chi
FROM
    khach_hang kh 
UNION ALL SELECT 
    nv.ma_nhan_vien,
    nv.ho_ten,
    nv.ngay_sinh,
    nv.email,
    nv.so_dien_thoai,
    nv.dia_chi
FROM
    nhan_vien nv;

-- 19. C???p nh???t gi?? cho c??c d???ch v??? ??i k??m ???????c s??? d???ng tr??n 10 l???n trong
-- n??m 2020 l??n g???p ????i.
set sql_safe_updates = 0;
UPDATE dich_vu_di_kem 
SET 
    gia = gia * 2
WHERE
    ma_dich_vu_di_kem IN (SELECT 
            temp.ma_dich_vu_di_kem
        FROM
            (SELECT 
                dvdk.ma_dich_vu_di_kem, SUM(hdct.so_luong) AS so_lan_su_dung
            FROM
                dich_vu_di_kem dvdk
            JOIN hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
            GROUP BY hdct.ma_dich_vu_di_kem
            HAVING so_lan_su_dung > 10) temp);
set sql_safe_updates = 1;

-- 18. X??a nh???ng kh??ch h??ng c?? h???p ?????ng tr?????c n??m 2021 (ch?? ?? r??ng bu???c
-- gi???a c??c b???ng).
set sql_safe_updates = 0;
set foreign_key_checks = 0;
DELETE FROM khach_hang 
WHERE
    ma_khach_hang NOT IN (SELECT 
        hd.ma_khach_hang
    FROM
        hop_dong hd
    
    WHERE
        YEAR(hd.ngay_lam_hop_dong) >= 2021);
        set foreign_key_checks = 1;
set sql_safe_updates = 1;






















