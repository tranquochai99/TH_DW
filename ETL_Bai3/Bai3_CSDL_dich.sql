CREATE DATABASE DW_Bai3
USE DW_Bai3

CREATE TABLE DIM_CSYTE (
    MACS_YTE CHAR(5) PRIMARY KEY NOT NULL,
    TenCS_YTE NVARCHAR(20)
)

CREATE TABLE DIM_QUAN (
    MAQUAN CHAR(2) PRIMARY KEY NOT NULL,
    TenQUAN NVARCHAR(20)
)

CREATE TABLE DIM_LOAIDONVI (
    MA_LOAIDONVI CHAR(1) PRIMARY KEY NOT NULL,
    Ten_LOAIDONVI NVARCHAR(20)
)



CREATE TABLE Fact_THONGKE (
    NGAY DATE,
    MA_DONVI CHAR(7),
    MAQUAN CHAR(2),
    MACS_YTE CHAR(5),
    Tong_CPDV INT,
    Tong_CPTHUOC INT,
    Tong_SOLUOTKHAM INT,
    FOREIGN KEY (MAQUAN) REFERENCES DIM_QUAN(MAQUAN),
    FOREIGN KEY (MACS_YTE) REFERENCES DIM_CSYTE(MACS_YTE)
)



create proc Update_DimQuan @MaQuan char(2),
							@TenQuan nvarchar(20)
as
begin
	Update DIM_QUAN
	set TenQUAN = @TenQuan where MAQUAN = @MaQuan
end 

create proc Update_DimCSYTE @MaCSYTE char(2),
							@TenCSYTE nvarchar(20)
as
begin
	Update DIM_CSYTE
	set TenCS_YTE = @TenCSYTE where MACS_YTE = @MaCSYTE
end 

create proc Update_DimLoaiDonVi @MaLoaiDonVi char(1),
							@TenLoaiDonVi nvarchar(20)
as
begin
	Update DIM_LOAIDONVI
	set Ten_LOAIDONVI = @TenLoaiDonVi where MA_LOAIDONVI = @MaLoaiDonVi
end 

create proc Update_Fact @Ngay date,
				@MA_DONVI CHAR(7),
				@MAQUAN CHAR(2),
				@MACS_YTE CHAR(5),
				@Tong_CPDV money,
				@Tong_CPTHUOC money,
				@Tong_SOLUOTKHAM INT
as
begin
	Update Fact_THONGKE
		set Tong_CPDV = @Tong_CPDV where Ngay = @Ngay and MA_DONVI = @MA_DONVI and MAQUAN = @MAQUAN and MACS_YTE=@MACS_YTE
	Update Fact_THONGKE
		set Tong_CPTHUOC = @Tong_CPTHUOC where Ngay = @Ngay and MA_DONVI = @MA_DONVI and MAQUAN = @MAQUAN and MACS_YTE=@MACS_YTE
	Update Fact_THONGKE
		set Tong_SOLUOTKHAM = @Tong_SOLUOTKHAM where Ngay = @Ngay and MA_DONVI = @MA_DONVI and MAQUAN = @MAQUAN and MACS_YTE=@MACS_YTE
end 
