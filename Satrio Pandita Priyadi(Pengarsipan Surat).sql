drop database Pengarsipan_Surat

create database Pengarsipan_Surat

create table pegawai(
nip char(15) not null primary key,
nama char(20) not null,
alamat_ks char(30) not null,
kota char(20) not null
)

create table suratmasuk(
kd_unit varchar(15) not null primary key,
nip char(15) not null,
kd_admin char(15) not null,
nama varchar(30) not null,
kd_surat varchar(30) not null,
tgl_catat char(30) not null,
asal_surat char(30) not null,
tanggal_surat char(25) not null,
perihal varchar(100) not null,
seleksi varchar(15) not null,
pengarahan varchar(15) not null,
tidak_lanjut varchar(30) not null,
)
alter table suratmasuk add constraint fk_suratmasuk foreign key(nip) references pegawai (nip)
alter table staf add constraint fk_staf foreign key(kd_unit) references suratmasuk (kd_unit)
alter table suratmasuk add constraint Fk_administrasi foreign key(kd_admin) references administrasi (kd_admin)
alter table surat add constraint fk_surat foreign key(kd_unit) references suratmasuk (kd_unit)

create table staf(
kd_unit varchar(15) not null,
nm_unit char(20) not null,
pemimpin char(30) not null,
)

create table administrasi(
kd_admin char(15) not null primary key,
nama char(20) not null,
alamat char(35) not null
)

create table surat(
kd_surat char(15) not null primary key,
nama char(25) not null,
alamat char(35) not null,
)
alter table surat add kd_unit varchar(15)
select *from pegawai
insert into pegawai values('201234'
						,'Samaul khoir'
						,'Jl.Cengkeh'
						,'Meikarta')
						
insert into pegawai values('200101'
						,'Dadaw Jigidaw'
						,'Jl.Planet Antarikasi'
						,'Bekasi')
						
insert into pegawai values('200121'
						,'Kungking Kang'
						,'Jl.Kutilang'
						,'Tangsel')
						
insert into pegawai values('200122'
						,'Raza Kurnia'
						,'Jl.Gagak'
						,'Mampang Perapatan')

insert into pegawai values('200123'
						,'Tasya'
						,'Jl.Rajawali'
						,'Bintaro Sektor 3')

select *from suratmasuk
insert into suratmasuk values('3001'
					,'201234'
					,'212'
					,'Samsul Khoir'
					,'01'
					,'01-04-1997'
					,'Meikarta'
					,'02-04-1997'
					,'Beras Pulen'
					,'20 Ton'
					,'Rizky'
					,'Siap dikirim')
					
insert into suratmasuk values('3002'
					,'200101'
					,'313'
					,'Dadaw Jigidaw'
					,'02'
					,'20-05-2000'
					,'Bekasi'
					,'25-05-2000'
					,'Batu Bara'
					,'3 Kapal'
					,'Samsudin'
					,'Dibatalkan')
					
insert into suratmasuk values('3003'
					,'200121'
					,'414'
					,'Kungking Kang'
					,'03'
					,'26-12-2006'
					,'Tangsel'
					,'10-01-2007'
					,'Sapi Potong'
					,'3 Truk'
					,'Nazrudin'
					,'siap dikirim')
					
insert into suratmasuk values('3004'
					,'200122'
					,'515'
					,'Raza Kurnia'
					,'04'
					,'20-03-2007'
					,'Mampang Perapatan'
					,'21-03-2007'
					,'Kambing'
					,'5 Truk'
					,'Yahyah'
					,'Siap dikirim')

insert into suratmasuk values('3005'
					,'200123'
					,'616'
					,'Tasya'
					,'05'
					,'01-05-2007'
					,'Bintaro Sektor 3'
					,'03-05-2007'
					,'HP XIOMI'
					,'100 Kotak'
					,'Didin'
					,'Dibatalkan')
					
select *from staf
insert into staf values('3001'
					,'Staf 1'
					,'Japri')
					
insert into staf values('3002'
					,'Staf 2'
					,'Samsudin')
			
insert into staf values('3003'
					,'Staf 3'
					,'Robi')
					
insert into staf values('3004'
					,'Staf 4'
					,'Habbi')

insert into staf values('3005'
					,'Staf 5'
					,'Zanpaku')

select *from administrasi				

insert into administrasi values('212'
					,'Zaman'
					,'Prigi Dalam')
					
insert into administrasi values('313'
					,'Sukiem'
					,'Jelupang')
					
insert into administrasi values('414'
					,'Saktum'
					,'BSD')
					
insert into administrasi values('515'
					,'Susah'
					,'Prigi Luar')

insert into administrasi values('616'
					,'Hari'
					,'Bintaro')
					
select *from surat

insert into surat values('01'
					,'Samaul khoir'
					,'Jl.Cengkeh')

insert into surat values('02'
					,'Dadaw Jigidaw'
					,'Jl.Planet Antarikasi')

insert into surat values('03'
					,'Kungking Kang'
					,'Jl.Kutilang')

insert into surat values('04'
					,'Raza Kurnia'
					,'Jl.Gagak')

insert into surat values('05'
					,'Tasya'
					,'Jl.Rajawali')
					
update surat set kd_surat='21' where nama='Tasya'
delete surat where kd_surat =05 

select surat.kd_surat,surat.nama,alamat, tgl_catat, asal_surat, tanggal_surat
from surat inner join suratmasuk on surat.kd_surat=suratmasuk.kd_surat


select surat.kd_surat,surat.nama,alamat, tgl_catat, asal_surat, tanggal_surat, nm_unit,pemimpin
from surat inner join suratmasuk on surat.kd_surat=suratmasuk.kd_surat inner join staf on suratmasuk.kd_unit=staf.kd_unit