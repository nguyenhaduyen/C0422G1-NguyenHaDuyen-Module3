DROP DATABASE IF EXISTS goods;

CREATE DATABASE goods;

USE goods;
CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT PRIMARY KEY,
    ten_nha_cung_cap VARCHAR(30) NOT NULL,
    dia_chi VARCHAR(50) NOT NULL,
    so_dien_thoai varchar (20)
);

CREATE TABLE so_dien_thoai_nha_cung_cap (
    so_dien_thoai VARCHAR(20) not null primary key,
    ma_nha_cung_cap int,
    foreign key (ma_nha_cung_cap) references nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE don_dat_hang (
    so_don_hang INT PRIMARY KEY,
    ngay_dat_hang DATETIME NOT NULL,
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE phieu_xuat (
    so_phieu_xuat INT PRIMARY KEY,
    ngay_xuat DATETIME NOT NULL
);

CREATE TABLE vat_tu (
    ma_vat_tu INT PRIMARY KEY,
    ten_vat_tu VARCHAR(30) NOT NULL
);

CREATE TABLE phieu_xuat_vat_tu (
    so_phieu_xuat INT,
    ma_vat_tu INT,
    don_gia_xuat FLOAT NOT NULL,
    so_luong_xuat INT NOT NULL,
    PRIMARY KEY (so_phieu_xuat , ma_vat_tu),
    FOREIGN KEY (so_phieu_xuat)
        REFERENCES phieu_xuat (so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY,
    ngay_nhap DATETIME
);

CREATE TABLE phieu_nhap_vat_tu (
    don_gia_nhap FLOAT NULL,
    so_luong_nhap INT NOT NULL,
    so_phieu_nhap INT,
    ma_vat_tu INT,
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE don_dat_hang_vat_tu (
    so_don_hang INT,
    ma_vat_tu INT,
    FOREIGN KEY (so_don_hang)
        REFERENCES don_dat_hang (so_don_hang),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);