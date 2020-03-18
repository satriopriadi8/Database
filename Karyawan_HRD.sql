create database Karyawan_HRD
create table Biodata_Karyawan(
	Nip varchar(15) not null primary key,
	Nama varchar(20) not null,
	Alamat varchar(30) not null,
	Jabatan varchar(20) not null,
	No_Tlp varchar(15),
	Email varchar(20)
	)
create table Penilaian(
	Nip varchar(15) not null,
	Nama varchar(25) not null,
	Sikap varchar(20),
	Tanggung_Jawab varchar(15)
	)
alter table Penilaian add constraint FK_Penilaian foreign key (Nip) references Biodata_Karyawan(Nip)
create table Gaji(
	Nip varchar(15) not null primary key,
	Nama varchar(20) not null,
	Alamat Varchar(35) not null,
	Jumlah int not null
	)
alter table Gaji add constraint FK_Gaji foreign key (Nip) references Biodata_Karyawan(Nip)
create table Absensi(
	Nip varchar(15) not null,
	Nama varchar(20) not null,
	Alamat varchar(25) not null,
	)
alter table Absensi add constraint FK_Absensi foreign key (Nip) references Biodata_Karyawan(Nip)
create table Atasan(
	Nip varchar(15) not null Primary Key,
	Nama varchar(25) not null,
	Nama_Jabatan varchar(20) not null
	)
	
select*from Biodata_Karyawan
insert into Biodata_Karyawan values(
		'E001',
		'Imam',
		'Depok',
		'Enginer',
		'021444555',
		'imam@gmail.com'
		)
update Biodata_Karyawan set Nip='M001' where Nip='001'
update Biodata_Karyawan set Nama='Bambang' where Nip='M001'
update Biodata_Karyawan set No_Tlp='021666888' where Nip='M001'
update Biodata_Karyawan set Jabatan='Manajemen' where Nip='M001'
update Biodata_Karyawan set Email='bambang@yahoo.com' where Nip='M001'

insert into Biodata_Karyawan values(
		'S004',
		'Indah',
		'Jakarta Selatan',
		'Sekertaris',
		'021333777',
		'indah@gmail.com'
		)
insert into Biodata_Karyawan values(
		'S001',
		'Bima',
		'Bogor',
		'Security',
		'021999888',
		'bima@yahoo.com'
		)
update Biodata_Karyawan set Nip='SY001' where Nip='S001'
insert into Biodata_Karyawan values(
		'M002',
		'Susi',
		'Jakarta Selatan',
		'Manajemen',
		'021678123',
		'susi@yahoo.com'
		)
insert into Biodata_Karyawan values(
		'A001',
		'Jono',
		'Ciputat',
		'Administrasi',
		'021444555',
		'jono@yahoo.com'
		)
delete Biodata_Karyawan where Nip='A001'

select*from Penilaian
insert into Penilaian values(
		'SY001',
		'Bima',
		'Baik',
		'Baik'
		)
insert into Penilaian values(
		'M002',
		'Susi',
		'Cukup Baik',
		'Baik'
		)
insert into Penilaian values(
		'E001',
		'Imam',
		'Baik',
		'Baik'
		)
insert into Penilaian values(
		'M001',
		'Bambang',
		'Cukup Baik',
		'Baik'
		)
insert into Penilaian values(
		'S004',
		'Indah',
		'Baik',
		'Baik'
		)
insert into Penilaian values(
update Penilaian set Tanggung_Jawab='Cukup Baik' where Nip='M001'

select*from Gaji
insert into Gaji values(
		'E001',
		'Imam',
		'Depok',
		'3500000'
		)
insert into Gaji values(
		'M001',
		'Bambang',
		'Depok',
		'3250000'
		)
insert into Gaji values(
		'S004',
		'Indah',
		'Jakarta Selatan',
		'3400000'
		)
insert into Gaji values(
		'M002',
		'Susi',
		'Jakarta Selatan',
		'3250000'
		)
insert into Gaji values(
		'SY001',
		'Bima',
		'Bogor',
		'2700000'
		)
select*from Absensi
insert into Absensi values(
		'E001',
		'Imam',
		'Depok'
		)
insert into Absensi values(
		'M001',
		'Bambang',
		'Depok'
		)
insert into Absensi values(
		'S004',
		'Indah',
		'Jakarta Selatan'
		)
insert into Absensi values(
		'M002',
		'Susi',
		'Jakarta Selatan'
		)
insert into Absensi values(
		'SY001',
		'Bima',
		'Bogor'
		)
select*from Atasan
insert into Atasan values(
		'E100',
		'Tanto',
		'Eksekutif Enginier'
		)
insert into Atasan values(
		'M200',
		'Roni',
		'Eksekutif Manajemen'
		)
insert into Atasan values(
		'D300',
		'Amir',
		'Direktur'
		)
insert into Atasan values(
		'K120',
		'Glen',
		'Kepala Security'
		)
insert into Atasan values(
		'DU110',
		'David',
		'Direktur Utama'
		)

select Biodata_Karyawan.Nama,  No_Tlp, Jabatan, Email, Jumlah
from Biodata_Karyawan inner join Gaji on Biodata_Karyawan.Nip=Gaji.Nip

select a.Nama,  No_Tlp, Jabatan, Email, Jumlah
from Biodata_Karyawan as a inner join Gaji as b on a.Nip=b.Nip
where Jabatan = 'Manajemen'

select Biodata_Karyawan.Nama,No_Tlp, Email, Jumlah, Sikap, Tanggung_Jawab
from Biodata_Karyawan inner join Gaji on Biodata_Karyawan.Nip=Gaji.Nip inner join Penilaian
on Gaji.Nip=Penilaian.Nip