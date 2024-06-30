create database QuanLyTuyenSinh
go
use QuanLyTuyenSinh
go
create table Truong
(
	MATRUONG char(3) not null,
	TENTRUONG nvarchar(50) not null,
	primary key(MATRUONG)
)
go
drop table truong

create table DSTuyenSinh
(
	IDHS char(12) not null,
	MATRUONG char(3) not null,
	NAM int,
	KHOI char(2) not null,
	HO nvarchar(50) not null,
	TEN nvarchar(20) not null,
	MAHUYEN char(2) not null,
	MATINH char(2) not null,
	MANGANH char(7) not null,
	DOITUONG varchar(20),
	KHUVUC char(1) not null,
	DTC varchar(20),
	primary key(IDHS)
)
go
create table Nganh
(
	MANGANH char(7) not null,
	TENNGANH nvarchar(60) not null,
	primary key(MANGANH),
)
go
drop table Nganh

create table Tinh
(
	MATINH char(2) not null,
	TENTINH nvarchar(60) not null,
	primary key(MATINH),
)
go

alter table DSTuyenSinh add
	constraint FK_DSTS_Truong foreign key (MATRUONG) references Truong(MATRUONG)
alter table DSTuyenSinh add
	constraint FK_DSTS_Tinh foreign key (MATINH) references Tinh(MATINH)
alter table DSTuyenSinh add
	constraint FK_DSTS_Nganh foreign key (MANGANH) references Nganh(MANGANH)

insert into Truong(MATRUONG, TENTRUONG)
values
	('DDQ', N'Đại học Kinh tế - Đại học Đà Nẵng'),
	('DDS', N'Đại học Sư phạm - Đại học Đà Nẵng'),
	('DDK', N'Đại học Bách khoa - Đại học Đà Nẵng')
	('DTU', N'Đại học Duy Tân')
go 
insert into Truong(MATRUONG, TENTRUONG) values ('DTU', N'Đại học Duy Tân')

insert into Nganh(MANGANH, TENNGANH)
values 
	('7340405', N'Hệ thống thông tin quản lý'),
	('7340122', N'Thương mại điện tử'),
	('7340420', N'Khoa học dữ liệu và Phân tích kinh doanh')
go
insert into Nganh(MANGANH, TENNGANH)
values 
	('7340333', N'Quản trị kinh doanh')
go

insert into TINH(MATINH, TENTINH)
values
	('46', N'Thừa Thiên Huế'),
	('48', N'Đà Nẵng'),
	('49', N'Quảng Nam')
go
insert into TINH(MATINH, TENTINH)
values
	('45', N'Quảng Trị')
go
insert into DSTuyenSinh
values 
	('201123213213', 'DDQ', 2020, '46', N'Trần Văn', 'A', '02', '48', '7340405', null, '1', 22),
	('201121588999', 'DDQ', 2019, '46', N'Nguyễn Thị', 'B', '05', '49', '7340122', null, '2', 25),
	('201121531123', 'DDQ', 2021, '46', N'Nguyễn văn', 'C', '03', '46', '7340420', null, '2', 21)
go 

insert into DSTuyenSinh
values 
	('201121521223', 'DDQ', 2023, '46', N'Trần Văn', 'E', '02', '48', '7340405', null, '1', 24),
	('201512642378', 'DDQ', 2023, '45', N'Nguyễn Thị', 'F', '05', '49', '7340122', null, '2', 24)
go 