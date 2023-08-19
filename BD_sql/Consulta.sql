CREATE TABLE `PEPE` (
	`Date` DATE NULL,
	`Prices` DECIMAL(15,3) NULL DEFAULT NULL,
	`Market_Caps` DECIMAL(15,3) NULL DEFAULT NULL,
	`Total_Volumes` DECIMAL(15,3) NULL DEFAULT NULL
)
COLLATE='latin1_swedish_ci'
;
/* El nodo de tabla "BTC" no se encontró en el árbol. */


LOAD DATA INFILE "PEPE.csv"
INTO TABLE PEPE
FIELDS TERMINATED BY ',' ENCLOSED BY ''
LINES TERMINATED BY '\n' IGNORE 1
LINES(Date, Prices, Market_Caps, Total_Volumes)

