DROP DATABASE IF EXISTS quan_li_diem_thi;

CREATE DATABASE quan_li_diem_thi;

USE quan_li_diem_thi;

CREATE TABLE hoc_sinh (
    ma_hoc_sinh int AUTO_INCREMENT,
    ten_hoc_sinh VARCHAR(50) NOT NULL,
    ngay_sinh DATETIME NOT NULL,
    lop VARCHAR(50) NOT NULL,
    gioi_tinh VARCHAR(20) NOT NULL,
    PRIMARY KEY (ma_hoc_sinh)
);

CREATE TABLE mon_hoc (
    ma_mon_hoc int AUTO_INCREMENT NOT NULL,
    ten_mon_hoc VARCHAR(50) NOT NULL,
    PRIMARY KEY (ma_mon_hoc)
);

CREATE TABLE bang_diem (
    ma_hoc_sinh int  NOT NULL,
    ma_mon_hoc int auto_increment NOT NULL,
    diem_thi INT NOT NULL,
    ngay_kiem_tra DATETIME NOT NULL,
    PRIMARY KEY (ma_hoc_sinh , ma_mon_hoc),
    FOREIGN KEY (ma_hoc_sinh)
        REFERENCES hoc_sinh (ma_hoc_sinh),
    FOREIGN KEY (ma_mon_hoc)
        REFERENCES mon_hoc (ma_mon_hoc)
);

CREATE TABLE giao_vien (
    ma_giao_vien int AUTO_INCREMENT,
    ten_giao_vien VARCHAR(50) NOT NULL,
    so_dien_thoai VARCHAR(20) NOT NULL,
    PRIMARY KEY (ma_giao_vien)
);

ALTER TABLE mon_hoc ADD ma_giao_vien int;

ALTER TABLE mon_hoc ADD FOREIGN KEY(ma_giao_vien) REFERENCES giao_vien (ma_giao_vien);


