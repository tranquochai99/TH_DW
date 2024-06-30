insert into QUAN(MAQUAN, TenQUAN)
values 
('01', N'Hải Châu'),
('02', N'Thanh Khê'),
('03', N'Sơn Trà'),
('04', N'Ngũ Hành Sơn'),
('05', N'Liên Chiểu'),
('07', N'Cẩm Lệ')
insert into COSO_YTE(MACS_YTE, TenCS_YTE, MAQUAN)
values 
('48001', N'Bệnh viện Đà Nẵng', '01'),
('48004', N'Trung tâm y tế quận Thanh Khê', '02'),
('48005', N'Trung tâm y tế quận Sơn Trà', '03'),
('48008', N'Trung tâm y tế quận Ngũ Hành Sơn', '04'),
('48012', N'Bệnh viện giao thông vận tải Đà Nẵng', '05'),
('48013', N'Bệnh viện Da Liễu', '02')

insert into DONVI (MA_DONVI, Ten_DONVI, MALOAI_DV)
values
('DVTH001', N'Trường đại học Kinh tế - DHDN', '1'),
('DVTH002', N'Khoa Y - DHDN', '1'),
('DVTH003', N'Trường đại học Bách Khoa - DHDN', '1'),
('DVTH004', N'Trường đại học Ngoại Ngữ - DHDN','1'),
('DVTH005', N'Trường đại học Sư Phạm - DHDN','1')


insert into THE_BHYTE(MATHE_BHYTE, HO, TEN, NAMSINH, MA_DONVI, MA_CS_YTE_DK, MAQUAN)
values 
('SV4430123456789', N'Trần Quốc', N'Hải', '2002', 'DVTH001', '48001', '04'),
('SV4430123456799', N'Dương Thị Kim', N'Cúc', '2002', 'DVTH002', '48004', '04'),
('SV4430123456811', N'Phạm Thị', N'Vân', '2002', 'DVTH002', '48004', '04'),
('SV4430123456922', N'Nguyễn Thị Thúy', N'Hằng', '2002', 'DVTH003', '48012', '05'),
('SV4430123456100', N'Nguyễn Thị Diễm', N'Quỳnh', '2002', 'DVTH004', '48013', '07'),
('SV4430123456200', N'Hoàng Thị Ngọc', N'Oanh', '2002', 'DVTH005', '48008', '04')

insert into LOAIDONVI (MA_LOAIDONVI, Ten_LOAIDONVI)
values 
('1',N'Trường học'),
('2',N'Công ty THHH'),
('3',N'Công ty CP')


-- CSDL 2
insert into DICHVU (MA_DV, TENDV)
values
    ('00001', 'Dich vu 1'),
    ('00002', 'Dich vu 2'),
    ('00003', 'Dich vu 3'),
	('00004', 'Dich vu 4'),
	('00005', 'Dich vu 5');

insert into DICHVU_SUDUNG (STT, MA_DICHVU, SOLUONG, DONGIA)
values
    (1, '00001', 3, 100.00),
    (2, '00002', 2, 150.00),
	(3, '00003', 1, 250.00),
	(4, '00004', 2, 200.00),
	(5, '00005', 3, 150.00);

insert into DOTHAMKHAM (STT, NGAY, MATHE_BHYTE, MACS_YTE)
values
    (1, '2023-10-11', 'SV4430123456789', '48001'),
    (2, '2023-10-12', 'SV4430123456799', '48004'),
	(3, '2023-10-12', 'SV4430123456789', '48005'),
	(4, '2023-10-11', 'SV4430123456799', '48012'),
	(5, '2023-10-13', 'SV4430123456811', '48013'),
	(6, '2023-10-14', 'SV4430123456922', '48001'),
	(7, '2023-10-15', 'SV4430123456811', '48004'),
	(8, '2023-10-15', 'SV4430123456922', '48005'),
	(9, '2023-10-14', 'SV4430123456100', '48012'),
	(10,'2023-10-13', 'SV4430123456200', '48013');

insert into CAPTHUOC (STT, MSTHUOC, SOLUONG, DONGIA)
values
    (1, '00001', 5, 50.00),
	(2, '00002', 4, 150.00),
	(2, '00004', 5, 25.00),
	(3, '00004', 2, 100.00),
	(3, '00005', 1, 55.00),
	(3, '00006', 2, 50.00),
	(4, '00007', 3, 100.00),
	(5, '00008', 4, 50.00),
	(6, '00009', 5, 25.00),
    (7, '00010', 3, 75.00);

insert into DMTHUOC (MSTHUOC, TENTHUOC, DVT)
values
    ('00001', N'Thuốc A', 'Viên'),
    ('00002', N'Thuốc B', 'Viên'),
    ('00004', N'Thuốc C', 'Chai'),
	('00005', N'Thuốc D', 'Chai'),
	('00006', N'Thuốc E', 'Viên'),
	('00007', N'Thuốc F', 'Chai'),
	('00008', N'Thuốc G', 'Chai'),
	('00009', N'Thuốc H', 'Chai'),
	('00010', N'Thuốc I', 'Viên');
