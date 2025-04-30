CREATE DATABASE `vizsgaremek`;


USE vizsgaremek;


CREATE TABLE `brands` (
  `BrandId` int NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(100) NOT NULL,
   PRIMARY KEY(BrandId)
);

CREATE TABLE `cars` (
  `CarId` int NOT NULL AUTO_INCREMENT,
  `Model` varchar(100) NOT NULL,
  `Horsepower` varchar(7) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Price` int(11) NOT NULL,
   PRIMARY KEY(CarId),
  `BrandId` int, 
   FOREIGN KEY (BrandId) REFERENCES brands(BrandId)
);

CREATE TABLE `motors` (
  `MotorId` int NOT NULL AUTO_INCREMENT,
  `Model` varchar(100) NOT NULL,
  `Horsepower` varchar(7) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Price` int(11) NOT NULL,
   PRIMARY KEY(MotorId),
  `BrandId` int,
   FOREIGN KEY (BrandId) REFERENCES brands(BrandId)
);

CREATE TABLE `user` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Number` int(11) NOT NULL,
   PRIMARY KEY(UserId),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UserId int,
    FOREIGN KEY (UserId) REFERENCES user(UserId)
);

INSERT INTO cars(Model, Horsepower, Color, Price)
VALUES
('Swift', '230', 'Red', '16000000'),
('Mustang', '180', 'Blue', '13000000'),
('Corvette', '160', 'Lime', '18000000');