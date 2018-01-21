CREATE DATABASE TTTH
GO
USE TTTH
GO
CREATE TABLE TaiKhoan
(
	TenDangNhap NVARCHAR(50) NOT NULL,
	MatKhau NVARCHAR(50) NOT NULL,
	HoTen NVARCHAR(50) NOT NULL,
	SDT CHAR(13) NOT NULL, 
	DiaChi NVARCHAR(100) NOT NULL,
	NgheNghiep NVARCHAR(50) NOT NULL,
	QuyenHan CHAR(5) NOT NULL,
	PRIMARY KEY(TenDangNhap),
)
GO
CREATE TABLE ChuongTrinhDaoTao
(
	MaCTDT VARCHAR(10) NOT NULL,
	TenCTDT NVARCHAR(50) NOT NULL,
	HocPhi FLOAT NOT NULL,
	PRIMARY KEY(MaCTDT),

)
GO
CREATE TABLE LichKhaiGiang
(
	MaLop VARCHAR(50) NOT NULL,
	TenKhoaHoc VARCHAR(10) NOT NULL,
	ThoiGian NVARCHAR(50) NOT NULL,
	LichKhaiGiang DATE NOT NULL,
	PhongHoc NVARCHAR(50) NOT NULL,
	ThoiGianHoc NVARCHAR(20) NOT NULL,
	PRIMARY KEY(MaLop),
)
GO
CREATE TABLE LopHocVien
(
	MaLop VARCHAR(50) NOT NULL,
	TaiKhoan NVARCHAR(50) NOT NULL
	PRIMARY KEY(MaLop,TaiKhoan)
)
GO
ALTER TABLE dbo.LichKhaiGiang
ADD FOREIGN KEY(TenKhoaHoc)
REFERENCES dbo.ChuongTrinhDaoTao(MaCTDT)
GO 
ALTER TABLE dbo.LopHocVien 
ADD FOREIGN KEY(MaLop)
REFERENCES dbo.LichKhaiGiang(MaLop)
GO 
ALTER TABLE dbo.LopHocVien
ADD FOREIGN KEY(TaiKhoan)
REFERENCES dbo.TaiKhoan(TenDangNhap)
--- Nhập liệu
GO
INSERT INTO dbo.TaiKhoan
        ( TenDangNhap ,
          MatKhau ,
          HoTen ,
          SDT ,
          DiaChi ,
          NgheNghiep,
		  QuyenHan
        )
VALUES  ( N'Hieu@gmail.com' , -- TenDangNhap - nvarchar(50)
          N'123' , -- MatKhau - nvarchar(50)
          N'Hoàng Minh Hiếu' , -- HoTen - nvarchar(50)
          '0192012912' , -- SDT - char(13)
          N'Đồng Nai' , -- DiaChi - nvarchar(100)
          N'Sinh viên',  -- NgheNghiep - nvarchar(50)
		  'Admin'
        )
		INSERT INTO dbo.TaiKhoan
        ( TenDangNhap ,
          MatKhau ,
          HoTen ,
          SDT ,
          DiaChi ,
          NgheNghiep,
		  QuyenHan
        )
VALUES  ( N'Phan@gmail.com' , -- TenDangNhap - nvarchar(50)
          N'123' , -- MatKhau - nvarchar(50)
          N'Nguyễn Ngọc Phan' , -- HoTen - nvarchar(50)
          '0122122912' , -- SDT - char(13)
          N'Hồ Chí Minh' , -- DiaChi - nvarchar(100)
          N'Sinh viên',  -- NgheNghiep - nvarchar(50)
		  'Admin'
        )
GO

