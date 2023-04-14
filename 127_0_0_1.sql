-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 04:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alternakraft`
--
CREATE DATABASE IF NOT EXISTS `alternakraft` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `alternakraft`;

-- --------------------------------------------------------

--
-- Table structure for table `airconditioner`
--

CREATE TABLE `airconditioner` (
  `email` varchar(255) NOT NULL,
  `appliance_num` int(11) NOT NULL,
  `EER` decimal(20,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `airconditioner`
--

INSERT INTO `airconditioner` (`email`, `appliance_num`, `EER`) VALUES
('18darvbp5e@aol.com', 24, '99.7'),
('1bgtrfpi5s@yahoo.com', 10, '12.5'),
('2199iyt70f@yahoo.com', 17, '33.8'),
('90lbt7m6ao@gmail.com', 27, '23.5'),
('ag8ywfybio@gmail.com', 3, '97.4'),
('eav4huhtm5@yahoo.com', 26, '66.8'),
('g3kha80rzd@gmail.com', 33, '21.2'),
('h2tgjud8z8@gmail.com', 38, '80.1'),
('na4evnzw16@hotmail.com', 16, '82.0'),
('na4evnzw16@hotmail.com', 23, '14.1'),
('nqzidv2zo4@hotmail.com', 9, '24.0'),
('nqzidv2zo4@hotmail.com', 28, '39.5'),
('p1ia196lt9@gmail.com', 19, '81.7'),
('qha38aqem3@hotmail.com', 31, '43.1'),
('qha38aqem3@hotmail.com', 35, '3.1'),
('qha38aqem3@hotmail.com', 44, '56.1'),
('r00easr9gu@aol.com', 22, '75.9'),
('rdj56z6og6@gmail.com', 11, '36.7'),
('rneao1gbro@hotmail.com', 37, '65.1'),
('t868x4iijb@yahoo.com', 13, '53.9'),
('uhlgof78ld@aol.com', 46, '64.9'),
('xtpb2npbwq@aol.com', 2, '60.8'),
('ye6toqvj0t@yahoo.com', 45, '86.8'),
('z42lqf7sro@aol.com', 36, '30.7'),
('z42lqf7sro@aol.com', 39, '1.6');

-- --------------------------------------------------------

--
-- Table structure for table `appliance`
--

CREATE TABLE `appliance` (
  `email` varchar(255) NOT NULL,
  `appliance_num` int(11) NOT NULL,
  `manufacturer_name` varchar(100) NOT NULL,
  `model_name` varchar(100) DEFAULT NULL,
  `BTU_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `appliance`
--

INSERT INTO `appliance` (`email`, `appliance_num`, `manufacturer_name`, `model_name`, `BTU_rating`) VALUES
('1dinatdc7r@hotmail.com', 8, 'LG', 'Microwave', 8),
('1dinatdc7r@hotmail.com', 18, 'Samsung', 'Dryer', 43),
('1dinatdc7r@hotmail.com', 26, 'LG', 'Dishwasher', 5),
('1dinatdc7r@hotmail.com', 100, 'LG', 'Dryer', 89),
('1dinatdc7r@hotmail.com', 200, 'LG', 'Dryer', 89),
('6klwqizvof@hotmail.com', 2, 'GE', 'Microwave', 94),
('6klwqizvof@hotmail.com', 6, 'Samsung', 'Oven', 13),
('6oy3sg00az@hotmail.com', 1, 'LG', 'Dryer', 89),
('7077ak510b@gmail.com', 40, 'Bosch', 'Oven', 93),
('7c53erlh3b@yahoo.com', 23, 'Bosch', 'Washer', 49),
('7kc7fy9rtd@hotmail.com', 31, 'Samsung', 'Washer', 73),
('7kc7fy9rtd@hotmail.com', 41, 'LG', 'Dryer', 58),
('7kc7fy9rtd@hotmail.com', 50, 'GE', 'Dishwasher', 81),
('8xcw0v5bmd@yahoo.com', 4, 'LG', 'Dishwasher', 97),
('9pixanzt0m@hotmail.com', 3, 'Frigidaire', 'Dryer', 21),
('9q4pobye3r@yahoo.com', 24, 'LG', 'Washer', 68),
('a3hb3pj4mo@yahoo.com', 17, 'Bosch', 'Refrigerator', 46),
('a3hb3pj4mo@yahoo.com', 34, 'LG', 'Dishwasher', 18),
('b6eunn42rq@yahoo.com', 44, 'Bosch', 'Washer', 82),
('bo2g8nd8z0@aol.com', 19, 'Frigidaire', 'Dishwasher', 64),
('bo2g8nd8z0@aol.com', 30, 'Samsung', 'Microwave', 4),
('ds3x326vhw@gmail.com', 21, 'Frigidaire', 'Washer', 84),
('f6j4lct4j6@gmail.com', 48, 'GE', 'Microwave', 48),
('g64paokkzx@yahoo.com', 7, 'GE', 'Dishwasher', 81),
('g64paokkzx@yahoo.com', 14, 'Whirlpool', 'Dishwasher', 86),
('hzmjyjq4ag@hotmail.com', 22, 'GE', 'Dishwasher', 16),
('iihgki6h32@aol.com', 35, 'Samsung', 'Dryer', 37),
('iihgki6h32@aol.com', 37, 'LG', 'Washer', 83),
('iu54zhfgun@yahoo.com', 9, 'Whirlpool', 'Refrigerator', 37),
('iu54zhfgun@yahoo.com', 42, 'Frigidaire', 'Refrigerator', 49),
('jvgruv0mue@yahoo.com', 11, 'Frigidaire', 'Oven', 1),
('kzic39mvs6@yahoo.com', 12, 'GE', 'Dishwasher', 30),
('lmmr4n746x@hotmail.com', 36, 'Bosch', 'Microwave', 60),
('lt2dechkrv@hotmail.com', 33, 'GE', 'Dishwasher', 9),
('mb12bcf9e1@hotmail.com', 27, 'Whirlpool', 'Oven', 12),
('od8hne2jmd@gmail.com', 28, 'Bosch', 'Dryer', 80),
('od8hne2jmd@gmail.com', 38, 'Whirlpool', 'Oven', 100),
('oewjwiv7zj@gmail.com', 13, 'Frigidaire', 'Oven', 87),
('orqihxofiw@gmail.com', 29, 'Bosch', 'Dryer', 99),
('p2y8fgkb0v@hotmail.com', 15, 'Whirlpool', 'Refrigerator', 92),
('p2y8fgkb0v@hotmail.com', 45, 'Frigidaire', 'Refrigerator', 66),
('p76c8z33nw@aol.com', 32, 'Bosch', 'Oven', 63),
('pc47faoyvg@hotmail.com', 10, 'Frigidaire', 'Refrigerator', 22),
('pc47faoyvg@hotmail.com', 49, 'Frigidaire', 'Dishwasher', 59),
('pihubbk1zn@yahoo.com', 39, 'Whirlpool', 'Oven', 11),
('pyqknmj56m@gmail.com', 16, 'Whirlpool', 'Dryer', 81),
('s4wqci8r90@hotmail.com', 25, 'GE', 'Refrigerator', 91),
('s4wqci8r90@hotmail.com', 43, 'Samsung', 'Dryer', 21),
('tjhzsunh2e@aol.com', 5, 'Frigidaire', 'Microwave', 31),
('tjhzsunh2e@aol.com', 47, 'Whirlpool', 'Oven', 77),
('zncsk32bks@hotmail.com', 20, 'GE', 'Dishwasher', 8),
('zvzrdymz8w@gmail.com', 46, 'LG', 'Dryer', 89);

-- --------------------------------------------------------

--
-- Table structure for table `heater`
--

