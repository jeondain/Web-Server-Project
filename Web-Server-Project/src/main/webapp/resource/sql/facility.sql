USE webServerDB;
DROP TABLE IF EXISTS Facility;
CREATE TABLE IF NOT EXISTS Facility (
	fac_name VARCHAR(50) PRIMARY KEY,
	fac_image VARCHAR(225),
	fac_description TEXT,
	fac_price VARCHAR(100)
);