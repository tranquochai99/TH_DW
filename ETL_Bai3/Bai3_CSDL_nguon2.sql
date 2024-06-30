create database TheoDoiKhamChuaBenh
use TheoDoiKhamChuaBenh 
create table DICHVU (
	MA_DV char(5) primary key not null,
	TENDV nvarchar(100) not null
	)

create table DICHVU_SUDUNG (
	STT int not null,
	MA_DICHVU char(5) primary key not null,
	SOLUONG int not null,
	DONGIA money not null
	)

create table DOTHAMKHAM (
	STT int not null,
	NGAY date not null,
	MATHE_BHYTE char(20) primary key not null,
	MACS_YTE varchar(20) not null
	)

create table CAPTHUOC (
	STT int not null,
	MSTHUOC char(20) primary key not null,
	SOLUONG int not null,
	DONGIA money not null
	)

create table DMTHUOC (
	MSTHUOC char(5) primary key not null,
	TENTHUOC varchar(100) not null,
	DVT varchar(10) not null
	)

alter table DICHVU_SUDUNG add
	constraint FK_DV_TK foreign key (STT) references DOTHAMKHAM(STT)
alter table CAPTHUOC add
	constraint FK_CT_TK foreign key (MSTHUOC) references DOT

alter table CAPTHUOC add
	constraint FK_1 foreign key (STT) references DOTHAMKHAM(STT)

alter table DOTHAMKHAM add primary key (STT, MATHE_BHYTE)