CREATE TABLE `heater` (
  `email` varchar(255) NOT NULL,
  `appliance_num` int(11) NOT NULL,
  `energy_source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `heater`
--

INSERT INTO `heater` (`email`, `appliance_num`, `energy_source`) VALUES
('18darvbp5e@aol.com', 24, 'electric'),
('1bgtrfpi5s@yahoo.com', 10, 'electric'),
('1dinatdc7r@hotmail.com', 8, 'gas'),
('1dinatdc7r@hotmail.com', 200, 'gas'),
('2199iyt70f@yahoo.com', 17, 'gas'),
('6oy3sg00az@hotmail.com', 1, 'gas'),
('90lbt7m6ao@gmail.com', 27, 'electric'),
('ag8ywfybio@gmail.com', 3, 'gas'),
('ag8ywfybio@gmail.com', 42, 'electric'),
('bmgcjiaj56@aol.com', 30, 'electric'),
('eav4huhtm5@yahoo.com', 26, 'gas'),
('gx3kuubb1o@hotmail.com', 7, 'fuel oil'),
('gx3kuubb1o@hotmail.com', 8, 'fuel oil'),
('h2tgjud8z8@gmail.com', 15, 'gas'),
('h2tgjud8z8@gmail.com', 38, 'gas'),
('na4evnzw16@hotmail.com', 23, 'electric'),
('ngjk0hi1eq@gmail.com', 49, 'fuel oil'),
('p28l16hrn8@aol.com', 21, 'gas'),
('qha38aqem3@hotmail.com', 31, 'gas'),
('qha38aqem3@hotmail.com', 35, 'gas'),
('r00easr9gu@aol.com', 22, 'gas'),
('r0luhmuqnv@gmail.com', 34, 'gas'),
('t868x4iijb@yahoo.com', 12, 'fuel oil'),
('t868x4iijb@yahoo.com', 13, 'fuel oil'),
('xtpb2npbwq@aol.com', 14, 'fuel oil'),
('ye6toqvj0t@yahoo.com', 45, 'fuel oil'),
('z42lqf7sro@aol.com', 36, 'fuel oil');

-- --------------------------------------------------------

--
-- Table structure for table `heatpump`
--

CREATE TABLE `heatpump` (
  `email` varchar(255) NOT NULL,
  `appliance_num` int(11) NOT NULL,
  `SEER` decimal(20,1) NOT NULL,
  `HSPF` decimal(20,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `heatpump`
--

INSERT INTO `heatpump` (`email`, `appliance_num`, `SEER`, `HSPF`) VALUES
('6oy3sg00az@hotmail.com', 1, '37.7', '8.9'),
('90lbt7m6ao@gmail.com', 27, '57.9', '95.4'),
('ag8ywfybio@gmail.com', 3, '88.5', '41.6'),
('ag8ywfybio@gmail.com', 42, '69.9', '1.5'),
('c94iaict21@aol.com', 40, '17.8', '83.1'),
('eav4huhtm5@yahoo.com', 26, '25.2', '54.7'),
('eav4huhtm5@yahoo.com', 50, '53.9', '44.1'),
('h2tgjud8z8@gmail.com', 15, '31.8', '57.3'),
('h2tgjud8z8@gmail.com', 38, '60.8', '5.7'),
('na4evnzw16@hotmail.com', 16, '96.0', '17.7'),
('ngjk0hi1eq@gmail.com', 49, '30.5', '79.6'),
('nqzidv2zo4@hotmail.com', 28, '73.4', '78.6'),
('p1ia196lt9@gmail.com', 19, '82.0', '91.6'),
('qha38aqem3@hotmail.com', 31, '34.2', '45.7'),
('qha38aqem3@hotmail.com', 35, '53.7', '85.4'),
('r00easr9gu@aol.com', 22, '57.4', '57.6'),
('r0luhmuqnv@gmail.com', 34, '39.9', '68.9'),
('rjs3b6ijik@yahoo.com', 25, '19.1', '36.8'),
('satpzz8npx@yahoo.com', 5, '7.1', '50.9'),
('t868x4iijb@yahoo.com', 12, '14.4', '14.9'),
('t868x4iijb@yahoo.com', 13, '78.0', '24.5'),
('t868x4iijb@yahoo.com', 41, '47.9', '88.1'),
('y6gkasvfr7@hotmail.com', 20, '27.2', '56.5'),
('yhib2v95hn@yahoo.com', 48, '55.6', '76.0'),
('z42lqf7sro@aol.com', 36, '23.1', '96.3');

-- --------------------------------------------------------

--
-- Table structure for table `household`
--

CREATE TABLE `household` (
  `email` varchar(255) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `square_footage` int(11) NOT NULL,
  `household_type` varchar(50) NOT NULL,
  `heating_setting` int(11) DEFAULT NULL,
  `cooling_setting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `household`
--

INSERT INTO `household` (`email`, `postal_code`, `square_footage`, `household_type`, `heating_setting`, `cooling_setting`) VALUES
('0llp1fg34d@hotmail.com', '17932', 4063, 'Mobile home', 0, 80),
('0smwc6l850@hotmail.com', '17932', 2720, 'Condominium', 52, 3),
('1@gatech.edu', '10072', 1022, 'House', 72, 68),
('22d5cj09a7@gmail.com', '17942', 4392, 'Apartment', 51, 43),
('25hnfakm91@gmail.com', '17942', 2291, 'Apartment', 77, 4),
('2@gatech.edu', '10166', 1234, 'House', 72, 68),
('2pdhetyivq@gmail.com', '17882', 1959, 'Condominium', 16, 47),
('33f7vfrsdw@aol.com', '17882', 2544, 'Mobile home', 0, 0),
('39ah18y9bm@hotmail.com', '17932', 1479, 'Apartment', 65, 0),
('3@gatech.edu', '10166', 1200, 'House', 72, 68),
('48rwbqfgvl@gmail.com', '17932', 994, 'Mobile home', 31, 79),
('4jt54m1zrq@yahoo.com', '18045', 4640, 'Apartment', 14, 60),
('5t5g1kxvrz@aol.com', '18045', 3334, 'House', 76, 60),
('5yay6smok4@gmail.com', '34203', 2111, 'Mobile home', 38, 45),
('642st1w2x7@gmail.com', '69646', 1967, 'House', 7, 57),
('6r9ahkcl89@hotmail.com', '92039', 3211, 'Mobile home', 8, 56),
('6snv9bn817@gmail.com', '63742', 3737, 'Townhome', 5, 43),
('74cicmzshh@yahoo.com', '46073', 3564, 'Condominium', 63, 37),
('8w9js9cfdh@yahoo.com', '83326', 3810, 'House', 26, 32),
('apfrdrhi2b@gmail.com', '82480', 2678, 'House', 6, 52),
('bfqvxh897t@aol.com', '18836', 4717, 'Townhome', 0, 54),
('bq8fh67upm@hotmail.com', '19354', 2946, '0', 48, 22),
('e60i4kaofo@yahoo.com', '63359', 2383, 'Apartment', 3, 63),
('ea7d4oqgy5@hotmail.com', '43467', 3866, 'Apartment', 54, 9),
('eanp0uqj4g@gmail.com', '25358', 2133, 'House', 20, 48),
('eh4ddklzkx@aol.com', '87480', 1728, 'Townhome', 54, 70),
('eupago8618@hotmail.com', '59535', 4036, 'Mobile home', 0, 32),
('fzhm021pvu@aol.com', '81865', 1257, 'Condominium', 0, 13),
('g0kh4wo069@aol.com', '21024', 4662, 'Condominium', 0, 66),
('g4u5hej2w2@yahoo.com', '26697', 1853, 'Mobile home', 34, 45),
('j1clmnwkk1@gmail.com', '48439', 4556, 'Apartment', 39, 14),
('jcnqa9ag8o@yahoo.com', '25840', 4909, 'Townhome', 0, 6),
('jdsce1vgog@yahoo.com', '19792', 3198, 'House', 57, 72),
('k97qs3p9dr@gmail.com', '44685', 3440, 'Apartment', 15, 26),
('k9t9mgf1uf@hotmail.com', '26527', 2324, 'Mobile home', 63, 30),
('nezfvhn4wq@aol.com', '42838', 1306, 'Townhome', 0, 73),
('ongenh7x3c@aol.com', '79576', 2933, 'Townhome', 18, 63),
('ovecr46fm0@aol.com', '28208', 2433, 'Apartment', 36, 0),
('pwdxjo3qt2@aol.com', '30909', 2784, 'House', 12, 0),
('q9g4anvzli@yahoo.com', '58739', 4558, 'Townhome', 18, 37),
('qm28t3k5qz@yahoo.com', '41466', 4740, 'Apartment', 78, 24),
('r9rhsfdv56@hotmail.com', '74706', 1285, 'Condominium', 60, 0),
('rz6b0t76b6@yahoo.com', '25623', 1673, 'Townhome', 44, 4),
('s6qwd9ft99@hotmail.com', '20729', 3614, 'House', 68, 0),
('utgb0hu3ed@aol.com', '86478', 3555, 'Townhome', 58, 8),
('w8aofow65w@aol.com', '61848', 1415, 'Townhome', 63, 5),
('wxkqiorf3x@yahoo.com', '91895', 4830, 'Townhome', 5, 25),
('xquqg5s4pp@yahoo.com', '77110', 3503, 'Apartment', 4, 37),
('y4ea7y1fi4@yahoo.com', '90509', 4254, 'Mobile home', 47, 64),
('y4stkm25df@aol.com', '24365', 1957, 'Apartment', 59, 0),
('ybpfxqudhk@gmail.com', '47439', 757, 'Condominium', 24, 12),
('yh38489cz6@hotmail.com', '22934', 4153, 'Mobile home', 80, 15),
('yrshzwi4az@yahoo.com', '97254', 3688, 'Condominium', 24, 76);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `postal_code` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`postal_code`, `city`, `state`, `latitude`, `longitude`) VALUES
('10072', 'New York', 'NY', '40.780751', '-73.977182'),
('10166', 'New York', 'NY', '40.754591', '-73.976238'),
('1094', 'Wheelwright', 'MA', '42.358201', '-72.140846'),
('10965', 'Pearl River', 'NY', '41.063329', '-74.017340'),
('10986', 'Tomkins Cove', 'NY', '41.271543', '-73.986760'),
('10998', 'Westtown', 'NY', '41.334034', '-74.545930'),
('11560', 'Locust Valley', 'NY', '40.881957', '-73.594170'),
('11703', 'North Babylon', 'NY', '40.733398', '-73.322570'),
('11707', 'West Babylon', 'NY', '40.922326', '-72.637078'),
('11716', 'Bohemia', 'NY', '40.770042', '-73.113760'),
('11763', 'Medford', 'NY', '40.820786', '-72.983750'),
('12139', 'Piseco', 'NY', '43.402760', '-74.569720'),
('12151', 'Round Lake', 'NY', '42.932326', '-73.793630'),
('12195', 'West Lebanon', 'NY', '42.479384', '-73.474809'),
('12197', 'Worcester', 'NY', '42.610314', '-74.724010'),
('12442', 'Hunter', 'NY', '42.222061', '-74.234180'),
('12509', 'La Grange', 'NY', '41.643599', '-73.847176'),
('12719', 'Barryville', 'NY', '41.480326', '-74.926940'),
('12771', 'Port Jervis', 'NY', '41.374734', '-74.663150'),
('12810', 'Athol', 'NY', '43.484741', '-73.891510'),
('13082', 'Kirkville', 'NY', '43.099547', '-75.961900'),
('13135', 'Phoenix', 'NY', '43.235916', '-76.313390'),
('13147', 'Scipio Center', 'NY', '42.774714', '-76.570450'),
('13334', 'Eaton', 'NY', '42.839170', '-75.654820'),
('13350', 'Herkimer', 'NY', '43.038149', '-74.984600'),
('13459', 'Sharon Springs', 'NY', '42.774077', '-74.584040'),
('13479', 'Washington Mills', 'NY', '43.053769', '-75.271559'),
('13503', 'Utica', 'NY', '43.101869', '-75.231158'),
('13626', 'Copenhagen', 'NY', '43.859025', '-75.729420'),
('13655', 'Hogansburg', 'NY', '44.981840', '-74.673740'),
('13788', 'Hobart', 'NY', '42.368357', '-74.664520'),
('13827', 'Owego', 'NY', '42.120274', '-76.258740'),
('14043', 'Depew', 'NY', '42.904958', '-78.700600'),
('14150', 'Tonawanda', 'NY', '43.001907', '-78.863100'),
('14301', 'Niagara Falls', 'NY', '43.096555', '-79.039250'),
('14617', 'Rochester', 'NY', '43.223213', '-77.597210'),
('14642', 'Rochester', 'NY', '43.286024', '-77.684264'),
('14717', 'Caneadea', 'NY', '42.370740', '-78.193350'),
('14739', 'Friendship', 'NY', '42.192384', '-78.143080'),
('15227', 'Pittsburgh', 'PA', '40.377869', '-79.975160'),
('15238', 'Pittsburgh', 'PA', '40.518701', '-79.867440'),
('15242', 'Pittsburgh', 'PA', '40.434436', '-80.024817'),
('15278', 'Pittsburgh', 'PA', '40.434436', '-80.024817'),
('15323', 'Claysville', 'PA', '40.114204', '-80.407150'),
('15480', 'Smock', 'PA', '39.987054', '-79.778790'),
('15482', 'Star Junction', 'PA', '40.062849', '-79.763380'),
('15555', 'Quecreek', 'PA', '40.091429', '-79.087198'),
('15564', 'Wellersburg', 'PA', '39.729896', '-78.844105'),
('15612', 'Alverton', 'PA', '40.136883', '-79.590330'),
('15665', 'Manor', 'PA', '40.333339', '-79.666460'),
('15773', 'Saint Benedict', 'PA', '40.628368', '-78.733350'),
('15944', 'New Florence', 'PA', '40.371165', '-79.077200'),
('16020', 'Boyers', 'PA', '41.109360', '-79.908160'),
('16121', 'Farrell', 'PA', '41.211606', '-80.494040'),
('16341', 'Pleasantville', 'PA', '41.560056', '-79.538520'),
('16601', 'Altoona', 'PA', '40.526319', '-78.400820'),
('16662', 'Martinsburg', 'PA', '40.306709', '-78.319870'),
('16665', 'Newry', 'PA', '40.393223', '-78.435080'),
('16830', 'Clearfield', 'PA', '41.026239', '-78.438380'),
('16876', 'Wallaceton', 'PA', '40.960106', '-78.288860'),
('16877', 'Warriors Mark', 'PA', '40.721787', '-78.085610'),
('16927', 'Harrison Valley', 'PA', '41.958059', '-77.671870'),
('16940', 'Nelson', 'PA', '41.978436', '-77.246670'),
('17010', 'Campbelltown', 'PA', '40.280149', '-76.580600'),
('17052', 'Mapleton Depot', 'PA', '40.338058', '-77.977900'),
('17212', 'Big Cove Tannery', 'PA', '39.812310', '-78.063370'),
('17265', 'Upperstrasburg', 'PA', '40.035958', '-77.791130'),
('17301', 'Abbottstown', 'PA', '39.891548', '-76.983590'),
('17560', 'New Providence', 'PA', '39.915209', '-76.215460'),
('17570', 'Rheems', 'PA', '40.129494', '-76.569910'),
('17585', 'Witmer', 'PA', '40.048398', '-76.211427'),
('17839', 'Light Street', 'PA', '41.020062', '-76.438413'),
('17866', 'Coal Township', 'PA', '40.791328', '-76.563930'),
('17882', 'Troxelville', 'PA', '40.801614', '-77.205370'),
('17932', 'Frackville', 'PA', '40.649109', '-76.503339'),
('17942', 'Landingville', 'PA', '40.722587', '-76.229623'),
('18045', 'Easton', 'PA', '40.681531', '-75.267220'),
('18216', 'Beaver Meadows', 'PA', '40.931187', '-75.914930'),
('18221', 'Drifton', 'PA', '41.004017', '-75.905690'),
('18355', 'Scotrun', 'PA', '41.074757', '-75.362590'),
('18456', 'Prompton', 'PA', '41.606185', '-75.339710'),
('18465', 'Thompson', 'PA', '41.839349', '-75.508410'),
('18466', 'Tobyhanna', 'PA', '41.190120', '-75.367790'),
('18825', 'Jackson', 'PA', '41.822157', '-75.595060'),
('18834', 'New Milford', 'PA', '41.853082', '-75.720770'),
('18921', 'Ferndale', 'PA', '40.328645', '-75.102780'),
('18947', 'Pipersville', 'PA', '40.426391', '-75.118420'),
('19115', 'Philadelphia', 'PA', '40.092610', '-75.041180'),
('19134', 'Philadelphia', 'PA', '39.991712', '-75.111160'),
('19173', 'Philadelphia', 'PA', '40.001811', '-75.117870'),
('19318', 'Chatham', 'PA', '39.852406', '-75.811789'),
('19420', 'Arcola', 'PA', '40.152871', '-75.456719'),
('19429', 'Conshohocken', 'PA', '40.211896', '-75.355860'),
('19488', 'Norristown', 'PA', '39.983153', '-75.748055'),
('19511', 'Bowers', 'PA', '40.487730', '-75.739300'),
('19524', 'Robeson', 'PA', '40.248684', '-75.858731'),
('19951', 'Harbeson', 'DE', '38.682345', '-75.232860'),
('20227', 'Washington', 'DC', '38.893311', '-77.014647'),
('20277', 'Washington', 'DC', '38.893311', '-77.014647'),
('20521', 'Washington', 'DC', '38.893311', '-77.014647'),
('20557', 'Washington', 'DC', '38.887405', '-77.004663'),
('20690', 'Tall Timbers', 'MD', '38.165432', '-76.532840'),
('20711', 'Lothian', 'MD', '38.808840', '-76.672360'),
('20868', 'Spencerville', 'MD', '39.127028', '-76.963720'),
('21105', 'Maryland Line', 'MD', '39.712453', '-76.650690'),
('21241', 'Baltimore', 'MD', '39.284707', '-76.620489'),
('2126', 'Mattapan', 'MA', '42.272098', '-71.094260'),
('21623', 'Church Hill', 'MD', '39.123235', '-75.967070'),
('21634', 'Fishing Creek', 'MD', '38.288409', '-76.201460'),
('2169', 'Quincy', 'MA', '42.250739', '-70.995930'),
('21713', 'Boonsboro', 'MD', '39.521507', '-77.660560'),
('21767', 'Maugansville', 'MD', '39.697894', '-77.745140'),
('21849', 'Parsonsburg', 'MD', '38.363057', '-75.455740'),
('22218', 'Arlington', 'VA', '38.880811', '-77.112950'),
('22334', 'Alexandria', 'VA', '38.815762', '-77.090050'),
('22454', 'Dunnsville', 'VA', '37.854791', '-76.812980'),
('22606', 'Newport News', 'VA', '38.112139', '-77.329674'),
('22640', 'Huntly', 'VA', '38.808303', '-78.135780'),
('22720', 'Goldvein', 'VA', '38.474222', '-77.643610'),
('23025', 'Cardinal', 'VA', '37.422209', '-76.373040'),
('23101', 'Macon', 'VA', '37.553314', '-77.892964'),
('23176', 'Wake', 'VA', '37.571789', '-76.416310'),
('23178', 'Ware Neck', 'VA', '37.400287', '-76.460890'),
('23191', 'Zanoni', 'VA', '37.418242', '-76.508402'),
('23228', 'Richmond', 'VA', '37.621745', '-77.488960'),
('23290', 'Richmond', 'VA', '37.524246', '-77.493157'),
('23297', 'Richmond', 'VA', '37.389721', '-77.561266'),
('23328', 'Chesapeake', 'VA', '36.708500', '-76.278531'),
('23435', 'Suffolk', 'VA', '36.848820', '-76.465210'),
('23486', 'Willis Wharf', 'VA', '37.518917', '-75.810482'),
('23487', 'Windsor', 'VA', '36.828408', '-76.735060'),
('23541', 'Norfolk', 'VA', '36.931166', '-76.239720'),
('2361', 'Plymouth', 'MA', '41.970474', '-70.701357'),
('2375', 'South Easton', 'MA', '42.029749', '-71.101910'),
('2382', 'Whitman', 'MA', '42.082350', '-70.937340'),
('23834', 'Colonial Heights', 'VA', '37.265403', '-77.404380'),
('23839', 'Dendron', 'VA', '37.079298', '-76.921550'),
('24008', 'Roanoke', 'VA', '37.274175', '-79.957860'),
('24062', 'Blacksburg', 'VA', '37.174227', '-80.395698'),
('24069', 'Cascade', 'VA', '36.586545', '-79.641940'),
('24292', 'Whitetop', 'VA', '36.595650', '-81.591540'),
('24324', 'Draper', 'VA', '36.973028', '-80.793090'),
('24513', 'Lynchburg', 'VA', '37.245798', '-79.133546'),
('24550', 'Evington', 'VA', '37.237928', '-79.282680'),
('24605', 'Bluefield', 'VA', '37.222548', '-81.336700'),
('24620', 'Hurley', 'VA', '37.409883', '-82.023170'),
('24639', 'Raven', 'VA', '37.136584', '-81.890680'),
('2472', 'Watertown', 'MA', '42.371296', '-71.181960'),
('25040', 'Charlton Heights', 'WV', '38.125630', '-81.244990'),
('25053', 'Danville', 'WV', '38.057380', '-81.860820'),
('25140', 'Naoma', 'WV', '37.883223', '-81.480010'),
('25444', 'Slanesville', 'WV', '39.412828', '-78.525870'),
('25521', 'Griffithsville', 'WV', '38.238045', '-81.989910'),
('25645', 'Stirrat', 'WV', '37.833204', '-81.902401'),
('25846', 'Glen Jean', 'WV', '37.927809', '-81.151740'),
('25918', 'Shady Spring', 'WV', '37.712469', '-81.005610'),
('26253', 'Beverly', 'WV', '38.827205', '-79.890570'),
('26267', 'Ellamore', 'WV', '38.912609', '-80.079070'),
('26280', 'Mill Creek', 'WV', '38.736144', '-80.000000'),
('2639', 'Dennis Port', 'MA', '41.661115', '-70.133480'),
('26425', 'Rowlesburg', 'WV', '39.320034', '-79.684420'),
('26561', 'Big Run', 'WV', '39.575518', '-80.666712'),
('26865', 'Yellow Spring', 'WV', '39.199856', '-78.496550'),
('27028', 'Mocksville', 'NC', '35.920477', '-80.571430'),
('27049', 'Toast', 'NC', '36.551332', '-80.655786'),
('27103', 'Winston Salem', 'NC', '36.066545', '-80.307330'),
('27105', 'Winston Salem', 'NC', '36.147887', '-80.234230'),
('27107', 'Winston Salem', 'NC', '36.046215', '-80.189980'),
('2719', 'Fairhaven', 'MA', '41.634152', '-70.881400'),
('27230', 'Cedar Falls', 'NC', '35.802758', '-79.879711'),
('27233', 'Climax', 'NC', '35.911979', '-79.695660'),
('27341', 'Seagrove', 'NC', '35.533320', '-79.710180'),
('2769', 'Rehoboth', 'MA', '41.835067', '-71.261150'),
('27834', 'Greenville', 'NC', '35.626653', '-77.378960'),
('27915', 'Avon', 'NC', '35.354252', '-75.504170'),
('28007', 'Ansonville', 'NC', '35.104652', '-80.109650'),
('28039', 'East Spencer', 'NC', '35.677889', '-80.445930'),
('2815', 'Clayville', 'RI', '41.777861', '-71.670090'),
('28206', 'Charlotte', 'NC', '35.248292', '-80.827480'),
('28282', 'Charlotte', 'NC', '35.224242', '-80.844743'),
('28373', 'Pinebluff', 'NC', '35.100144', '-79.479790'),
('28386', 'Shannon', 'NC', '34.851865', '-79.122660'),
('2840', 'Newport', 'RI', '41.488002', '-71.312620'),
('28519', 'Bridgeton', 'NC', '35.120742', '-77.019690'),
('28584', 'Swansboro', 'NC', '34.697710', '-77.106140'),
('2875', 'Shannock', 'RI', '41.447642', '-71.638770'),
('28772', 'Rosman', 'NC', '35.139812', '-82.842530'),
('2886', 'Warwick', 'RI', '41.705478', '-71.451190'),
('2909', 'Providence', 'RI', '41.819100', '-71.447750'),
('29164', 'Wagener', 'SC', '33.659078', '-81.408450'),
('29260', 'Columbia', 'SC', '34.005992', '-80.970766'),
('29325', 'Clinton', 'SC', '34.470115', '-81.867610'),
('29336', 'Fairforest', 'SC', '34.888237', '-81.969020'),
('29348', 'Gramling', 'SC', '34.888237', '-81.969020'),
('29520', 'Cheraw', 'SC', '34.688620', '-79.923150'),
('29607', 'Greenville', 'SC', '34.825592', '-82.340990'),
('29615', 'Greenville', 'SC', '34.866801', '-82.317390'),
('29708', 'Fort Mill', 'SC', '35.040969', '-80.994270'),
('29730', 'Rock Hill', 'SC', '34.914611', '-81.012500'),
('30145', 'Kingston', 'GA', '34.237986', '-84.978010'),
('30263', 'Newnan', 'GA', '33.387790', '-84.825360'),
('30334', 'Atlanta', 'GA', '33.702657', '-84.439127'),
('30339', 'Atlanta', 'GA', '33.875070', '-84.466150'),
('30354', 'Atlanta', 'GA', '33.658834', '-84.396820'),
('30384', 'Atlanta', 'GA', '33.844371', '-84.474050'),
('30415', 'Brooklet', 'GA', '32.345600', '-81.623390'),
('30444', 'East Point', 'GA', '33.696073', '-84.450276'),
('30531', 'Cornelia', 'GA', '34.514215', '-83.541180'),
('30663', 'Rutledge', 'GA', '33.614556', '-83.611570'),
('30671', 'Maxeys', 'GA', '33.748344', '-83.185380'),
('30728', 'La Fayette', 'GA', '34.696201', '-85.258240'),
('30746', 'Sugar Valley', 'GA', '34.574804', '-85.024820'),
('30747', 'Summerville', 'GA', '34.489848', '-85.329280'),
('31069', 'Perry', 'GA', '32.460791', '-83.735410'),
('31150', 'Atlanta', 'GA', '33.844371', '-84.474050'),
('31525', 'Brunswick', 'GA', '31.260995', '-81.498320'),
('31606', 'Valdosta', 'GA', '30.802411', '-83.196240'),
('31646', 'Saint George', 'GA', '30.518903', '-82.080630'),
('31714', 'Ashburn', 'GA', '31.709742', '-83.665190'),
('31719', 'Americus', 'GA', '32.085491', '-84.252665'),
('31732', 'Cedar Springs', 'GA', '31.169794', '-85.055700'),
('31744', 'Doerun', 'GA', '31.325004', '-83.909370'),
('31754', 'Georgetown', 'GA', '31.860476', '-85.075340'),
('31826', 'Shiloh', 'GA', '32.803518', '-84.693840'),
('32229', 'Jacksonville', 'FL', '30.344940', '-81.683107'),
('32361', 'Wacissa', 'FL', '30.357761', '-83.988820'),
('32503', 'Pensacola', 'FL', '30.447997', '-87.207270'),
('32571', 'Milton', 'FL', '30.627637', '-87.167240'),
('32621', 'Bronson', 'FL', '29.447069', '-82.604520'),
('32634', 'Fairfield', 'FL', '29.350890', '-82.276480'),
('3266', 'Rumney', 'NH', '43.806365', '-71.879520'),
('32706', 'Cassadaga', 'FL', '28.965591', '-81.236540'),
('32724', 'Deland', 'FL', '29.039757', '-81.279270'),
('32746', 'Lake Mary', 'FL', '28.758133', '-81.339920'),
('32757', 'Mount Dora', 'FL', '28.786272', '-81.644750'),
('32798', 'Zellwood', 'FL', '28.716923', '-81.575400'),
('32830', 'Orlando', 'FL', '28.385549', '-81.505894'),
('32971', 'Winter Beach', 'FL', '27.709049', '-80.572557'),
('33315', 'Fort Lauderdale', 'FL', '26.094385', '-80.154220'),
('33446', 'Delray Beach', 'FL', '26.452473', '-80.165090'),
('33523', 'Dade City', 'FL', '28.433019', '-82.197360'),
('33659', 'Palm River-Clair Mel', 'FL', '27.894362', '-82.338911'),
('33706', 'Saint Petersburg', 'FL', '27.741505', '-82.751790'),
('33756', 'Clearwater', 'FL', '27.944631', '-82.787020'),
('33801', 'Lakeland', 'FL', '28.041198', '-81.923920'),
('33850', 'Lake Alfred', 'FL', '28.092512', '-81.727580'),
('33994', 'Fort Myers', 'FL', '26.552895', '-81.948610'),
('34101', 'Naples', 'FL', '25.855534', '-81.387190'),
('34209', 'Bradenton', 'FL', '27.488866', '-82.627370'),
('34447', 'Homosassa Springs', 'FL', '28.804911', '-82.574264'),
('34489', 'Silver Springs', 'FL', '29.215153', '-82.097163'),
('35004', 'Moody', 'AL', '33.606379', '-86.502490'),
('35259', 'Birmingham', 'AL', '33.544622', '-86.929208'),
('35283', 'Birmingham', 'AL', '33.544622', '-86.929208'),
('35576', 'Millport', 'AL', '33.581135', '-88.108350'),
('35593', 'Vina', 'AL', '34.369264', '-88.067450'),
('35979', 'Higdon', 'AL', '34.831242', '-85.615640'),
('36035', 'Goshen', 'AL', '31.756986', '-86.144890'),
('36268', 'Munford', 'AL', '33.511790', '-85.947560'),
('36350', 'Midland City', 'AL', '31.319083', '-85.487180'),
('3648', 'Enfield', 'NH', '43.630276', '-72.135352'),
('36535', 'Foley', 'AL', '30.396876', '-87.696160'),
('36538', 'Frankville', 'AL', '31.646087', '-88.141880'),
('36744', 'Greensboro', 'AL', '32.703529', '-87.601770'),
('36776', 'Sawyerville', 'AL', '32.739091', '-87.741700'),
('36801', 'Opelika', 'AL', '32.660497', '-85.399170'),
('36869', 'Phenix City', 'AL', '32.433065', '-85.045120'),
('36879', 'Waverly', 'AL', '32.733511', '-85.553220'),
('37018', 'Beechgrove', 'TN', '35.642797', '-86.166900'),
('37041', 'Clarksville', 'TN', '36.477428', '-87.377197'),
('37048', 'Cottontown', 'TN', '36.491753', '-86.599630'),
('37050', 'Cumberland City', 'TN', '36.373626', '-87.631580'),
('37322', 'Decatur', 'TN', '35.503723', '-84.807410'),
('37367', 'Pikeville', 'TN', '35.635097', '-85.171610'),
('37407', 'Chattanooga', 'TN', '35.000825', '-85.286730'),
('37421', 'Chattanooga', 'TN', '35.028574', '-85.159390'),
('37616', 'Afton', 'TN', '36.218863', '-82.747040'),
('37618', 'Bluff City', 'TN', '36.469605', '-82.229980'),
('37774', 'Loudon', 'TN', '35.725969', '-84.330690'),
('38017', 'Collierville', 'TN', '35.057224', '-89.674170'),
('38124', 'Memphis', 'TN', '35.201738', '-89.971538'),
('38138', 'Germantown', 'TN', '35.088885', '-89.806770'),
('38401', 'Columbia', 'TN', '35.619784', '-87.035650'),
('38602', 'Arkabutla', 'MS', '34.686272', '-90.106756'),
('38704', 'Greenville', 'MS', '33.253401', '-90.918503'),
('38824', 'Baldwyn', 'MS', '34.511249', '-88.630510'),
('38844', 'Gattman', 'MS', '33.885239', '-88.245910'),
('38860', 'Okolona', 'MS', '33.976464', '-88.760080'),
('38912', 'Avalon', 'MS', '33.654970', '-90.053958'),
('38954', 'Sidon', 'MS', '33.417028', '-90.213180'),
('39067', 'Ethel', 'MS', '33.127907', '-89.467040'),
('39072', 'Pocahontas', 'MS', '32.311287', '-90.397157'),
('39154', 'Raymond', 'MS', '32.230592', '-90.457090'),
('39330', 'Enterprise', 'MS', '32.170432', '-88.838660'),
('39478', 'Sandy Hook', 'MS', '31.054236', '-89.855530'),
('39569', 'Pascagoula', 'MS', '30.441072', '-88.634482'),
('39731', 'Brooksville', 'MS', '33.230508', '-88.579680'),
('40078', 'Willisburg', 'KY', '37.840066', '-85.125720'),
('40081', 'Crestwood', 'KY', '38.338600', '-85.492459'),
('40118', 'Fairdale', 'KY', '38.106135', '-85.753620'),
('40298', 'Louisville', 'KY', '38.188962', '-85.676819'),
('4033', 'Freeport', 'ME', '44.408078', '-70.470703'),
('40371', 'Salt Lick', 'KY', '38.087867', '-83.611460'),
('40813', 'Calvin', 'KY', '36.737835', '-83.602480'),
('41065', 'Muses Mills', 'KY', '38.348100', '-83.718626'),
('41132', 'Denton', 'KY', '38.251159', '-82.834960'),
('41351', 'Mistletoe', 'KY', '37.398617', '-83.704908'),
('41660', 'Teaberry', 'KY', '37.428801', '-82.643740'),
('42046', 'Hamlin', 'KY', '36.603300', '-88.092285'),
('42104', 'Bowling Green', 'KY', '36.930527', '-86.447510'),
('42163', 'Rocky Hill', 'KY', '37.094250', '-86.143188'),
('43014', 'Danville', 'OH', '40.470806', '-82.264220'),
('43081', 'Westerville', 'OH', '40.109513', '-82.916060'),
('43115', 'Clarksburg', 'OH', '39.501913', '-83.173830'),
('4327', 'Richmond', 'ME', '44.091560', '-69.804077'),
('43334', 'Marengo', 'OH', '40.399648', '-82.807830'),
('43430', 'Genoa', 'OH', '41.523309', '-83.370720'),
('43506', 'Bryan', 'OH', '41.471569', '-84.554590'),
('43623', 'Toledo', 'OH', '41.707649', '-83.643630'),
('43652', 'Toledo', 'OH', '41.686778', '-83.439430'),
('43681', 'Toledo', 'OH', '41.686778', '-83.439430'),
('43719', 'Bethesda', 'OH', '40.009383', '-81.076300'),
('43733', 'Derwent', 'OH', '39.923616', '-81.542965'),
('43735', 'East Fultonham', 'OH', '39.851515', '-82.121730'),
('43748', 'Junction City', 'OH', '39.710863', '-82.302280'),
('43984', 'New Rumley', 'OH', '40.296490', '-81.102502'),
('44022', 'Chagrin Falls', 'OH', '41.439320', '-81.392320'),
('44333', 'Akron', 'OH', '41.144661', '-81.619480'),
('44398', 'Akron', 'OH', '41.128705', '-81.539990'),
('44403', 'Brookfield', 'OH', '41.239987', '-80.583460'),
('4461', 'Milford', 'ME', '44.956776', '-68.621990'),
('44618', 'Dalton', 'OH', '40.787827', '-81.686230'),
('4495', 'Winn', 'ME', '45.484389', '-68.376620'),
('45418', 'Dayton', 'OH', '39.716161', '-84.273400'),
('4546', 'Georgetown', 'ME', '43.767018', '-69.749812'),
('45789', 'Wingett Run', 'OH', '39.551002', '-81.256000'),
('45814', 'Arlington', 'OH', '40.892253', '-83.643380'),
('45841', 'Jenera', 'OH', '40.881217', '-83.731990'),
('4617', 'Brooksville', 'ME', '44.363587', '-68.743990'),
('4630', 'East Machias', 'ME', '44.753992', '-67.378600'),
('46360', 'Michigan City', 'IN', '41.707539', '-86.879020'),
('46507', 'Bristol', 'IN', '41.725061', '-85.817920'),
('46614', 'South Bend', 'IN', '41.626588', '-86.248040'),
('46731', 'Craigville', 'IN', '40.793562', '-85.097400'),
('46787', 'South Whitley', 'IN', '41.080236', '-85.627960'),
('46904', 'Kokomo', 'IN', '40.469625', '-86.118940'),
('47163', 'Otisco', 'IN', '38.544512', '-85.668310'),
('47261', 'Millhousen', 'IN', '39.292004', '-85.491788'),
('47369', 'Pennville', 'IN', '40.495879', '-85.146370'),
('4747', 'Island Falls', 'ME', '46.004523', '-68.270040'),
('47488', 'Hamblen', 'IN', '39.246268', '-86.163826'),
('47520', 'Cannelton', 'IN', '37.934311', '-86.678210'),
('47613', 'Elberfeld', 'IN', '38.170645', '-87.428860'),
('47649', 'Francisco', 'IN', '38.343295', '-87.442750'),
('47851', 'Fontanet', 'IN', '39.573663', '-87.245360'),
('48164', 'New Boston', 'MI', '42.128069', '-83.387850'),
('48215', 'Detroit', 'MI', '42.378287', '-82.952430'),
('48226', 'Detroit', 'MI', '42.331821', '-83.048880'),
('48444', 'Imlay City', 'MI', '43.038967', '-83.060670'),
('48503', 'Flint', 'MI', '43.011227', '-83.692910'),
('49041', 'Comstock', 'MI', '42.245412', '-85.529858'),
('49080', 'Plainwell', 'MI', '42.462935', '-85.612560'),
('49157', 'Richland', 'MI', '44.215510', '-85.298079'),
('49221', 'Adrian', 'MI', '41.900927', '-84.045850'),
('49245', 'Homer', 'MI', '42.147222', '-84.807890'),
('49336', 'Morley', 'MI', '43.494361', '-85.431840'),
('49430', 'Lamont', 'MI', '43.010337', '-85.897540'),
('49464', 'Zeeland', 'MI', '42.829252', '-85.996210'),
('49756', 'Lewiston', 'MI', '44.839929', '-84.307870'),
('4981', 'Stockton Springs', 'ME', '44.499082', '-68.856670'),
('49919', 'Covington', 'MI', '46.559834', '-88.522010'),
('50001', 'Ackworth', 'IA', '41.363615', '-93.414940'),
('50128', 'Jamaica', 'IA', '41.855913', '-94.299810'),
('50167', 'Minburn', 'IA', '41.750745', '-94.046590'),
('50210', 'New Virginia', 'IA', '41.193148', '-93.713880'),
('50278', 'Zearing', 'IA', '42.158866', '-93.296730'),
('50519', 'Bode', 'IA', '42.884723', '-94.276440'),
('50525', 'Clarion', 'IA', '42.738313', '-93.738500'),
('50569', 'Otho', 'IA', '42.417893', '-94.149400'),
('50581', 'Rolfe', 'IA', '42.842111', '-94.531140'),
('5061', 'Randolph Center', 'VT', '43.928369', '-72.573100'),
('50675', 'Traer', 'IA', '42.193577', '-92.482800'),
('51049', 'Quimby', 'IA', '42.626822', '-95.614380'),
('51451', 'Lanesboro', 'IA', '42.184035', '-94.692460'),
('51530', 'Earling', 'IA', '41.773640', '-95.427610'),
('5155', 'South Londonderry', 'VT', '43.158484', '-72.844970'),
('51651', 'Shambaugh', 'IA', '40.657470', '-95.024969'),
('51656', 'Yorktown', 'IA', '40.737446', '-95.156217'),
('52156', 'Luana', 'IA', '43.051922', '-91.458420'),
('52163', 'Protivin', 'IA', '43.216610', '-92.092190'),
('52171', 'Waucoma', 'IA', '43.068101', '-92.052550'),
('52206', 'Atkins', 'IA', '41.993799', '-91.867550'),
('52216', 'Clarence', 'IA', '41.888182', '-91.045670'),
('52401', 'Cedar Rapids', 'IA', '41.975450', '-91.659120'),
('52585', 'Richland', 'IA', '41.194129', '-91.980270'),
('52760', 'Moscow', 'IA', '41.573710', '-91.083690'),
('52809', 'Davenport', 'IA', '41.613034', '-90.606284'),
('53009', 'Byron', 'WI', '43.769830', '-88.494357'),
('53014', 'Chilton', 'WI', '44.033215', '-88.176260'),
('53031', 'Hingham', 'WI', '43.639395', '-87.915705'),
('53171', 'Somers', 'WI', '42.642298', '-87.903161'),
('53189', 'Waukesha', 'WI', '42.967394', '-88.264000'),
('53803', 'Benton', 'WI', '42.563769', '-90.367830'),
('53932', 'Fall River', 'WI', '43.407179', '-89.058370'),
('54020', 'Osceola', 'WI', '45.299735', '-92.642220'),
('54022', 'River Falls', 'WI', '44.854636', '-92.617290'),
('5452', 'Essex Junction', 'VT', '44.501991', '-73.093760'),
('54565', 'Upson', 'WI', '46.309371', '-90.435400'),
('54757', 'New Auburn', 'WI', '45.235611', '-91.521270'),
('54875', 'Springbrook', 'WI', '45.947509', '-91.675260'),
('54931', 'Dale', 'WI', '44.416326', '-88.464873'),
('54936', 'Fond Du Lac', 'WI', '43.740559', '-88.522984'),
('54964', 'Pickett', 'WI', '43.923141', '-88.726540'),
('55018', 'Dennison', 'MN', '44.422975', '-93.000890'),
('55054', 'New Market', 'MN', '44.571056', '-93.354267'),
('55125', 'Saint Paul', 'MN', '44.921982', '-92.942340'),
('55302', 'Annandale', 'MN', '45.246631', '-94.116920'),
('55381', 'Silver Lake', 'MN', '44.904987', '-94.188020'),
('55408', 'Minneapolis', 'MN', '44.947515', '-93.287420'),
('55723', 'Cook', 'MN', '47.854987', '-92.770770'),
('55992', 'Zumbrota', 'MN', '44.297157', '-92.683120'),
('56011', 'Belle Plaine', 'MN', '44.616113', '-93.769060'),
('56039', 'Granada', 'MN', '43.680519', '-94.337730'),
('56091', 'Waldorf', 'MN', '43.930363', '-93.694920'),
('56127', 'Dunnell', 'MN', '43.556667', '-94.774320'),
('56171', 'Sherburn', 'MN', '43.660847', '-94.743570'),
('5648', 'Calais', 'VT', '44.375726', '-72.495090'),
('56517', 'Beltrami', 'MN', '47.551710', '-96.534920'),
('56522', 'Campbell', 'MN', '46.130213', '-96.400190'),
('57231', 'De Smet', 'SD', '44.374289', '-97.574420'),
('57440', 'Frankfort', 'SD', '44.857069', '-98.271910'),
('57443', 'Cambria', 'SD', '45.697865', '-98.317734'),
('57481', 'Westport', 'SD', '45.663385', '-98.622740'),
('57841', 'Carlisle', 'SD', '45.632378', '-98.704197'),
('58017', 'Cogswell', 'ND', '46.059066', '-97.809890'),
('58072', 'Valley City', 'ND', '46.934311', '-98.023740'),
('58323', 'Calvin', 'ND', '48.849591', '-98.905250'),
('58370', 'Saint Michael', 'ND', '47.994379', '-98.869130'),
('58405', 'Jamestown', 'ND', '46.913344', '-98.699553'),
('58418', 'Bowdon', 'ND', '47.421570', '-99.639460'),
('58533', 'Elgin', 'ND', '46.408171', '-101.828530'),
('58723', 'Butte', 'ND', '47.785232', '-100.692570'),
('58771', 'Plaza', 'ND', '48.073998', '-101.976300'),
('58793', 'Westhope', 'ND', '48.871815', '-101.049360'),
('59212', 'Bainville', 'MT', '48.115400', '-104.190360'),
('59333', 'Hathaway', 'MT', '46.271872', '-106.213740'),
('59902', 'Kalispell', 'MT', '48.189424', '-114.143531'),
('60025', 'Glenview', 'IL', '42.076720', '-87.819220'),
('60139', 'Glendale Heights', 'IL', '41.920228', '-88.078910'),
('60438', 'Lansing', 'IL', '41.565685', '-87.548190'),
('60465', 'Palos Hills', 'IL', '41.699432', '-87.829770'),
('6053', 'New Britain', 'CT', '41.686949', '-72.790800'),
('60651', 'Chicago', 'IL', '41.901485', '-87.740550'),
('60697', 'Chicago', 'IL', '41.811929', '-87.687320'),
('6074', 'South Windsor', 'CT', '41.836665', '-72.560760'),
('60974', 'Woodland', 'IL', '40.710295', '-87.731370'),
('61107', 'Rockford', 'IL', '42.280019', '-89.033470'),
('61132', 'Loves Park', 'IL', '42.325364', '-89.170527'),
('61866', 'Rantoul', 'IL', '40.307065', '-88.155750'),
('62001', 'Alhambra', 'IL', '38.884434', '-89.748860'),
('62069', 'Mount Olive', 'IL', '39.077557', '-89.734230'),
('62090', 'Venice', 'IL', '38.670650', '-90.170520'),
('62206', 'East Saint Louis', 'IL', '38.564451', '-90.162800'),
('62248', 'Hecker', 'IL', '38.299507', '-89.961825'),
('623', 'Cabo Rojo', 'PR', '18.086430', '-67.152220'),
('62420', 'Casey', 'IL', '39.299447', '-87.998630'),
('62464', 'Stoy', 'IL', '38.989810', '-87.839627'),
('62549', 'Mt Zion', 'IL', '39.777116', '-88.871710'),
('62611', 'Arenzville', 'IL', '39.883346', '-90.393320'),
('62676', 'Hillyard', 'IL', '39.128248', '-89.923215'),
('62856', 'Logan', 'IL', '37.994296', '-88.941665'),
('62903', 'Carbondale', 'IL', '37.758646', '-89.415831'),
('62957', 'McClure', 'IL', '37.305331', '-89.430660'),
('63179', 'Saint Louis', 'MO', '38.653100', '-90.243462'),
('63436', 'Center', 'MO', '39.501697', '-91.536700'),
('63453', 'Luray', 'MO', '40.489269', '-91.872480'),
('63534', 'Callao', 'MO', '39.741800', '-92.635820'),
('63626', 'Blackwell', 'MO', '38.053566', '-90.642290'),
('63834', 'Charleston', 'MO', '36.915335', '-89.313080'),
('63859', 'Independence', 'MO', '36.267961', '-90.031801'),
('64070', 'Lone Jack', 'MO', '38.895469', '-94.153150'),
('6410', 'Cheshire', 'CT', '41.507049', '-72.904890'),
('64155', 'Kansas City', 'MO', '39.276828', '-94.573440'),
('64436', 'Cosby', 'MO', '39.850535', '-94.694030'),
('64471', 'New Hampton', 'MO', '40.264749', '-94.195870'),
('64503', 'Saint Joseph', 'MO', '39.741794', '-94.832370'),
('64640', 'Gallatin', 'MO', '39.912973', '-93.965360'),
('65047', 'Kaiser', 'MO', '38.140080', '-92.583310'),
('6520', 'New Haven', 'CT', '41.365709', '-72.927507'),
('65325', 'Cole Camp', 'MO', '38.451021', '-93.191560'),
('65638', 'Drury', 'MO', '36.851944', '-92.330810'),
('65707', 'Miller', 'MO', '37.220289', '-93.841810'),
('65775', 'West Plains', 'MO', '36.719145', '-91.874080'),
('65777', 'Moody', 'MO', '36.524268', '-91.988630'),
('659', 'Hatillo', 'PR', '18.432956', '-66.800390'),
('66075', 'Pleasanton', 'KS', '38.184882', '-94.701420'),
('66532', 'Robinson', 'KS', '39.820200', '-95.367760'),
('67050', 'Garden Plain', 'KS', '37.663743', '-97.685390'),
('67102', 'Maple City', 'KS', '37.043519', '-96.759240'),
('67149', 'Viola', 'KS', '37.538257', '-97.620310'),
('67645', 'Lenora', 'KS', '39.609655', '-99.919040'),
('67954', 'Rolla', 'KS', '37.163412', '-101.619090'),
('68041', 'Mead', 'NE', '41.220910', '-96.477190'),
('68118', 'Omaha', 'NE', '41.263194', '-96.171080'),
('68636', 'Elgin', 'NE', '42.009216', '-98.133110'),
('68743', 'Jackson', 'NE', '42.460155', '-96.606680'),
('68783', 'Verdigre', 'NE', '42.620877', '-98.120010'),
('68792', 'Wynot', 'NE', '42.749481', '-97.143720'),
('68832', 'Doniphan', 'NE', '40.763643', '-98.387940'),
('70005', 'Metairie', 'LA', '29.999453', '-90.133980'),
('70059', 'Harvey', 'LA', '29.677893', '-90.090100'),
('70065', 'Kenner', 'LA', '30.022853', '-90.251330'),
('70185', 'New Orleans', 'LA', '30.032997', '-89.882564'),
('7032', 'Kearny', 'NJ', '40.763051', '-74.137180'),
('70718', 'Brittany', 'LA', '30.201004', '-90.868876'),
('71048', 'Lisbon', 'LA', '32.830135', '-92.855680'),
('71226', 'Chatham', 'LA', '32.277816', '-92.452830'),
('71242', 'Forest', 'LA', '32.823880', '-91.398944'),
('71284', 'Tallulah', 'LA', '32.341594', '-91.216458'),
('714', 'Arroyo', 'PR', '17.987288', '-66.055520'),
('71423', 'Dry Prong', 'LA', '31.563093', '-92.549540'),
('71443', 'Kurthwood', 'LA', '31.101900', '-93.361238'),
('71748', 'Ivan', 'AR', '33.975470', '-92.647817'),
('71751', 'Louann', 'AR', '33.397936', '-92.771160'),
('71937', 'Cove', 'AR', '34.398483', '-94.393980'),
('72044', 'Edgemont', 'AR', '35.624351', '-92.160560'),
('72068', 'Higginson', 'AR', '35.169853', '-91.708330'),
('72112', 'Newport', 'AR', '35.586065', '-91.246950'),
('72118', 'North Little Rock', 'AR', '34.813269', '-92.302290'),
('72314', 'Birdeye', 'AR', '35.357184', '-90.677331'),
('72536', 'Franklin', 'AR', '36.155897', '-91.756440'),
('72542', 'Hardy', 'AR', '36.303556', '-91.485730'),
('72686', 'Witts Springs', 'AR', '35.747154', '-92.909850'),
('72714', 'Bella Vista', 'AR', '36.458041', '-94.235510'),
('72774', 'West Fork', 'AR', '35.896307', '-94.196610'),
('72827', 'Bluffton', 'AR', '34.832089', '-93.711110'),
('72927', 'Booneville', 'AR', '35.105966', '-93.975310'),
('7309', 'Jersey City', 'NJ', '40.732760', '-74.075485'),
('73644', 'Elk City', 'OK', '35.405935', '-99.416580'),
('73647', 'Foss', 'OK', '35.455440', '-99.174400'),
('73773', 'Waukomis', 'OK', '36.273144', '-97.903350'),
('73834', 'Buffalo', 'OK', '36.851116', '-99.589700'),
('74052', 'Oilton', 'OK', '36.084211', '-96.579400'),
('74061', 'Ramona', 'OK', '36.533868', '-95.908650'),
('74330', 'Adair', 'OK', '36.434328', '-95.255120'),
('74345', 'Grove', 'OK', '36.603587', '-94.729740'),
('74465', 'Tahlequah', 'OK', '35.900074', '-95.040008'),
('74570', 'Stuart', 'OK', '34.858091', '-96.092330'),
('74801', 'Shawnee', 'OK', '35.327341', '-96.935440'),
('74956', 'Shady Point', 'OK', '35.122751', '-94.720580'),
('75010', 'Carrollton', 'TX', '33.030556', '-96.893280'),
('75075', 'Plano', 'TX', '33.024721', '-96.740380'),
('75105', 'Chatfield', 'TX', '32.241963', '-96.379170'),
('75294', 'Dallas', 'TX', '32.767268', '-96.777626'),
('75459', 'Howe', 'TX', '33.518979', '-96.635230'),
('75475', 'Randolph', 'TX', '33.485315', '-96.255250'),
('75615', 'Longview', 'TX', '32.511210', '-94.783493'),
('75712', 'Tyler', 'TX', '32.411237', '-95.289903'),
('75756', 'Brownsboro', 'TX', '32.306045', '-95.605070'),
('75757', 'Bullard', 'TX', '32.136787', '-95.367100'),
('75904', 'Lufkin', 'TX', '31.339891', '-94.762950'),
('75961', 'Nacogdoches', 'TX', '31.626011', '-94.603380'),
('76054', 'Hurst', 'TX', '32.858398', '-97.176810'),
('76066', 'Millsap', 'TX', '32.715412', '-98.001650'),
('76067', 'Mineral Wells', 'TX', '32.810275', '-98.107070'),
('76452', 'Energy', 'TX', '31.758351', '-98.406130'),
('76476', 'Tolar', 'TX', '32.387648', '-97.939590'),
('76503', 'Temple', 'TX', '31.053986', '-97.320306'),
('76561', 'Oglesby', 'TX', '31.430323', '-97.529460'),
('76683', 'Riesel', 'TX', '31.503892', '-97.179773'),
('767', 'Yabucoa', 'PR', '18.072752', '-65.897030'),
('76841', 'Fort McKavett', 'TX', '30.834326', '-100.098430'),
('76855', 'Lowake', 'TX', '31.333614', '-99.858370'),
('76857', 'May', 'TX', '31.917862', '-98.953250'),
('76878', 'Santa Anna', 'TX', '31.722813', '-99.295900'),
('77015', 'Houston', 'TX', '29.778526', '-95.181180'),
('77046', 'Houston', 'TX', '29.733181', '-95.431310'),
('77289', 'Houston', 'TX', '29.833990', '-95.434241'),
('77478', 'Sugar Land', 'TX', '29.627737', '-95.624440'),
('77550', 'Galveston', 'TX', '29.298448', '-94.793160'),
('77581', 'Pearland', 'TX', '29.562180', '-95.269820'),
('77590', 'Texas City', 'TX', '29.395283', '-94.917590'),
('77834', 'Brenham', 'TX', '30.231333', '-96.290358'),
('78011', 'Charlotte', 'TX', '28.795637', '-98.719510'),
('78013', 'Comfort', 'TX', '29.972473', '-98.910840'),
('78041', 'Laredo', 'TX', '27.542244', '-99.492330'),
('78148', 'Universal City', 'TX', '29.550223', '-98.299360'),
('78349', 'Concepcion', 'TX', '27.316167', '-98.297970'),
('78588', 'San Isidro', 'TX', '26.720155', '-98.468450'),
('78650', 'McDade', 'TX', '30.283941', '-97.235630'),
('78701', 'Austin', 'TX', '30.271270', '-97.741030'),
('78827', 'Asherton', 'TX', '28.442081', '-99.760640'),
('79080', 'Skellytown', 'TX', '35.655035', '-101.224770'),
('79370', 'Spur', 'TX', '33.478848', '-100.896690'),
('79381', 'Wilson', 'TX', '33.327782', '-101.769060'),
('79541', 'Ovalo', 'TX', '32.151983', '-99.844830'),
('79560', 'Sylvester', 'TX', '32.684029', '-100.199800'),
('7961', 'Morristown', 'NJ', '40.779750', '-74.442797'),
('79917', 'El Paso', 'TX', '31.694842', '-106.299987'),
('80202', 'Denver', 'CO', '39.751586', '-104.996990'),
('80230', 'Denver', 'CO', '39.721763', '-104.896270'),
('80235', 'Denver', 'CO', '39.648328', '-105.084310'),
('803', 'St Thomas', 'VI', '18.322285', '-64.963715'),
('80402', 'Golden', 'CO', '39.522014', '-105.223945'),
('80454', 'Indian Hills', 'CO', '39.631254', '-105.260710'),
('80620', 'Evans', 'CO', '40.378019', '-104.703570'),
('80720', 'Akron', 'CO', '40.124199', '-103.183620'),
('80836', 'Stratton', 'CO', '39.297820', '-102.597450'),
('80940', 'Colorado Springs', 'CO', '38.824690', '-104.562027'),
('81001', 'Pueblo', 'CO', '38.282872', '-104.570290'),
('81062', 'Olney Springs', 'CO', '38.193937', '-103.922750'),
('81148', 'Romeo', 'CO', '37.171583', '-105.986480'),
('81290', 'Florence', 'CO', '38.358421', '-105.106881'),
('81422', 'Naturita', 'CO', '38.296229', '-108.680790'),
('81423', 'Norwood', 'CO', '38.082231', '-108.258600'),
('81505', 'Grand Junction', 'CO', '39.112514', '-108.605060'),
('81624', 'Collbran', 'CO', '39.220166', '-107.934140'),
('81658', 'Vail', 'CO', '39.624171', '-106.497314'),
('82242', 'Van Tassell', 'WY', '42.706475', '-104.120450'),
('82412', 'Byron', 'WY', '44.794477', '-108.534150'),
('82718', 'Gillette', 'WY', '43.939968', '-105.524450'),
('82937', 'Lyman', 'WY', '41.399751', '-110.366240'),
('83121', 'Frontier', 'WY', '41.814385', '-110.537430'),
('83215', 'Atomic City', 'ID', '43.442618', '-112.813160'),
('83355', 'Wendell', 'ID', '42.760790', '-114.710250'),
('83401', 'Idaho Falls', 'ID', '43.528891', '-111.981360'),
('83429', 'Island Park', 'ID', '44.490674', '-111.366310'),
('83547', 'Pollock', 'ID', '45.291282', '-116.356950'),
('83554', 'White Bird', 'ID', '45.717554', '-116.269360'),
('83641', 'Melba', 'ID', '43.370358', '-116.575550'),
('84038', 'Laketown', 'UT', '41.797569', '-111.370200'),
('8406', 'Ventnor City', 'NJ', '39.342299', '-74.481920'),
('84073', 'Talmage', 'UT', '40.352343', '-110.469350'),
('84133', 'Salt Lake City', 'UT', '40.769046', '-111.889319'),
('84305', 'Clarkston', 'UT', '41.938629', '-112.043300'),
('84307', 'Corinne', 'UT', '41.535714', '-112.303730'),
('84316', 'Howell', 'UT', '41.773176', '-112.459650'),
('84530', 'La Sal', 'UT', '38.236886', '-109.154450'),
('84719', 'Brian Head', 'UT', '37.663896', '-112.810810'),
('85225', 'Chandler', 'AZ', '33.316349', '-111.830640'),
('85262', 'Scottsdale', 'AZ', '33.798581', '-111.870800'),
('85268', 'Fountain Hills', 'AZ', '33.604811', '-111.728520'),
('85292', 'Winkelman', 'AZ', '32.945838', '-110.721980'),
('85382', 'Peoria', 'AZ', '33.689869', '-112.248380'),
('85670', 'Fort Huachuca', 'AZ', '31.880077', '-109.754263'),
('86054', 'Shonto', 'AZ', '36.630103', '-110.650720'),
('8629', 'Trenton', 'NJ', '40.219358', '-74.733340'),
('86413', 'Golden Valley', 'AZ', '35.190896', '-114.240360'),
('86508', 'Lupton', 'AZ', '35.325261', '-109.078470'),
('87028', 'La Joya', 'NM', '34.348860', '-106.805300'),
('87184', 'Albuquerque', 'NM', '35.044339', '-106.672872'),
('87413', 'Bloomfield', 'NM', '36.579374', '-107.879070'),
('87537', 'Hernandez', 'NM', '36.094021', '-106.174720'),
('87579', 'Vadito', 'NM', '36.160484', '-105.560450'),
('8817', 'Edison', 'NJ', '40.516104', '-74.397540'),
('8835', 'Manville', 'NJ', '40.538903', '-74.592220'),
('8887', 'Three Bridges', 'NJ', '40.525361', '-74.796320'),
('89009', 'Henderson', 'NV', '35.927901', '-114.972061'),
('89047', 'Silverpeak', 'NV', '37.751386', '-117.642250'),
('89317', 'Lund', 'NV', '38.835421', '-115.026280'),
('89412', 'Gerlach', 'NV', '40.652505', '-119.356505'),
('89510', 'Reno', 'NV', '39.871070', '-119.713130'),
('90038', 'Los Angeles', 'CA', '34.089459', '-118.328500'),
('90063', 'Los Angeles', 'CA', '34.045161', '-118.186500'),
('90301', 'Inglewood', 'CA', '33.955913', '-118.358680'),
('90845', 'Long Beach', 'CA', '33.786594', '-118.298662'),
('91077', 'Arcadia', 'CA', '33.786594', '-118.298662'),
('91189', 'Pasadena', 'CA', '33.786594', '-118.298662'),
('92114', 'San Diego', 'CA', '32.706954', '-117.054200'),
('92232', 'Calexico', 'CA', '33.026203', '-115.284581'),
('92543', 'Hemet', 'CA', '33.735420', '-116.974010'),
('92583', 'San Jacinto', 'CA', '33.788491', '-116.951250'),
('92693', 'San Juan Capistrano', 'CA', '33.555323', '-117.564000'),
('92709', 'Irvine', 'CA', '33.640302', '-117.769442'),
('92837', 'Fullerton', 'CA', '33.640302', '-117.769442'),
('92840', 'Garden Grove', 'CA', '33.785166', '-117.934060'),
('93099', 'Simi Valley', 'CA', '34.032383', '-119.134300'),
('93110', 'Santa Barbara', 'CA', '34.439579', '-119.767880'),
('93140', 'Santa Barbara', 'CA', '34.262834', '-119.848555'),
('93215', 'Delano', 'CA', '35.774967', '-119.233710'),
('93227', 'Goshen', 'CA', '36.357151', '-119.425371'),
('93234', 'Huron', 'CA', '36.209815', '-120.084700'),
('93255', 'Onyx', 'CA', '35.666835', '-118.017010'),
('93308', 'Bakersfield', 'CA', '35.487491', '-119.008960'),
('93458', 'Santa Maria', 'CA', '34.956344', '-120.452430'),
('93465', 'Templeton', 'CA', '35.544640', '-120.724280'),
('93492', 'Morro Bay', 'CA', '35.372861', '-120.859391'),
('93529', 'June Lake', 'CA', '37.765218', '-119.077690'),
('93611', 'Clovis', 'CA', '36.840057', '-119.661070'),
('93701', 'Fresno', 'CA', '36.749444', '-119.788720'),
('93761', 'Fresno', 'CA', '36.746375', '-119.639658'),
('94131', 'San Francisco', 'CA', '37.741797', '-122.437800'),
('94160', 'San Francisco', 'CA', '37.784827', '-122.727802'),
('94164', 'San Francisco', 'CA', '37.784827', '-122.727802'),
('94175', 'San Francisco', 'CA', '37.784827', '-122.727802'),
('94249', 'Sacramento', 'CA', '38.377411', '-121.444429'),
('94295', 'Sacramento', 'CA', '38.377411', '-121.444429'),
('94931', 'Cotati', 'CA', '38.328614', '-122.710440'),
('94973', 'Woodacre', 'CA', '38.007639', '-122.639140'),
('95005', 'Ben Lomond', 'CA', '37.084347', '-122.085240'),
('95322', 'Gustine', 'CA', '37.187494', '-121.032320'),
('95337', 'Manteca', 'CA', '37.782332', '-121.235780'),
('95383', 'Twain Harte', 'CA', '38.055888', '-120.230020'),
('95592', 'Vallejo', 'CA', '38.098737', '-122.271251'),
('95655', 'Mather', 'CA', '38.558073', '-121.287370'),
('95665', 'Pine Grove', 'CA', '38.400970', '-120.649520'),
('95692', 'Wheatland', 'CA', '39.030716', '-121.434970'),
('95826', 'Sacramento', 'CA', '38.550098', '-121.374920'),
('95965', 'Oroville', 'CA', '39.558586', '-121.589230'),
('96062', 'Millville', 'CA', '40.577799', '-122.101480'),
('96720', 'Hilo', 'HI', '19.713562', '-155.098420'),
('96778', 'Pahoa', 'HI', '19.494625', '-154.926600'),
('97002', 'Aurora', 'OR', '45.234609', '-122.797490'),
('97233', 'Portland', 'OR', '45.513242', '-122.499850'),
('97298', 'Portland', 'OR', '45.548616', '-123.114725'),
('97304', 'Salem', 'OR', '44.970181', '-123.080330'),
('97368', 'Otis', 'OR', '45.009935', '-123.911820'),
('97378', 'Sheridan', 'OR', '45.089532', '-123.407870'),
('97414', 'Broadbent', 'OR', '42.977978', '-124.171600'),
('97538', 'Selma', 'OR', '42.259678', '-123.547780'),
('97844', 'Irrigon', 'OR', '45.886463', '-119.517370'),
('97877', 'Sumpter', 'OR', '44.744446', '-118.222900'),
('98144', 'Seattle', 'WA', '47.585770', '-122.300810'),
('982', 'Carolina', 'PR', '18.409345', '-65.993130'),
('98520', 'Aberdeen', 'WA', '46.972965', '-123.819230'),
('98579', 'Rochester', 'WA', '46.814438', '-123.086470'),
('98587', 'Taholah', 'WA', '47.322510', '-124.258140'),
('98604', 'Battle Ground', 'WA', '45.791345', '-122.517890'),
('98622', 'Heisson', 'WA', '45.801586', '-122.520347'),
('98639', 'North Bonneville', 'WA', '45.650041', '-121.971670'),
('98665', 'Vancouver', 'WA', '45.681271', '-122.667120'),
('98833', 'Mazama', 'WA', '48.634796', '-120.476810'),
('98932', 'Granger', 'WA', '46.345166', '-120.184300'),
('99124', 'Elmer City', 'WA', '47.998468', '-118.952480'),
('99554', 'Alakanuk', 'AK', '62.683391', '-164.654550'),
('99671', 'Stebbins', 'AK', '63.511893', '-162.274630');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_name`) VALUES
('Bosch'),
('Frigidaire'),
('GE'),
('LG'),
('Samsung'),
('Whirlpool');

-- --------------------------------------------------------

--
-- Table structure for table `powergeneration`
--

CREATE TABLE `powergeneration` (
  `email` varchar(255) NOT NULL,
  `generator_num` int(11) NOT NULL,
  `generator_type` varchar(50) NOT NULL,
  `monthly_kWh` int(11) NOT NULL,
  `c` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `powergeneration`
--

INSERT INTO `powergeneration` (`email`, `generator_num`, `generator_type`, `monthly_kWh`, `c`) VALUES
('0llp1fg34d@hotmail.com', 43, 'wind', 18, 58),
('0smwc6l850@hotmail.com', 27, 'wind', 25, 82),
('2pdhetyivq@gmail.com', 4, 'solar-electric', 90, 31),
('33f7vfrsdw@aol.com', 24, 'solar-electric', 96, 49),
('39ah18y9bm@hotmail.com', 42, 'solar-electric', 64, 72),
('bmgcjiaj56@aol.com', 30, 'solar-electric', 35, 78),
('eav4huhtm5@yahoo.com', 26, 'wind', 50, 68),
('gx3kuubb1o@hotmail.com', 7, 'wind', 49, 63),
('gx3kuubb1o@hotmail.com', 8, 'wind', 47, 70),
('h2tgjud8z8@gmail.com', 15, 'wind', 73, 94),
('h2tgjud8z8@gmail.com', 38, 'wind', 97, 6),
('jjgkw8mf4e@gmail.com', 18, 'wind', 62, 30),
('na4evnzw16@hotmail.com', 16, 'solar-electric', 16, 50),
('ngjk0hi1eq@gmail.com', 49, 'wind', 44, 34),
('nqzidv2zo4@hotmail.com', 9, 'solar-electric', 44, 96),
('nqzidv2zo4@hotmail.com', 28, 'wind', 59, 74),
('p28l16hrn8@aol.com', 32, 'solar-electric', 76, 16),
('qha38aqem3@hotmail.com', 29, 'wind', 48, 50),
('qha38aqem3@hotmail.com', 31, 'wind', 85, 31),
('r00easr9gu@aol.com', 22, 'solar-electric', 97, 64),
('r00easr9gu@aol.com', 47, 'solar-electric', 45, 42),
('rdj56z6og6@gmail.com', 11, 'wind', 16, 62),
('t868x4iijb@yahoo.com', 12, 'solar-electric', 39, 98),
('t868x4iijb@yahoo.com', 13, 'solar-electric', 50, 40),
('xtpb2npbwq@aol.com', 2, 'wind', 80, 25),
('xtpb2npbwq@aol.com', 14, 'wind', 62, 6),
('ye6toqvj0t@yahoo.com', 45, 'wind', 59, 3),
('yhib2v95hn@yahoo.com', 48, 'wind', 28, 78),
('z42lqf7sro@aol.com', 36, 'solar-electric', 16, 35),
('z42lqf7sro@aol.com', 39, 'wind', 15, 95);

-- --------------------------------------------------------

--
-- Table structure for table `publicutility`
--

CREATE TABLE `publicutility` (
  `email` varchar(255) NOT NULL,
  `utility_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `publicutility`