INSERT INTO dbo.TaiKhoan VALUES  ( N'Quang@gmail.com' , N'123' , N'Nguyễn Kỳ Quang' , '0909220330' , N'Quảng Ngãi' , N'Sinh viên', 'User' )
INSERT INTO dbo.TaiKhoan VALUES  ( N'Sy@gmail.com' , N'123' , N'Nguyễn Văn Sỹ' , '0909220350' , N'Đồng Nai' , N'Sinh viên', 'User' )
INSERT INTO dbo.TaiKhoan VALUES  ( N'QuangTrung@gmail.com' , N'123' , N'Lưu Quan Trung' , '0163220330' , N'Vũng Tàu' , N'Sinh viên', 'User' )
INSERT INTO dbo.TaiKhoan VALUES  ( N'Khiem@gmail.com' , N'123' , N'Nguyễn Trọng Khiêm' , '01223120330' , N'Ninh Thuận' , N'Sell bất động sản', 'User' )
INSERT INTO dbo.TaiKhoan VALUES  ( N'QuangHoang@gmail.com' , N'123' , N'Hoàng Minh Quang' , '0989220330' , N'Quảng Ngãi' , N'Sinh viên', 'User' )
INSERT INTO dbo.TaiKhoan VALUES  ( N'TrucDut@gmail.com' , N'123' , N'Nguyễn Trung Trực' , '0167776898' , N'Quảng Ngãi' , N'Sinh viên', 'User' )
INSERT INTO dbo.TaiKhoan VALUES  ( N'HungPhan@gmail.com' , N'123' , N'Phan Văn Hưng' , '09222223456' , N'Hưng Yên' , N'Sinh viên', 'User' )
INSERT INTO dbo.TaiKhoan VALUES  ( N'KhanhHuy@gmail.com' , N'123' , N'Nguyễn Khánh Huy' , '0909878992' , N'TP Hồ chí Minh' , N'Sinh viên', 'User' )
INSERT INTO dbo.TaiKhoan VALUES  ( N'Thuc@gmail.com' , N'123' , N'Nguyễn Thị Thức' , '0113114115' , N'Ninh Thuận' , N'Sell bất động sản', 'User' )
INSERT INTO dbo.TaiKhoan VALUES  ( N'Phung@gmail.com' , N'123' , N'Lê Thị Kiều Phụng' , '0613224567' , N'Tiền Giang' , N'Sinh viên', 'User' )
GO 
INSERT INTO dbo.TaiKhoan
        ( TenDangNhap ,
          MatKhau ,
          HoTen ,
          SDT ,
          DiaChi ,
          NgheNghiep,
		  QuyenHan
        )
VALUES  ( N'Truong@gmail.com' , -- TenDangNhap - nvarchar(50)
          N'123' , -- MatKhau - nvarchar(50)
          N'Trần Nhật Trường' , -- HoTen - nvarchar(50)
          '0122010201' , -- SDT - char(13)
          N'Đồng Nai' , -- DiaChi - nvarchar(100)
          N'Sinh viên', -- NgheNghiep - nvarchar(50)
		  'User'
        )
GO
INSERT INTO dbo.ChuongTrinhDaoTao
        ( MaCTDT, TenCTDT, HocPhi )
VALUES  ( 'CCDT1', -- MaCTDT - varchar(10)
          N'Lập trình web', -- TenCTDT - nvarchar(50)
          2000000.0  -- HocPhi - float
          )
INSERT INTO dbo.ChuongTrinhDaoTao
        ( MaCTDT, TenCTDT, HocPhi )
VALUES  ( 'CCDT2', -- MaCTDT - varchar(10)
          N'Tin học văn phòng', -- TenCTDT - nvarchar(50)
          2500000.0  -- HocPhi - float
          )
INSERT INTO dbo.ChuongTrinhDaoTao
        ( MaCTDT, TenCTDT, HocPhi )
VALUES  ( 'CCDT3', -- MaCTDT - varchar(10)
          N'Lập trình android', -- TenCTDT - nvarchar(50)
          3000000.0  -- HocPhi - float
          )
INSERT INTO dbo.ChuongTrinhDaoTao
        ( MaCTDT, TenCTDT, HocPhi )
VALUES  ( 'CCDT4', -- MaCTDT - varchar(10)
          N'Lập trình Font-end', -- TenCTDT - nvarchar(50)
          2200000.0  -- HocPhi - float
          )
INSERT INTO dbo.ChuongTrinhDaoTao
        ( MaCTDT, TenCTDT, HocPhi )
VALUES  ( 'CCDT5', -- MaCTDT - varchar(10)
          N'Mạng máy tính', -- TenCTDT - nvarchar(50)
          1500000.0  -- HocPhi - float
          )
INSERT INTO dbo.ChuongTrinhDaoTao
        ( MaCTDT, TenCTDT, HocPhi )
VALUES  ( 'CCDT6', -- MaCTDT - varchar(10)
          N'Lập trình căn bản', -- TenCTDT - nvarchar(50)
          4500000.0  -- HocPhi - float
          )

------------- Nhập lịch khai giảng

GO

INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		  ThoiGianHoc
        )
VALUES  ( 'LOP01' , -- MaLop - varchar(50)
          'CCDT1' , -- TenKhoaHoc - varchar(10)
          N'Thứ 2-4-6(13:30-16:30)' , -- ThoiGian - nvarchar(50)
          '20171020' , -- LichKhaiGiang - date
          N'Phòng máy 1' , -- PhongHoc - nvarchar(50)
		  N'3 tháng'
        )
INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		  ThoiGianHoc
        )
VALUES  ( 'LOP02' , -- MaLop - varchar(50)
          'CCDT1' , -- TenKhoaHoc - varchar(10)
          N'Thứ 3-5-7(13:30-16:30)' , -- ThoiGian - nvarchar(50)
          '20171022' , -- LichKhaiGiang - date
          N'Phòng máy 1' , -- PhongHoc - nvarchar(50)
		  N'3 tháng'
        )
INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		  ThoiGianHoc
        )
VALUES  ( 'LOP03' , -- MaLop - varchar(50)
          'CCDT1' , -- TenKhoaHoc - varchar(10)
          N'Thứ 2-4-6(17:30-21:30)' , -- ThoiGian - nvarchar(50)
          '20171022' , -- LichKhaiGiang - date
          N'Phòng máy 2' , -- PhongHoc - nvarchar(50)
		  N'3 tháng'
        )
INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		  ThoiGianHoc
        )
VALUES  ( 'LOP04' , -- MaLop - varchar(50)
          'CCDT1' , -- TenKhoaHoc - varchar(10)
          N'Thứ 3-5-7(7:30-10:30)' , -- ThoiGian - nvarchar(50)
          '20171023' , -- LichKhaiGiang - date
          N'Phòng máy 2' , -- PhongHoc - nvarchar(50)
		  N'4 tháng'
        )

INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		  ThoiGianHoc
        )
VALUES  ( 'LOP05' , -- MaLop - varchar(50)
          'CCDT2' , -- TenKhoaHoc - varchar(10)
          N'Thứ 2-4-6(13:30-16:30)' , -- ThoiGian - nvarchar(50)
          '20171102' , -- LichKhaiGiang - date
          N'Phòng máy 3' , -- PhongHoc - nvarchar(50)
		  N'2 tháng'
        )
INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		  ThoiGianHoc
        )
VALUES  ( 'LOP06' , -- MaLop - varchar(50)
          'CCDT2' , -- TenKhoaHoc - varchar(10)
          N'Thứ 3-5-7(13:30-16:30)' , -- ThoiGian - nvarchar(50)
          '20171220' , -- LichKhaiGiang - date
          N'Phòng máy 3' , -- PhongHoc - nvarchar(50)
		  N'4 tháng'
        )
INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		   ThoiGianHoc
        )
VALUES  ( 'LOP07' , -- MaLop - varchar(50)
          'CCDT3' , -- TenKhoaHoc - varchar(10)
          N'Thứ 2-4-6(13:30-16:30)' , -- ThoiGian - nvarchar(50)
          '20171012' , -- LichKhaiGiang - date
          N'Phòng máy 4' , -- PhongHoc - nvarchar(50)
		  N'3 tháng'
        )
INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		   ThoiGianHoc
        )
VALUES  ( 'LOP09' , -- MaLop - varchar(50)
          'CCDT5' , -- TenKhoaHoc - varchar(10)
          N'Thứ 2-3-4(7:30-10:30)' , -- ThoiGian - nvarchar(50)
          '20171026' , -- LichKhaiGiang - date
          N'Phòng máy 1' , -- PhongHoc - nvarchar(50)
		  N'2 tháng'
        )
		INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		  ThoiGianHoc
        )
VALUES  ( 'LOP08' , -- MaLop - varchar(50)
          'CCDT4' , -- TenKhoaHoc - varchar(10)
          N'Thứ 2-3-4(13:30-16:30)' , -- ThoiGian - nvarchar(50)
          '20171012' , -- LichKhaiGiang - date
          N'Phòng máy 4' , -- PhongHoc - nvarchar(50)
		  N'6 tháng'
        )
		INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		   ThoiGianHoc
        )
VALUES  ( 'LOP10' , -- MaLop - varchar(50)
          'CCDT6' , -- TenKhoaHoc - varchar(10)
          N'Thứ 3-4-5(7:30-10:30)' , -- ThoiGian - nvarchar(50)
          '20171016' , -- LichKhaiGiang - date
          N'Phòng máy 3' , -- PhongHoc - nvarchar(50)
		  N'3 tháng'
        )
		INSERT INTO dbo.LichKhaiGiang
        ( MaLop ,
          TenKhoaHoc ,
          ThoiGian ,
          LichKhaiGiang ,
          PhongHoc ,
		  ThoiGianHoc
        )
