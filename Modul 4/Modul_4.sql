CREATE TABLE `Player` (
  `Id_player` int PRIMARY KEY,
  `username` varchar(255),
  `email` varchar(255),
  `password` varchar(255),
  `Id_hro` int
);

CREATE TABLE `Hero` (
  `Id_Hero` int PRIMARY KEY,
  `First_Name` varchar(255),
  `Last_Name` varchar(255),
  `HP` int,
  `level` int,
  `power` int,
  `defense` int,
  `senjata` varchar(255)
);

CREATE TABLE `Quest` (
  `Id_quest` int PRIMARY KEY,
  `syarat_Level` varchar(255),
  `deskripsi` text,
  `Id_hro` int,
  `Id_lksi` int
);

CREATE TABLE `Lokasi` (
  `Id_lokasi` int PRIMARY KEY,
  `nama` varchar(255),
  `Deskripsi` text
);

CREATE TABLE `Kds_Cuaca` (
  `Id_Lksi` int,
  `Cuaca` varchar(255)
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
  `id_Qst` int
);

CREATE TABLE `Jenis_Item` (
  `Id_Itm` int,
  `Nama_Jenis` varchar(255)
);

CREATE TABLE `Inventory` (
  `Id_Hro` int,
  `Jumlah` int
);

ALTER TABLE `Kds_Cuaca` ADD FOREIGN KEY (`Id_Lksi`) REFERENCES `Lokasi` (`Id_lokasi`);

ALTER TABLE `Player` ADD FOREIGN KEY (`Id_hro`) REFERENCES `Hero` (`Id_Hero`);

ALTER TABLE `Quest` ADD FOREIGN KEY (`Id_hro`) REFERENCES `Hero` (`Id_Hero`);

ALTER TABLE `Quest` ADD FOREIGN KEY (`Id_lksi`) REFERENCES `Lokasi` (`Id_lokasi`);

ALTER TABLE `Monster` ADD FOREIGN KEY (`Id_Lksi`) REFERENCES `Lokasi` (`Id_lokasi`);

ALTER TABLE `Jenis_Item` ADD FOREIGN KEY (`Id_Itm`) REFERENCES `Item` (`Id_Item`);

ALTER TABLE `Item` ADD FOREIGN KEY (`id_Qst`) REFERENCES `Quest` (`Id_quest`);

ALTER TABLE `Inventory` ADD FOREIGN KEY (`Id_Hro`) REFERENCES `Hero` (`Id_Hero`);