--

INSERT INTO `publicutility` (`email`, `utility_type`) VALUES
('0llp1fg34d@hotmail.com', 'oil'),
('0smwc6l850@hotmail.com', 'solar'),
('22d5cj09a7@gmail.com', 'gas'),
('25hnfakm91@gmail.com', 'oil'),
('2pdhetyivq@gmail.com', 'gas'),
('33f7vfrsdw@aol.com', 'electric'),
('39ah18y9bm@hotmail.com', 'electric'),
('48rwbqfgvl@gmail.com', 'electric'),
('cgzmom5a79@aol.com', 'gas'),
('e2fo1whqcy@hotmail.com', 'heat pump'),
('e2fo1whqcy@hotmail.com', 'thermosolar'),
('f1ixlxgbrl@aol.com', 'electric'),
('ge2c20gjxa@aol.com', 'thermosolar'),
('k8rjg4soq6@gmail.com', 'heat pump'),
('mxrrh1czv2@hotmail.com', 'thermosolar'),
('nqqyecqrja@gmail.com', 'gas'),
('oive04md4f@gmail.com', 'gas'),
('oive04md4f@gmail.com', 'heat pump'),
('p4p28alaji@aol.com', 'thermosolar'),
('pgp6cidsai@yahoo.com', 'electric'),
('pxw47t6wta@yahoo.com', 'gas'),
('pxw47t6wta@yahoo.com', 'heat pump'),
('qjjtcqntdq@yahoo.com', 'gas'),
('r8479t46fb@yahoo.com', 'electric'),
('v5xgmi0793@hotmail.com', 'thermosolar'),
('vwhaojiz6j@hotmail.com', 'heat pump'),
('za8oqxs3rt@hotmail.com', 'heat pump');

