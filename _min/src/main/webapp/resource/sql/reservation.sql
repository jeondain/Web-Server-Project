USE webServerDB;
DROP TABLE IF EXISTS Reservation;

CREATE TABLE IF NOT EXISTS Reservation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    memberId VARCHAR(30),
    checkInOut VARCHAR(30),
    guests VARCHAR(30),
    roomType VARCHAR(30),
    wakeUpCall VARCHAR(50),
    spa VARCHAR(30),
    extraBed VARCHAR(30),
    addGuests VARCHAR(30),
    requests TEXT,
    totalPrice VARCHAR(50)
	
);

