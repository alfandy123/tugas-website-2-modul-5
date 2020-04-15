create table tb_tamu(
no int(3)primary key,
nama varchar(35),
alamat varchar(60),
email varchar(40),
no_telp varchar(15)
);

insert into tb_tamu values('1','boi trimoyo','ujung berung','bo_i77@yahoo.com','085324387492');

update tb_tamu set nama='irfan nurhidin' where nama="boi trimoyo";

select * from tb_tamu;

insert into tb_tamu values ('2','wasmui','jatimulyo','boy@gmail.com','0843847183103');
insert into tb_tamu values ('3','sumarno','surodadi','man@gmail.com','0822878458349');
insert into tb_tamu values ('4','sukamto','kradenan','doi@gmail.com','0838471838103');

delete from tb_tamu where no='4';

select no,nama,alamat from tb_tamu;

select * from tb_tamu where alamat ='kradenan';

select * from tb_tamu where nama like '%su%';

select * from tb_tamu order by nama;