-- --------------------------------------------------------

--
-- Table structure for table `waterheater`
--

CREATE TABLE `waterheater` (
  `email` varchar(255) NOT NULL,
  `appliance_num` int(11) NOT NULL,
  `capacity` decimal(20,1) NOT NULL,
  `temperature_setting` int(11) DEFAULT NULL,
  `energy_source` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `waterheater`
--

INSERT INTO `waterheater` (`email`, `appliance_num`, `capacity`, `temperature_setting`, `energy_source`) VALUES
('1dinatdc7r@hotmail.com', 100, '57.1', 90, 'gas'),
('6oy3sg00az@hotmail.com', 1, '75.3', 36, 'thermosolar'),
('8xm988opz7@gmail.com', 43, '44.8', 25, 'gas'),
('ag8ywfybio@gmail.com', 3, '86.0', 99, 'thermosolar'),
('ag8ywfybio@gmail.com', 42, '81.5', 93, 'gas'),
('g3kha80rzd@gmail.com', 33, '66.6', 92, 'gas'),
('gx3kuubb1o@hotmail.com', 8, '35.0', 20, 'gas'),
('jjgkw8mf4e@gmail.com', 18, '89.6', 9, 'heat pump'),
('ngjk0hi1eq@gmail.com', 49, '11.1', 77, 'gas'),
('nqzidv2zo4@hotmail.com', 9, '98.8', 46, 'thermosolar'),
('nqzidv2zo4@hotmail.com', 28, '74.9', 94, 'heat pump'),
('p1ia196lt9@gmail.com', 19, '57.7', 36, 'heat pump'),
('qha38aqem3@hotmail.com', 35, '62.4', 100, 'heat pump'),
('qha38aqem3@hotmail.com', 44, '52.2', 44, 'thermosolar'),
('r00easr9gu@aol.com', 22, '71.3', 84, 'thermosolar'),
('r0luhmuqnv@gmail.com', 34, '98.8', 86, 'thermosolar'),
('rdj56z6og6@gmail.com', 11, '85.3', 36, 'electric'),
('rjs3b6ijik@yahoo.com', 25, '61.5', 55, 'thermosolar'),
('t868x4iijb@yahoo.com', 12, '14.4', 60, 'heat pump'),
('t868x4iijb@yahoo.com', 13, '86.8', 96, 'electric'),
('t868x4iijb@yahoo.com', 41, '50.8', 93, 'gas'),
('uhlgof78ld@aol.com', 46, '76.8', 97, 'gas'),
('xtpb2npbwq@aol.com', 14, '40.5', 48, 'electric'),
('y6gkasvfr7@hotmail.com', 20, '54.3', 14, 'thermosolar'),
('yhib2v95hn@yahoo.com', 48, '8.0', 49, 'gas'),
('z42lqf7sro@aol.com', 39, '57.1', 90, 'gas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airconditioner`
--
ALTER TABLE `airconditioner`
  ADD PRIMARY KEY (`email`,`appliance_num`);

--
-- Indexes for table `appliance`
--
ALTER TABLE `appliance`
  ADD PRIMARY KEY (`email`,`appliance_num`),
  ADD KEY `appliance_num` (`appliance_num`);

--
-- Indexes for table `heater`
--
ALTER TABLE `heater`
  ADD PRIMARY KEY (`email`,`appliance_num`);

--
-- Indexes for table `heatpump`
--
ALTER TABLE `heatpump`
  ADD PRIMARY KEY (`email`,`appliance_num`);

--
-- Indexes for table `household`
--
ALTER TABLE `household`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`postal_code`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_name`);

--
-- Indexes for table `powergeneration`
--
ALTER TABLE `powergeneration`
  ADD PRIMARY KEY (`email`,`generator_num`);

--
-- Indexes for table `publicutility`
--
ALTER TABLE `publicutility`
  ADD PRIMARY KEY (`email`,`utility_type`);

--
-- Indexes for table `waterheater`
--
ALTER TABLE `waterheater`
  ADD PRIMARY KEY (`email`,`appliance_num`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"alternakraft\",\"table\":\"household\"},{\"db\":\"alternakraft\",\"table\":\"location\"},{\"db\":\"alternakraft\",\"table\":\"appliance\"},{\"db\":\"alternakraft\",\"table\":\"waterheater\"},{\"db\":\"alternakraft\",\"table\":\"publicutility\"},{\"db\":\"alternakraft\",\"table\":\"powergeneration\"},{\"db\":\"alternakraft\",\"table\":\"manufacturer\"},{\"db\":\"alternakraft\",\"table\":\"heater\"},{\"db\":\"alternakraft\",\"table\":\"airconditioner\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'alternakraft', 'household', '{\"sorted_col\":\"`household`.`postal_code` ASC\"}', '2023-04-12 00:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-04-12 02:21:30', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
