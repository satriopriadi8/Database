create database stasiun_kereta

create table kepala_stasiun(
nip_ks char(15) primary key not null,
nama_ks char(20) not null,
usia_ks char(30) not null,
alamat_ks char(30) not null,
hoby_ks char (20) not null)
create table petugas_loket(
nip_petugas_loket char(15) primary key not null,
nama_petugas_loket char(20) not null,
usia_petugas_loket char(30) not null,
alamat_petugas_loket char(30) not null,
hoby_petugas_loket char (20) not null)

create table staf_stasiun(
nip_staf char(15) primary key not null,
nama_staf char(20) not null,
usia_staf char(30) not null,
alamat_staf char(30) not null,
hoby_staf char (20) not null)

create table wakil_kepalastasiun(
nip_wks char(15) primary key not null,
nama_wks char(20) not null,
usia_wks char(30) not null,
alamat_wks char(30) not null,
hoby_wks char (20) not null)

create table wakil_staf(
nip_wakil_staf char(15) primary key not null,
nama_wakil_staf char(20) not null,
usia_wakil_staf char(30) not null,
alamat_wakil_staf char(30) not null,
hoby_wakil_staf char (20) not null)

select*from kepala_stasiun
insert into kepala_stasiun values('21251','suparjo','30','sawangan','badminton'),
			('21252','ardian','28','ciputat','futsal'),('21253','khoirulanwar','40','kebayoran','golf'),
			('21254','fajar','35','serpong','sepakbola')
select*from petugas_loket
insert into petugas_loket values('1412','parjo','20','sawangan','gamming'),('1413','rifka','25','parung','gamming'),
			('1414','rizal','26','ciledug','videoediting')
select*from staf_stasiun
insert into staf_stasiun values ('1212','septian','25','rangkas','futsal'),('1213','fitria','21','ciputat','akuntansi'),
			('1214','dimas','22','ciledug','futsal'),('1215','nunu','25','bogor','travel')
select*from wakil_kepalastasiun
insert into wakil_kepalastasiun values ('1201','budi','20','cirebon','futsal'),
			('1202','paman','34','bogor','golf'),('1203','parjo','36','depok','badminton'),
			('1204','irwan','45','ciputat','voli'),('1205','fajriansyah','30','sawangan','bowling')
select*from wakil_staf
insert into wakil_staf values ('1601','suparjo','30','semarang','joging'),('1602','maman','32','cinangka','basket'),
			('1603','parjo','37','ciputat','voli'),('1604','udin','35','jakarta','sepakbola'),
			('1605','dany','30','depok','sepakbola')

update wakil_staf set alamat_wakil_staf='gandul' where nip_wakil_staf=1602
delete from staf_stasiun where nip_staf=1214
alter table kepala_stasiun add nip_wks char(15)
alter table petugas_loket modify nip_staf char(15) not null
alter table staf_stasiun add nip_wakil_staf char(15)
alter table kepala_stasiun add nip_staf char(15)


alter table kepala_stasiun add constraint FK_kepala_stasiun foreign key (nip_wks) references wakil_kepalastasiun (nip_wks)
alter table petugas_loket add constraint FK_petugas_loket foreign key (nip_staf) references staf_stasiun (nip_staf)
alter table staf_stasiun add constraint FK_staf_stasiun foreign key (nip_wakil_staf) references wakil_staf (nip_wakil_staf)
alter table kepala_stasiun add constraint FK_kepala_stasiun1 foreign key (nip_staf) references staf_stasiun (nip_staf)
alter table wakil_kepalastasiun add constraint FK_wakil_kepalastasiun foreign key (nip_ks) references kepala_stasiun (nip_ks)

select nama_ks, alamat_ks,nama_wks,alamat_wks
from kepala_stasiun inner join wakil_kepalastasiun on kepala_stasiun.nip_ks=wakil_kepalastasiun.nip_wks