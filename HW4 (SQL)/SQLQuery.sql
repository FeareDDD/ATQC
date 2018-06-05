USE SQLHW
/*5.1 Add 3 hotels to DB, one with name 'Edelweiss’*/
INSERT INTO Hotels VALUES ('Edelweiss', 1997, 'Chernivtsi, Holovna str. 246', 1);
INSERT INTO Hotels VALUES ('Edem', 2007, 'Borshchiv, T.Shevchenko str.', 0);
INSERT INTO Hotels VALUES ('SolyanPizza', 2005, 'Borshchiv, Hnizdovs"koho str.', 1);

/*5.2 Get All hotels from DB*/
SELECT *
FROM Hotels

/*5.3 Update first hotel foundation year from existing value to 1937*/
UPDATE Hotels
SET foundationYear = '1937'
WHERE Id = 1;

/*5.4 Delete 3d hotel from DB by Id*/
DELETE FROM Hotels
WHERE Id = 3;

/*5.5 Insert 10 users to Database, but have at least 2 users with Name Andrew or Anton*/
INSERT INTO Users(name, email) VALUES ('Andrew', 'AndrewProkopyk@ukr.net');
INSERT INTO Users(name, email) VALUES ('Anton', 'Anton@gmail.com');
INSERT INTO Users(name, email) VALUES ('Roma', 'Roma@gmail.com');
INSERT INTO Users(name, email) VALUES ('Vadim', 'Vadim@gmail.com');
INSERT INTO Users(name, email) VALUES ('Kolya', 'Kolya@gmail.com');
INSERT INTO Users(name, email) VALUES ('Stepan', 'Stepan@gmail.com');
INSERT INTO Users(name, email) VALUES ('Nastya', 'Nastya@gmail.com');
INSERT INTO Users(name, email) VALUES ('Misha', 'Misha@gmail.com');
INSERT INTO Users(name, email) VALUES ('Vitaliy', 'Vitaliy@gmail.com');
INSERT INTO Users(name, email) VALUES ('Anton', 'Anton2@gmail.com');

/*5.6 Get all users which name starts from "A"*/
SELECT name as 'Ñustomer name', email as 'Mail'
FROM Users
WHERE name LIKE 'A%'

/*Insert 10 rooms in DB. 7 to first hotel and 3 to other. Make sure both hotels have room number 101.
 Make sure 'Edelweiss' has room number 301, but other hotel no. Also make sure 'Edelweiss' do not have
  rooms with comfort level 3, but second hotel has at least one room with such comfort level*/
INSERT INTO Rooms VALUES (101, 1000, 1, 1, 1);
INSERT INTO Rooms VALUES (102, 1500, 1, 2, 1);
INSERT INTO Rooms VALUES (103, 2000, 2, 2, 1);
INSERT INTO Rooms VALUES (104, 2500, 2, 3, 1);
INSERT INTO Rooms VALUES (105, 3000, 1, 3, 1);
INSERT INTO Rooms VALUES (106, 3500, 2, 3, 1);
INSERT INTO Rooms VALUES (301, 4000, 2, 4, 1);

INSERT INTO Rooms VALUES (101, 1000, 1, 2, 2);
INSERT INTO Rooms VALUES (102, 2000, 2, 4, 2);
INSERT INTO Rooms VALUES (103, 3000, 3, 6, 2);

/*5.8 Select All rooms from DB sorted by Price*/
SELECT * FROM Rooms
ORDER BY price;

/*5.9 Select All rooms from DB that belong to 'Edelweiss' hotel and sorted by price*/ 
SELECT * FROM Rooms 
JOIN Hotels ON Hotels.ID = Rooms.hotelId 
WHERE Name = 'Edelweiss'
ORDER BY Price; 

/*5.10 Select Hotels that have rooms with comfort level 3*/
SELECT * 
FROM Hotels
JOIN Rooms On Rooms.hotelId = Hotels.ID
WHERE comfortLvl = 3;

/*5.11 Select Hotelname and room number for rooms that have comfort level 1*/
SELECT Hotels.Name, Rooms.number
FROM Rooms
JOIN Hotels ON Rooms.hotelId = Hotels.ID
WHERE comfortLvl = 1;

/*5.12 Select Hotel names and count of hotel rooms*/
SELECT name, COUNT(Rooms.ID) FROM Hotels
JOIN Rooms ON Rooms.hotelId = Hotels.ID
GROUP BY Name;

/*5.13 Insert 10 different reservations to db.*/
INSERT INTO Booking VALUES (1, '2017-12-11', 1, '2018-01-11', '2018-02-11');
INSERT INTO Booking VALUES (2, '2018-01-21', 2, '2018-02-21', '2018-03-21');
INSERT INTO Booking VALUES (3, '2018-02-14', 3, '2018-02-24', '2018-03-24');
INSERT INTO Booking VALUES (4, '2018-03-13', 3, '2018-03-23', '2018-04-23');
INSERT INTO Booking VALUES (4, '2018-04-12', 5, '2018-04-22', '2018-05-22');
INSERT INTO Booking VALUES (5, '2018-05-05', 6, '2018-05-15', '2018-06-15');
INSERT INTO Booking VALUES (6, '2018-06-07', 7, '2018-06-16', '2018-07-16');
INSERT INTO Booking VALUES (7, '2018-07-07', 8, '2018-07-17', '2018-08-17');
INSERT INTO Booking VALUES (8, '2018-08-17', 9, '2018-08-17', '2018-09-17');
INSERT INTO Booking VALUES (9, '2018-09-01', 1, '2018-09-10', '2018-10-10');

/*5.14 Select Username, room number, reservation period.*/
Select Users.name, Rooms.number, Booking.startDate,Booking.endDate
From Booking
JOIN Users ON Users.ID = Booking.userId
JOIN Rooms ON Rooms.ID = Booking.roomId