create database Perpustakaan
create table anggota(
	id_anggota int not null primary key,
	Nama char(20) null,
	Alamat varchar(30) null,
	)
create table buku(
	id_buku int not null primary key,
	isbn varchar(50) null,
	judul varchar(50) null,
	penerbit varchar(50) null,
	pengarang varchar(50) null,
	jml_halaman int null,
	tahun int null,
	stok int null,
	no_rak varchar(10) null,
	id_Kategori int null
	)
alter table buku add constraint FK_buku foreign key (id_kategori) references kategori(id_kategori)
create table kategori(
	id_kategori int not null primary key,
	Nama_kategori varchar(50) null,
	)
create table peminjaman(
	id_peminjaman int not null primary key,
	tgl_peminjaman date null,
	tgl_kembali date null,
	keterangan varchar(20) null,
	id_anggota int null
	)
alter table peminjaman add constraint FK_peminjaman foreign key (id_anggota) references anggota(id_anggota)
create table peminjaman_item(
	id_peminjamanitem int not null Primary Key,
	qty int null,
	id_peminjaman int null,
	id_buku int null
	)
alter table peminjaman_item add constraint FK_peminjaman_item foreign key(id_peminjaman) references peminjaman(id_peminjaman)
alter table peminjaman_item add constraint FK_peminjaman_item foreign key(id_buku) references buku(id_buku)
create table pengembalian(
	id_pengembalian int not null primary key,
	tgl date null,
	denda int null,
	id_peminjaman int null,
	id_anggota int null
	)
alter table pengembalian add constraint FK_pengembalian foreign key(id_peminjaman) references peminjaman(id_peminjaman)
alter table pengembalian add constraint FK_pengembalian foreign key(id_anggota) references anggota(id_anggota)
select*from anggota
insert into anggota values(
		'1',
		'Andi',
		'Jakarta'
		)
update anggota set id='1' where id='01'

insert into anggota values(
		'2',
		'Nana',
		'Tangerang'
		)
insert into anggota values(
		'3',
		'Jojo',
		'Pamulang'
		)
delete anggota where id='1'

select*from buku
insert into buku values(
		'1',
		'',
		'Pemograman',
		'Media Komputindo'
		'yudistira',
		'200',
		'2012',
		'8',
		'20',
		'1'
		)
insert into buku values(
		'2',
		'',
		'Database Sql',
		'Tekno',
		'Jamal',
		'300',
		'2014',
		'4',
		'15',
		'2'
		)
insert into buku values(
		'3',
		'',
		'Konfigurasi ip',
		'Jaringan',
		'Tekno',
		'Yoga Pradana',
		'150',
		'2016',
		'10',
		'18',
		'3'
		)
update buku set stok='10' where id_buku='3'
alter table buku add constraint FK_buku foreign key(id_kategori) references kategori(id_kategori)
delete buku where id='2'
select*from kategori
insert into kategori values(
		'1',
		'Bahasa Pemograman'
		)
insert into kategori values(
		'2',
		'Database'
		)
insert into kategori values(
		'3',
		'Jaringan'
		)
select*from peminjaman
insert into peminjaman values(
		'1',
		'2015-12-23',
		'2016-01-07',
		'',
		'2'
		)
insert into peminjaman values(
		'2',
		'2015-11-01',
		'2016-01-11',
		'',
		'3'
		)
insert into peminjaman values(
		'3',
		'2015-12-14',
		'2016-02-01',
		'',
		'1'
		)
alter table peminjaman add constraint FK_peminjaman foreign key(id_anggota) references anggota(id_anggota)
delete peminjaman where tgl_kembali='2016-02-01'
select*from peminjaman_item
insert into peminjamann_item values(
		'2',
		'',
		'1',
		'2'
		)
insert into peminjaman_item values(
		'5',
		'',
		'2',
		'4'
		)
select anggota.id,anggota.nama, buku.judul, buku.no_rak
from anggota inner join buku on anggota.id=buku.id

select anggota.id_anggota,anggota.nama,buku.judul,buku.no_rak,peminjaman.tgl_peminjaman,peminjaman.tgl_kembali from anggota inner join
peminjaman on anggota.id_anggota=peminjaman.id_anggota inner join buku on 
peminjaman.id_kategori=buku.id_kategori