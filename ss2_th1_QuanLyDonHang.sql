create database java10_md4_ss2_th1;
use java10_md4_ss2_th1;
--  cac bảng độc lập
create table DonViKhachHang (
maDV int auto_increment primary key,
tenDV varchar(250),
diaChi varchar(220),
dienThoai int
);

create table NguoiDat (
maSoND int auto_increment primary key,
hoTenND varchar(250)
);

create table Hang (
MaHang int auto_increment primary key,
TenHang varchar(230),
donViTinh int,
moTaHang varchar(250)
);

create table NoiGiao (
maSoND int auto_increment primary key,
hoTenND varchar(230)
);

create table NguoiNhan (
maSoNN int auto_increment primary key,
hoTenNN varchar(240)
);

create table NguoiGiao (
maSoNG int auto_increment primary key,
hoTenNG varchar(250)
);


-- các bảng quan hệ  
create table thuocMot (
maDV int,
maND int,
foreign key(maDV) references DonViKhachHang(maDV),
foreign key(maND) references NguoiDat(maSoND)
);
create table dat (
soDH int,
ngayDat date,
soLuong int,
maND int,
maHang int,
foreign key(maND) references NguoiDat(maSoND),
foreign key(maHang) references Hang(MaHang)
);
create table giao(
soPG int ,
soLuong int,
ngayGiao date,
donGia int,
maSoNG int,
maHang int,
maDDG int,
nguoiNhan int,
foreign key(maHang) references Hang(MaHang),
foreign key(nguoiNhan) references NguoiNhan(maSoNN),
foreign key(maSoNG) references NguoiGiao(maSoNG),
foreign key(maDDG) references NoiGiao(maSoND)
);




create table thuocHai (
maDV int,
maSoNN int,
foreign key(maDV) references DonViKhachHang(maDV),
foreign key(maSoNN) references NguoiNhan(maSoNN)
);
-- create table DonDatHang (
-- soDH int auto_increment,
-- tenDVDH varchar(250),
-- diaChi varchar(200),
-- dienThoai int,
-- ngayDat date,
-- tenHang varchar(200),
-- moTa varchar(200),
-- donViTinh int,
-- soLuong int,
-- hoTenND varchar(200),
-- primary key(soDH),
-- nguoiDat_MaSoND int 
-- );
-- create table PhieuGiaoHang (
-- SoPG int auto_increment,
-- TenDV varchar(200),
-- diaChi varchar(200),
-- noiGH varchar(250),
-- ngayGiao date,
-- TenHang varchar(200),
-- donViTinh int,
-- soLuong int,
-- donGia int,
-- thanhTien int,
-- hoTenNN varchar(250),
-- hoTenNG varchar(220)
-- );




