create database rumah_sakitt

CREATE TABLE kamar_pasien(
	id_kamar nchar(10) Not Null primary key,
	jenis_kamar nchar(35) Not Null)

alter table pasien add constraint fk_pasien foreign key(id_kamar) references kamar_pasien(id_kamar)
	
CREATE TABLE pasien(
	id_pasien nchar(10) Not Null primary key,
	kd_kamar nchar(10) Not Null,
	name_pasien varchar(35) Not Null,
	alamat varchar(35) Not Null,
	id_obat nchar(32) Not Null)
	
	INSERT INTO pasien(id_pasien, kd_kamar, name_pasien, alamat, id_obat)
values ('100055','02','rana','Bandung','089'),
	   ('100046','01','Feni','Bogor','081'),
	   ('100047','03','Riki','Suka Bumi','082'),
	   ('100048','09','Fadel','Tangerang','080'),
	   ('100049','08','Mikha','Ciledug','088')
	
alter table pasien add id_kamar nchar(10)

CREATE TABLE dokter(
	id_dokter nchar(10) Not Null primary key,
	name_dokter varchar(35) Not Null,
	alamat varchar(35) not null,
	no_tlp varchar(35) not null,
	jam_praktek varchar(10) Not Null,
	id_spesialis nchar(32) Not Null)

alter table dokter add id_obat nchar(10)
alter table dokter add constraint fk_dokter foreign key(id_obat) references obat(id_obat)
alter table spesialis add constraint FK_spesialis foreign key(id_dokter) references dokter(id_dokter)
alter table pasien add obat nchar(10) 
alter table FPS add constraint fk_FPS foreign key(id_genre) references Genre_Game(id_genre)
alter table obat add constraint FK_obat foreign key(id_pasien) references pasien(id_pasien)
alter table obat add id_pasien nchar(10)	

CREATE TABLE spesialis(
	id_spesialis nchar(10) Not Null primary key,
	id_dokter nchar(10) Not Null,
	name_spesialis varchar(35) Not Null)
	
alter table Dota2 add constraint fk_Dota2 foreign key(id_game) references MOBA(id_game)

CREATE TABLE obat(
	id_obat nchar(10) Not Null primary key,
	name_obat varchar(10) Not Null)
	

