create database Pendaftaran;

create table data_diri(
no int(3),
nama varchar(35),
alamat varchar(60),
email varchar(40),
no_telp varchar(15),
sex char(1)
);

desc data_diri;

drop table data_diri;

create table pribadi(
kd_pribadi char(3) primary key unique,
panggilan char(4) unique,
nama varchar(35),
email varchar(50),
sex char(1)
);

rename table pribadi to data_pribadi;

alter table data_pribadi add gol_darah char(1);

desc data_pribadi;

alter table data_pribadi drop gol_darah;