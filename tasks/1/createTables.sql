CREATE TABLE Car (
    Identifier TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Mark VARCHAR (8) NOT NULL,
    ATP_owner CHAR (4) NOT NULL,
    Discount TINYINT UNSIGNED CHECK (Discount <= 100)
);
ALTER TABLE Car AUTO_INCREMENT = 1;

CREATE TABLE Garage (
    Identifier TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Number VARCHAR (2) NOT NULL,
    Location CHAR (4) NOT NULL,
    Commission TINYINT UNSIGNED CHECK (Commission <= 100)
);
ALTER TABLE Car AUTO_INCREMENT = 1;

CREATE TABLE Details (
    Identifier TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Detail VARCHAR (100) UNIQUE NOT NULL,
    Seller CHAR (4) NOT NULL,
    Cost MEDIUMINT UNSIGNED NOT NULL,
    Max_count SMALLINT UNSIGNED NOT NULL
);
ALTER TABLE Details AUTO_INCREMENT = 1;

CREATE TABLE Repair (
    Order_number SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Car TINYINT UNSIGNED NOT NULL, 
    Date DATE NOT NULL,
    Garage TINYINT UNSIGNED NOT NULL,
    Detail TINYINT UNSIGNED NOT NULL,
    Count SMALLINT UNSIGNED NOT NULL,
    Sum_count MEDIUMINT UNSIGNED NOT NULL,
    FOREIGN KEY (Car) REFERENCES Car (Identifier),
    FOREIGN KEY (Garage) REFERENCES Garage (Identifier),
    FOREIGN KEY (Detail) REFERENCES Details (Identifier)
);
ALTER TABLE Repair AUTO_INCREMENT = 5002;

