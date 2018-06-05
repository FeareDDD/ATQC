USE SQLHW
/*4. Implement SQL script that generates database.*/
CREATE TABLE Hotels (
    ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
    name nvarchar(45),
    foundationYear int,
    address nvarchar(60),
	isActive bit,
)

CREATE TABLE Rooms (
    ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
    number int,
    price float,
    comfortLvl int,
	capability int,
	hotelId int FOREIGN KEY REFERENCES Hotels(ID)
)

CREATE TABLE Users (
    ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
    name nvarchar(25),
    email varchar(50)
)

CREATE TABLE Booking (
    ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
    userId int FOREIGN KEY REFERENCES Users(ID),
    dateOfReservation date,
    roomId int FOREIGN KEY REFERENCES Rooms(ID), 
	startDate date,
	endDate date
)