CREATE DATABASE QuanLyTuyenSinh_DW
USE QuanLyTuyenSinh_DW

CREATE TABLE Dim_Tinh (
    IDTINH CHAR(2) PRIMARY KEY NOT NULL,
    TENTINH NVARCHAR(60)
)
drop table Dim_Tinh
go

CREATE TABLE Dim_Khoi (
    IDKHOI int PRIMARY KEY NOT NULL
)
go

CREATE TABLE Dim_Nganh (
    IDNGANH CHAR(7) PRIMARY KEY NOT NULL,
	TENNGANH NVARCHAR(60)
)
go

CREATE TABLE Dim_Truong (
    IDTRUONG CHAR(3) PRIMARY KEY NOT NULL,
	TENTRUONG NVARCHAR(50)
)
go

CREATE TABLE Dim_NamTuyen (
    IDNAM int PRIMARY KEY NOT NULL
)
go

CREATE TABLE FastKQ_TuyenSinh (
   IDTRUONG CHAR(3), 
   IDNGANH CHAR(7), 
   IDKHOI int,
   IDTINH CHAR(2),
   IDNAM int,
   SOTS int NOT NULL,
   DTB float NOT NULL,
   PRIMARY KEY (IDTRUONG, IDNGANH, IDKHOI, IDTINH, IDNAM),
   CONSTRAINT FK_KQTS_Truong FOREIGN KEY (IDTRUONG) REFERENCES DIM_TRUONG(IDTRUONG),
   CONSTRAINT FK_KQTS_Nganh FOREIGN KEY (IDNGANH) REFERENCES dim_NGANH(IDNGANH),
   CONSTRAINT FK_KQTS_Khoi FOREIGN KEY (IDKHOI) REFERENCES dim_KHOI(IDKHOI),
   CONSTRAINT FK_KQTS_Tinh FOREIGN KEY (IDTINH) REFERENCES Dim_Tinh(IDTINH),
   CONSTRAINT FK_KQTS_Nam FOREIGN KEY (IDNAM) REFERENCES DIM_NAMTUYEN(IDNAM)
)
go


create proc Update_DimTruong @idTruong char(3),	
							@TenTruong nvarchar(50)
as
begin
	update Dim_Truong 
	set 
		TENTRUONG = @TenTruong
	where IDTRUONG = @idTruong
end 
go

create proc Update_DimTinh @idTinh char(2),
							@TenTinh nvarchar(50)
as
begin
	Update Dim_Tinh
	set 
		TENTINH = @TenTinh
	where IDTINH = @idTinh
end
go

create proc Update_DimNganh @idNganh char(7),
							@TenNganh nvarchar(50)
as
begin
	Update Dim_Nganh
	set 
		TENNGANH = @TenNganh
	where IDNGANH = @idNganh
end
go

create proc Update_Fact @idTruong char(3),
							@idNganh char(7),
							@idKhoi int,
							@idTinh CHAR(2),
							@idNam int,
							@SOTS int,
							@DTB varchar(50)
as
begin
	Update FastKQ_TuyenSinh
	set SOTS = @SOTS where IDTRUONG = @idTruong and 
							IDNGANH = @idNganh and 
							IDKHOI = @idKhoi and 
							IDTINH = @idTinh and
							IDNAM = @idNam
	Update FastKQ_TuyenSinh
	set DTB = @DTB where IDTRUONG = @idTruong and 
							IDNGANH = @idNganh and 
							IDKHOI = @idKhoi and 
							IDTINH = @idTinh and
							IDNAM = @idNam
end
go