CREATE DATABASE QLSANPHAM

use  QLSANPHAM

create table SanPham
(
	IDSP int not null primary key,
	TenSP varchar(500),
	GiaSP int,
	AnhSP varchar(200),
	ChiTiet text,
	HangSP int,
	SP int,
	TrangThai bit,
	DieuKien bit
	
)
create table LienHe
(
	IDLH int not null primary key,
	Ten varchar(50),
	NoiDung text,
	HinhAnh text,
	TrangThai bit,
	SDT int,
	Email varchar(50)
)

create table ChiTieTSP
(
	ID int not null primary key,
	Cus_ID int,
	Ngay datetime,
	TrangThai int
)


create table KhachHang
(
	ID int not null primary key,
	Name varchar(20),
	TenDN varchar(30),
	GioiTinh bit,
	phone int,
	KieuKH int,
	email varchar(50),
	Anh text
)

 create table cart
 (
	IDCart int not null primary key,
	IDSP int,
	Gia int,
	SoLuong int,
	total float 
 )
 
 create table login
 (
	IDLog int not null primary key,
	Ten varchar(50),
	Pass varchar(60),
	Email varchar(50)
 )
 
 create table kieuNgDung
 (
	IDNgDung int not null primary key,
	Kieu text,
 )
 
 create table HangSP
 (
	IDHang int not null primary key,
	TenHang varchar(60)
 )
 insert into HangSP(IDHang,TenHang)
 values (1,'adidas')
 insert into HangSP(IDHang,TenHang)
 values (2,'nike')
 insert into HangSP(IDHang,TenHang)
 values (3,'bitis')
 insert into HangSP(IDHang,TenHang)
 values (4,'fila')
 

 
 
 create table SP
 (
	IDSP int not null primary key,
	KieuSP varchar(60)
 )
 insert into SP(IDSP,KieuSP)
 values (1,'QuanDai')
 insert into SP(IDSP,KieuSP)
 values (2,'QuanDui')
 insert into SP(IDSP,KieuSP)
 values (3,'AoThunNganTay')
 insert into SP(IDSP,KieuSP)
 values (4,'AoThunTayDai')
 insert into SP(IDSP,KieuSP)
 values (5,'Day')
 insert into SP(IDSP,KieuSP)
 values (6,'Vo')
 
 
 insert into kieuNgDung(IDNgDung,Kieu)
 values (1,'admin')
 insert into kieuNgDung(IDNgDung,Kieu)
 values (2,'customer')