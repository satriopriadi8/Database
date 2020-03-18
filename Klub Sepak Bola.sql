CREATE DATABASE Klub Sepak Bola;
use Klub Sepak Bola;

CREATE TABLE Pemilik(id_pemilik char(10) not null
				, Nama_Pemilik varchar(35) Not Null
				, Jenis_Kelamin char(1) Not Null
				, Alamat char(100) Not Null
				, no_tlp varchar(12) Not Null
				) 
				
CREATE TABLE Pemain_Sepakbola(id_pemain char(10) not null
				, Nama_pemain varchar(35) Not Null
				, Jenis_Kelamin char(1) Not Null
				, Alamat char(100) Not Null
				, no_tlp varchar(12) Not Null
				) 
				
CREATE TABLE Anggota(id_anggota char(10) Not Null
				, manajer char(35) Not Null
				, pelatih char(40) Not Null
				, official char(100) Not Null
				, tim_medis char(12) Not Null
				) 
				
CREATE TABLE Lapangan(nama_lapangan varchar(35) not null
				, alamat char(100)not null
				, kapasitas_penonton int Not Null
				, no_tlp varchar(12) Not Null
				)

CREATE TABLE Atribut(id_atribut char(10) not null
				, rompi char(100) Not Null
				, sepatu varchar(50) Not Null
				, kaos_kaki char(50) not null
				, kostum varchar(50 not null
				)
				
ALTER TABLE Pemilik ADD CONSTRAINT pk_Pemilik primary key (id_pemilik)

ALTER TABLE Pemain_Sepakbola ADD CONSTRAINT pk_Pemain Primary Key (id_pemain)

ALTER TABLE Anggota ADD CONSTRAINT pk_Anggota Primary Key (id_anggota)

ALTER TABLE Lapangan ADD CONSTRAINT pk_Lapangan Primary Key (id_lapangan)

ALTER TABLE Atribut ADD CONSTRAINT pk_Atribut Primary Key (id_atribut)

INSERT INTO Pemilik (id_pemilik, Nama_Pemilik, Jenis_Kelamin, Alamat, no_tlp)
values ('100234','Gilang','P','Bintaro','0897771234'),
	   ('100231','Ricko','P','Tangerang','0877712346'),
	   ('100211','Ricky','P','Tangerang','0896514231'),
	   ('100235','Kulsum','P','Bandung','0897221456'),
	   ('100567','Rachmadi','L','Ciledug','0897221458'),
	   ('100222','Roby','L','Pamulang','0897241561')
	   
UPDATE Pemilik SET Nama_Pemilik = 'Gilang' WHERE id_pemilik = '100234'

DELETE FROM Pemilik WHERE id_pemilik = 100222 

INSERT INTO Pemain_Sepakbola(id_pemain, Nama_pemain, Jenis_Kelamin, Alamat, no_tlp)
values ('100011','Dwi','P','Bandung','0896551231'),
	   ('100012','Nana','P','Bogor','0896551221'),
	   ('100013','Rifat','L','Suka Bumi','0896551245'),
	   ('100014','Adi','L','Tangerang','0897551238'),
	   ('100015','Aldi','L','Ciledug','0896551222'),
	   ('100016','Mitha','P','Bekasi','0876511231')
	   
UPDATE Pemain_Sepakbola SET Nama_pemain = 'Dwi' WHERE id_pemain = '100011'

DELETE FROM Pemain_Sepakbola WHERE id_pemain = 100016

INSERT INTO Anggota(id_anggota, manajer, pelatih, official,tim_medis)
values ('100022','roby','dadang','diki','Jajang'),
	   ('100023','gilang','dudung','boy','Juju'),
	   ('100024','Ricko','kulsum','raka','Jeje'),
	   ('100025','Fadil','jono','riki','Jojo'),
	   ('100026','Rachmadi','joko','rio','Jaja'),
	   ('100027','Farel','jaka','ricky','Japri')
	   
UPDATE Anggota SET id_anggota = 'japri' WHERE tim_medis = '100011'

DELETE FROM Anggota WHERE id_anggota = 100016


INSERT INTO Lapangan(nama_lapangan, alamat, kapasitas_penonton, no_tlp)
values ('GeloraBungkarno','Jakrta','30.000','0897251281'),
	   ('Patriot','Bekasi','15.000','0897851224'),
	   ('Benteng','Tangerang','20.000','0896541234'),
	   ('Lebakbulus','Jakarta','10.000','0896551211'),
	   ('GloraBandungLautan','Bandung','30.000','0896351252'),
	   ('WibawaMukti','Bekasi','20.000','0872458231')
	   
UPDATE Lapangan SET nama_lapangan = 'Rita' WHERE kapasitas_penonton = '100045'

DELETE FROM Suplier WHERE id_suplier = 100050
	   
INSERT INTO Atribut(id_atribut, rompi,kaos_kaki, sepatu, kaos_kaki)
values ('100045','Rahmad','Bandung','0897251281'),
	   ('100046','Ahmad','Bogor','0897851224'),
	   ('100047','Rifki','Suka Bumi','0896541234'),
	   ('100048','Fadel','Tangerang','0896551211'),
	   ('100049','Rifan','Ciledug','0896351252'),
	   ('100050','Raka','Bekasi','0872458231')
	   
UPDATE Atribut SET id_atribut = 'Rahmad' WHERE kostum = '100045'

DELETE FROM Atribut WHERE id_atribut = 100050


select * from Pemilik
select * from Pemain_Sepakbola
select * from Anggota
select * from Lapangan
select * from Atribut