VALUES  ( 'LOP11' , -- MaLop - varchar(50)
          'CCDT6' , -- TenKhoaHoc - varchar(10)
          N'Thứ 3-5-7(17:30-22:30)' , -- ThoiGian - nvarchar(50)
          '20170216' , -- LichKhaiGiang - date
          N'Phòng máy 1' , -- PhongHoc - nvarchar(50)
		  N'4 tháng'
        )
GO 
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP01', N'Phan@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP01', N'Hieu@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP01', N'Quang@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP01', N'Truong@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP01', N'Sy@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP01', N'Khiem@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP01', N'QuangHoang@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP02', N'Quang@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP02', N'Truong@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP02', N'Sy@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP02', N'Khiem@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP03', N'Truong@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP03', N'Sy@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP03', N'Khiem@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP03', N'QuangHoang@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP03', N'Quang@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP08', N'Phan@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP08', N'Hieu@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP08', N'Quang@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP08', N'Truong@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP08', N'Sy@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP08', N'Khiem@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP11', N'Phan@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP11', N'Hieu@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP11', N'Quang@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP11', N'Truong@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP11', N'Sy@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP11', N'Khiem@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP05', N'Phan@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP05', N'Hieu@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP05', N'Quang@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP05', N'Truong@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP05', N'Sy@gmail.com')
INSERT INTO dbo.LopHocVien VALUES  ( 'LOP05', N'Khiem@gmail.com')

GO 
CREATE PROCEDURE [dbo].[CacKhoaHocCuaToi]
@TenDangNhap NVARCHAR(50) 
AS
BEGIN
	SELECT LHV.MaLop, CTDT.TenCTDT, LKG.ThoiGian, LKG.PhongHoc, CTDT.HocPhi, LKG.LichKhaiGiang, LKG.ThoiGianHoc
	FROM dbo.TaiKhoan TK JOIN dbo.LopHocVien LHV ON LHV.TaiKhoan = TK.TenDangNhap
	JOIN dbo.LichKhaiGiang LKG ON LKG.MaLop = LHV.MaLop JOIN dbo.ChuongTrinhDaoTao CTDT ON CTDT.MaCTDT = LKG.TenKhoaHoc
	WHERE TK.TenDangNhap= @TenDangNhap
END
GO
CREATE PROCEDURE [dbo].[DanhSachHocVienTheoLop]
@MaLop NVARCHAR(50)
AS
BEGIN
	SELECT TK.TenDangNhap, TK.HoTen, TK.SDT, TK.DiaChi, TK.NgheNghiep
	FROM dbo.TaiKhoan TK JOIN  dbo.LopHocVien LHV ON LHV.TaiKhoan = TK.TenDangNhap
	WHERE LHV.MaLop = @MaLop
END
GO
CREATE PROCEDURE [dbo].[LopHoc]
AS
BEGIN
	SELECT LKG.MaLop, CCDT.MaCTDT, LKG.ThoiGian, LKG.LichKhaiGiang, LKG.PhongHoc, LKG.ThoiGianHoc, COUNT(LHV.MaLop)AS SoLuong
	FROM dbo.LichKhaiGiang LKG JOIN dbo.ChuongTrinhDaoTao CCDT ON CCDT.MaCTDT = LKG.TenKhoaHoc 
		 LEFT JOIN dbo.LopHocVien LHV ON LHV.MaLop = LKG.MaLop
	GROUP BY LKG.MaLop, CCDT.MaCTDT, CCDT.HocPhi, LKG.ThoiGian, LKG.LichKhaiGiang, LKG.PhongHoc, LKG.ThoiGianHoc
END 
GO
CREATE PROCEDURE [dbo].[ThongTin]
@TenDangNhap NVARCHAR(50)
AS
BEGIN
	SELECT HoTen, SDT, DiaChi, NgheNghiep
	FROM dbo.TaiKhoan
	WHERE TenDangNhap=@TenDangNhap
END
GO
CREATE PROCEDURE [dbo].[Xemhocvientheoctdt]
@MaCTDT VARCHAR(10)
AS
BEGIN
	SELECT  LHV.MaLop, LHV.TaiKhoan, TK.HoTen, TK.SDT
	FROM dbo.ChuongTrinhDaoTao CTDT JOIN dbo.LichKhaiGiang LKG ON LKG.TenKhoaHoc = CTDT.MaCTDT
	JOIN dbo.LopHocVien LHV ON LHV.MaLop = LKG.MaLop JOIN dbo.TaiKhoan TK ON TK.TenDangNhap = LHV.TaiKhoan
	WHERE CTDT.MaCTDT = @MaCTDT
END 