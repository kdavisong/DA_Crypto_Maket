CREATE TABLE `ADA` (
	`Date` DATE NULL,
	`Year` YEAR NULL,
	`Prices` DECIMAL(15,3) NULL DEFAULT NULL,
	`Market_Caps` DECIMAL(15,3) NULL DEFAULT NULL,
	`Total_Volumes` DECIMAL(15,3) NULL DEFAULT NULL,
	`v_porcentual_d` DECIMAL(5,3) NULL DEFAULT NULL,
	`MM65` DECIMAL(15,3) NULL DEFAULT NULL
)
COLLATE='latin1_swedish_ci'
;
/* El nodo de tabla "BTC" no se encontró en el árbol. */


LOAD DATA INFILE "LDO.csv"
INTO TABLE LDO
FIELDS TERMINATED BY ',' ENCLOSED BY ''
LINES TERMINATED BY '\n' IGNORE 1
LINES(Date,Year, Prices, Market_Caps, Total_Volumes, v_porcentual_d,MM65);

CREATE TABLE `Inversiones` (
	`ID` INT,
	`Fecha` DATE,
	`Criptomoneda` VARCHAR(5),
	`Monto` DECIMAL(15,3) NULL DEFAULT NULL
)
COLLATE='latin1_swedish_ci'
;

LOAD DATA INFILE "Inversiones.csv"
INTO TABLE Inversiones
FIELDS TERMINATED BY ',' ENCLOSED BY ''
LINES TERMINATED BY '\n' IGNORE 1
LINES(ID,Fecha, Criptomoneda, Monto);

DROP TABLE `ETH`;