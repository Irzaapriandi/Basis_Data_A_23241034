CREATE TABLE `Player` (
  `Id_player` int PRIMARY KEY,
  `username` varchar(255),
  `email` varchar(255),
  `password` varchar(255),
  `Id_hero` int
);

CREATE TABLE `Hero` (
  `Id_Hero` int PRIMARY KEY,
  `nama` varchar(255),
  `HP` int,
  `level` int,
  `power` int,
  `defense` int,
  `senjata` varchar(255)
);

CREATE TABLE `Quest` (
  `Id_quest` int PRIMARY KEY,
  `syaratLevel` varchar(255),
  `deskripsi` text,
  `Id_hro` int,
  `Id_lksi` int
);

CREATE TABLE `Lokasi` (
  `Id_lokasi` int PRIMARY KEY,
  `nama` varchar(255),
  `Deskripsi` text,
  `Id_Cuaca` int
);

CREATE TABLE `Kds_Cuaca` (
  `Id_Cuaca` int PRIMARY KEY,
  `Hujan` varchar(255),
  `Cerah` varchar(255),
  `Salju` varchar(255)
);

CREATE TABLE `Monster` (
  `Id_Monster` int PRIMARY KEY,
  `First_Name` varchar(255),
  `Last_Name` varchar(255),
  `HP` int,
  `Rank` varchar(255),
  `Power` int,
  `Defense` int,
  `Id_Lksi` int
);

CREATE TABLE `Item` (
  `Id_Item` int PRIMARY KEY,
  `nama` varchar(255),
  `Deskripsi` text,
  `Id_Jenis` int,
  `id_Qst` int
);

CREATE TABLE `Jenis_Item` (
  `Id_Jenis` int PRIMARY KEY,
  `Penguat` text,
  `Penyembuh` text,
  `Khusus` text
);

CREATE TABLE `Inventory` (
  `Id_Hero` int,
  `Id_Item` int,
  `Jumlah` int
);

ALTER TABLE `Player` ADD FOREIGN KEY (`Id_hero`) REFERENCES `Hero` (`Id_Hero`);

ALTER TABLE `Quest` ADD FOREIGN KEY (`Id_hro`) REFERENCES `Hero` (`Id_Hero`);

ALTER TABLE `Quest` ADD FOREIGN KEY (`Id_lksi`) REFERENCES `Lokasi` (`Id_lokasi`);

ALTER TABLE `Kds_Cuaca` ADD FOREIGN KEY (`Id_Cuaca`) REFERENCES `Lokasi` (`Id_Cuaca`);

ALTER TABLE `Monster` ADD FOREIGN KEY (`Id_Lksi`) REFERENCES `Lokasi` (`Id_lokasi`);

ALTER TABLE `Jenis_Item` ADD FOREIGN KEY (`Id_Jenis`) REFERENCES `Item` (`Id_Jenis`);

ALTER TABLE `Item` ADD FOREIGN KEY (`id_Qst`) REFERENCES `Quest` (`Id_quest`);

ALTER TABLE `Inventory` ADD FOREIGN KEY (`Id_Hero`) REFERENCES `Hero` (`Id_Hero`);
