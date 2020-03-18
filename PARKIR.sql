create database sistemparkir
create table pengunjung (
id_pengunjung char(15)not null primary key,
nama_pengunjung varchar(50)not null,
no_telp char(15)null,
nomor_kendaraan varchar(15)not null
)

create table petugas (
	id_petugas char(15) not null primary key,
	nama_petugas varchar(50)not null,
	alamat_petugas varchar(50)not null,
	no_telp char(15)null
	)

create table lokasi (
	karcis char(20)not null primary key,
	tempat_parkir char(10)not null,
)
alter table lokasi add constraint fk_pintumasuk foreign key(karcis)references pintumasuk(karcis)

select*from pintumasuk
create table pintumasuk (
	id_petugas char(15) not null,
	id_pengunjung char(15)not null,
	karcis char(20)not null primary key,
)
alter table pintumasuk add constraint fk_petugas foreign key(id_petugas)references petugas(id_petugas)
alter table pintumasuk add constraint fk_pengunjung foreign key(id_pengunjung)references pengunjung(id_pengunjung)
alter table pintumasuk add constraint fk_transaksi foreign key(karcis)references transaksi(karcis)

create table transaksi(
	id_petugas char(15) not null,
	nomor_kendaraan varchar(15)not null,
	karcis char(20) not null primary key,
	waktu_masuk datetime not null,
	waktu_keluar datetime not null
	)
alter table transaksi add constraint fk_lokasi foreign key(karcis)references lokasi(karcis)
alter table transaksi add constraint fk_petugas foreign key(id_petugas)references petugas(id_petugas)
select*from pengunjung
insert into pengunjung values('001','andi','088765845','012345'),
							('002','mart','0896758474','0889756'),
							('003','bibil','0987474653','0989900'),
							('004','ranran','0219387568','0809394'),
							('005','asya','0977868576','0899876')
select*from petugas		
insert into petugas values	('001','andi','jagakarsa','012345'),
							('002','mart','ciledug','0889756'),
							('003','bibil','kemang','0989900'),
							('004','ranran','ciganjur','0809394'),
							('005','asya','ciganjur','0899876')

select*from lokasi
insert into lokasi values	('A1','gedung A'),('A2','gedung A'),('A3','gedung A'),
							('B1','gedung B'),('B2','gedung B'),('B3','gedung B'),
							('C1','gedung C'),('C2','gedung C'),('C3','gedung C')
							
select*from transaksi	
insert into transaksi values ('001','012345','A1')						
							
							
update petugas set
alamat_petugas= 'gandul' where nama_petugas = 'asya'
select*from transaksi

delete from petugas where nama_petugas = 'mart'

select transaksi.id_petugas,karcis,nomor_kendaraan,waktu_masuk,waktu_keluar
from transaksi inner join petugas on petugas.id_petugas = transaksi.id_petugas
