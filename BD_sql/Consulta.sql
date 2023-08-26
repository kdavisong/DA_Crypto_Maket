CREATE TABLE `ETH` (
	`Date` DATE NULL,
	`Year` DATE NULL,
	`Prices` DECIMAL(15,3) NULL DEFAULT NULL,
	`Market_Caps` DECIMAL(15,3) NULL DEFAULT NULL,
	`Total_Volumes` DECIMAL(15,3) NULL DEFAULT NULL,
	`v_porcentual_d` DECIMAL(5,3) NULL DEFAULT NULL,
)
COLLATE='latin1_swedish_ci'
;
/* El nodo de tabla "BTC" no se encontró en el árbol. */


LOAD DATA INFILE "PEPE.csv"
INTO TABLE PEPE
FIELDS TERMINATED BY ',' ENCLOSED BY ''
LINES TERMINATED BY '\n' IGNORE 1
LINES(DATE,Year, Prices, Market_Caps, Total_Volumes, v_porcentual_d)

