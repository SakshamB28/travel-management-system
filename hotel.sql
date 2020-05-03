-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 12:39 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `H_Id` int(11) NOT NULL,
  `C_Id` int(11) NOT NULL,
  `Hname` varchar(30) NOT NULL,
  `Facilities` varchar(100) NOT NULL,
  `PriceRange` varchar(15) NOT NULL,
  `StarRating` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`H_Id`, `C_Id`, `Hname`, `Facilities`, `PriceRange`, `StarRating`) VALUES
(0, 0, 'Hname', 'Facilities', 'PriceRange', 'S'),
(11, 1, 'Cinnamon Residency', 'Doctor on site, Gym, Laundry service, Wifi', '1000-1500', '3'),
(12, 1, 'Hotel Vivanta Taj Yeshwantpur', 'Wifi, Pool, Spa , Gym, Airport shuttle, Wheelchair accessible', '7500-8400', '5'),
(13, 1, 'OYO 9437 Hotel Blue Bell', 'PC with internet,?WiFi?', '1000-1300', '3'),
(14, 1, 'Capital O 16165 Cartier', 'Business centre, Conference rooms', '1200-1850', '4'),
(15, 1, 'Hotel The Chancery Pavillion', 'Business centre, Conference rooms, Gym, Hotel bar, Airport shuttle,wifi, Spa, PC with internet', '4000-5300', '5'),
(21, 2, 'Treebo Trend Sun Palace', 'Business centre, Car park, Conference rooms, Free WiFi in lobby,Hotel bar,Laundry service', '950-1300', '3'),
(22, 2, 'FabHotel President Hamidia Rd', 'Business centre, Concierge, Conference rooms, Doctor on site, Free WiFi in lobby, Laundry service', '1300-1600', '3'),
(23, 2, 'The Residency', 'Business centre, Car park, Conference rooms, Free WiFi,Hotel bar,Laundry service,Swimming Pool', '3000-3800', '4'),
(24, 2, 'Courtyard by Marriott Bhopal', 'Car park,Concierge,Free WiFi, Laundry service,Room service,Outdoor Swimming Pool,Gym, Spa', '7700-7900', '4'),
(25, 2, 'Noor-Us Sabah Palace', 'Business centre, Car park, Conference rooms, Free WiFi in lobby,Hotel bar,Laundry service,Gym, Spa, ', '7600-8000', '5'),
(31, 3, 'OYO 4355 Goodland Inn', 'Airport shuttle,Business centre,Conference rooms,Doctor on site,Laundry service,PC with internet,Roo', '800-1100', '3'),
(32, 3, 'Treebo Trend Guindy', 'Business centre, Car park, Conference rooms, Free WiFi, Gym,Porter service', '2400-3000', '3'),
(33, 3, 'Lemon Tree Chennai', 'WiFi, Pool, Spa, Parking, Pets, A/C, Restaurant, Hotel bar, Gym', '6300-6800', '4'),
(34, 3, 'The Ambassador Pallava', 'Outdoor swimming pool, Porter Service, Doctor on site, WiFi, Pool, Spa, Parking, Pets, Restaurant, H', '3800-4300', '4'),
(35, 3, 'The Raintree, St. Mary\'s Road', 'Business centre,Laundary service, WiFi, Pool, Spa, Parking, Pets, Restaurant, Hotel bar, Gym', '4500-5800', '5'),
(41, 4, 'The Solitaire', 'Airport shuttle, Business centre,Concierge, Conference rooms, Express check-in / out, Free WiFi, Gym', '4700-5300', '4'),
(42, 4, 'OYO 18347 Hotel Mountain Inn', 'Car park, PC with internet, Restaurant, Room service, WiFi', '840-1000', '3'),
(43, 4, 'The Onix', 'Business centre, Conference rooms, Free WiFiLaundry service, PC with internet, Restaurant, Room serv', '1500-1900', '3'),
(44, 4, 'Four Points by Sheraton', 'Airport shuttle , Business centre, Concierge, Conference rooms, Free WiFi, Gym, Hotel bar, Laundry s', '7000-8800', '4'),
(45, 4, 'Jsr Continental', 'Airport shuttle, Conference rooms, Express check-in / out, Free WiFi, Gym, Hotel bar, Laundry servic', '3600-4000', '4'),
(51, 5, 'FabHotel Rove New Delhi Airpor', '24-hour reception, Concierge, Doctor on site, Laundry service, Lift, Non-smoking rooms, Room service', '835-1150', '3'),
(52, 5, 'Treebo Trend Singh Sons Karol ', '24-hour room service, 24-hour reception, Laundry service, Room service, WiFi in lobby', '1500-2000', '3'),
(53, 5, 'The Visaya', '24-hour room service, 24-hour reception, Business centre, Car park, Concierge, Conference rooms, Dec', '3500-4300', '4'),
(54, 5, 'Hotel Regent Grand', 'Business centre, Car park, Concierge, Conference rooms, Express check-in / out, Free WiFi in lobby, ', '3600-4200', '4'),
(55, 5, 'Radisson Blu Hotel New Delhi D', 'Wheelchair accessible, Beach / Sun umbrellas, Business centre, Concierge, Conference rooms, Deck cha', '5600-6200', '5'),
(61, 6, 'OYO 10765 Hotel Tanish', 'Free WiFi in lobby, PC with internet, Restaurant, Room service', '1400-1900', '3'),
(62, 6, 'FabExpress Victoria Baga Beach', '24-hour reception, Concierge, Doctor on site, Free WiFi in lobby, Laundry service, Lift, Non-smoking', '1900-2050', '3'),
(63, 6, 'O Pescador an Indy', 'Direct beach access, Free WiFi in lobby, Hotel bar, Laundry service, Non-smoking rooms, Outdoor swim', '4400-5550', '4'),
(64, 6, 'Riva Beach', 'Airport shuttle, Beach / Sun umbrellas, Bungalows, Car park, Concierge, Deck chairs / Sun loungers, ', '3000-4100', '4'),
(65, 6, 'Hotel Goa Marriott Resort & Sp', '24-hour room service, 24-hour reception, Airport shuttle, Beach / Sun umbrellas, Business centre, Ca', '15000-16000', '5'),
(71, 7, 'Hotel Tansen Residency', 'Conference rooms, Convenience store, Doctor on site, Express check-in / out , Free WiFi in lobby, Ho', '2200-2800', '3'),
(72, 7, 'FabExpress Golden Village', 'Doctor on site, Free WiFi in lobby, Laundry service, Lift, Non-smoking rooms, Room service', '950-1000', '3'),
(73, 7, 'Radisson Gwalior', 'Conference rooms, Express check-in / out, Free WiFi in lobby, Gym, Laundry service, Lift, Non-smokin', '4000-4200', '5'),
(74, 7, 'Hotel Gwalior Regency', 'Conference rooms, Free WiFi in lobby, Gym,Hotel bar, Laundry service', '2700-3300', '4'),
(75, 7, 'Hotel The Central Park', 'Airport shuttle, Beach / Sun umbrellas, Business centre, Conference rooms, Deck chairs / Sun lounger', '2400-3000', '5'),
(81, 8, 'OYO 14632 Himalaya Guest House', 'PC with internet, Room service, WiFi?', '1300-1600', '3'),
(82, 8, 'OYO 13641 Elgin Terrace', 'Business centre, Car park, Conference rooms, Free WiFi, Gym,Porter service', '2000-2500', '3'),
(83, 8, 'The Astor', 'Babysitting, Conference rooms, Express check-in / out, Free WiFi, Hotel bar, Laundry service, Nightc', '4700-5200', '4'),
(84, 8, 'Hotel Regenta Orko\'s Kolkata', 'Express check-in / out, Gym, Indoor swimming pool, Laundry service,PC with internet, Room service, T', '4000-5500', '4'),
(85, 8, 'The Lalit Great Eastern Kolkat', '24-hour reception, Business centre, Concierge, Conference rooms, Deck chairs / Sun loungers, Gym, Ho', '7000-7500', '5'),
(91, 9, 'Treebo Trip Annaya Royals', '24-hour reception, Car park, Free WiFi in lobby, Laundry service, Lift, Room service', '950-1400', '3'),
(92, 9, 'FabHotel Heritage Inn Charbagh', 'Conference rooms, Doctor on site, Express check-in / out, Free WiFi in lobby, Hotel safe, Laundry se', '1670-1790', '3'),
(93, 9, 'Capital O 24668 Nilansh Theme ', 'Conference rooms , Free WiFi in lobby, Gym, Hotel bar, Outdoor swimming pool, PC with internet, Pets', '3200-3550', '4'),
(94, 9, 'Dayal Paradise', 'Conference rooms, Convenience store, Deck chairs / Sun loungers, Express check-in / out, Free WiFi i', '2700-3600', '4'),
(95, 9, 'Renaissance Lucknow Hotel', 'Deck chairs / Sun loungers, Doctor on site, Express check-in / out, Free WiFi in lobby, Gym, Hotel b', '8000-8500', '5'),
(101, 10, 'FabExpress Wind Flower Bandra ', 'Car park,Concierge,Doctor on site,Free WiFi, Laundry service, Non-smoking rooms,Room service', '3600-3800', '3'),
(102, 10, '?Hotel Orritel West', 'Wifi, Pool, Spa, Parking, Pets, Restaurant, Hotel bar, Spa, Airport shuttle', '3400-4000', '3'),
(103, 10, 'The Ambassador', 'Business centre, Conference rooms, Doctor on site, Express check-in / out, Free WiFi, Gym, Hotel bar', '7600-8900', '4'),
(104, 10, 'The Lalit Mumbai', 'WiFi, Pool, Spa, Parking, Hotel bar, Gym, Porter service, Restaurant, Room service', '7200-10000', '5'),
(105, 10, 'Trident Nariman Point', 'Airport shuttle, Business centre,Concierge, Conference rooms, Doctor on site, Express check-in / out', '10500-11850', '5'),
(111, 11, 'OYO 19980 Emmel Dwellings', 'Free WiFi in lobby, PC with internet, Room service', '900-1200', '3'),
(112, 11, 'Swiss County', 'Airport shuttle, Business centre, Free WiFi , Laundry service, Non-smoking rooms, Pets allowed, Room', '3500-4300', '3'),
(113, 11, '?Mountain Club Resort', 'FreeWiFi, Pool, Spa, Restaurant, Hotel bar, Gym, Porter service', '5700-6300', '4'),
(114, 11, 'Ktdc Tea County', 'FreeWiFi , Pool, Spa, Hotel bar, Gym, Airport shuttle', '4500-5300', '4'),
(115, 11, 'The Panoramic Getaway', 'Conference rooms, Convenience store, Deck chairs / Sun loungers, Free WiFi, Gym, Laundry service, Ou', '8500-9000', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`H_Id`),
  ADD KEY `FH` (`C_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FH` FOREIGN KEY (`C_Id`) REFERENCES `city` (`C_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
