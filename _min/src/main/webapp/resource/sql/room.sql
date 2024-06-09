USE webServerDB;
DROP TABLE IF EXISTS Room;
CREATE TABLE IF NOT EXISTS Room (
    room_id VARCHAR(50) PRIMARY KEY,
    room_name VARCHAR(100) NOT NULL,
    room_image VARCHAR(255),
    room_image2 VARCHAR(255),
    room_image3 VARCHAR(255),
    room_BriefDescription VARCHAR(255),
    room_description TEXT,
    bed_type VARCHAR(50),
    view_type VARCHAR(50),
    room_area VARCHAR(50),
    guests INT,
    amenities TEXT,
    checkout_time TIME,
    checkin_time TIME,
    price DECIMAL(10, 2)
);
e