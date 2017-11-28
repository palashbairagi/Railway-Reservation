-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema reservation
--

CREATE DATABASE IF NOT EXISTS reservation;
USE reservation;

--
-- Definition of table `child_passenger`
--

DROP TABLE IF EXISTS `child_passenger`;
CREATE TABLE `child_passenger` (
  `sno` int(11) NOT NULL,
  `name` char(30) default NULL,
  `age` char(10) default NULL,
  `gender` char(2) default NULL,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `child_passenger`
--

/*!40000 ALTER TABLE `child_passenger` DISABLE KEYS */;
/*!40000 ALTER TABLE `child_passenger` ENABLE KEYS */;


--
-- Definition of table `clerk`
--

DROP TABLE IF EXISTS `clerk`;
CREATE TABLE `clerk` (
  `id` int(11) NOT NULL,
  `name` char(30) default NULL,
  `gender` char(2) default NULL,
  `date_of_birth` char(20) default NULL,
  `age` char(10) default NULL,
  `joining_date` char(10) default NULL,
  `contact_number1` char(10) default NULL,
  `contact_number2` char(10) default NULL,
  `address` char(30) default NULL,
  `city` char(20) default NULL,
  `state` char(20) default NULL,
  `shift_time` char(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clerk`
--

/*!40000 ALTER TABLE `clerk` DISABLE KEYS */;
/*!40000 ALTER TABLE `clerk` ENABLE KEYS */;


--
-- Definition of table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger` (
  `id` int(11) NOT NULL auto_increment,
  `name` char(30) default NULL,
  `age` char(10) default NULL,
  `gender` char(2) default NULL,
  `berth_preference` char(30) default NULL,
  `id_card_type` char(20) default NULL,
  `id_card_number` char(20) default NULL,
  `senior_citizen` char(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` (`id`,`name`,`age`,`gender`,`berth_preference`,`id_card_type`,`id_card_number`,`senior_citizen`) VALUES 
 (2,'shalaka Goyal','22','F','lower','id card','y8789','yes'),
 (3,'neha sharma','45','F','upper','voter id','6736278','yes'),
 (4,'aarti sharma','23','F','upper','voter Id Card','78hj762','yes');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;


--
-- Definition of table `ticket_cancelation`
--

DROP TABLE IF EXISTS `ticket_cancelation`;
CREATE TABLE `ticket_cancelation` (
  `train_number` char(21) default NULL,
  `transaction_id` char(30) default NULL,
  `train_name` char(21) default NULL,
  `train_from` char(20) default NULL,
  `train_to` char(20) default NULL,
  `date_of_journey` char(20) default NULL,
  `date_of_booking` char(20) default NULL,
  `boarding_at` char(20) default NULL,
  `reservation_upto` char(20) default NULL,
  `quota` char(20) default NULL,
  `class` char(20) default NULL,
  `booked_by` char(30) default NULL,
  `fare_amt` char(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_cancelation`
--

/*!40000 ALTER TABLE `ticket_cancelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_cancelation` ENABLE KEYS */;


--
-- Definition of table `ticket_reservation`
--

DROP TABLE IF EXISTS `ticket_reservation`;
CREATE TABLE `ticket_reservation` (
  `id` int(11) NOT NULL auto_increment,
  `train_name` char(30) default NULL,
  `train_no` char(20) default NULL,
  `class` char(20) default NULL,
  `date_of_journey` char(10) default NULL,
  `journey_from` char(10) default NULL,
  `journey_to` char(10) default NULL,
  `boarding_point` char(10) default NULL,
  `reservation_upto` char(30) default NULL,
  `quota` char(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_reservation`
--

/*!40000 ALTER TABLE `ticket_reservation` DISABLE KEYS */;
INSERT INTO `ticket_reservation` (`id`,`train_name`,`train_no`,`class`,`date_of_journey`,`journey_from`,`journey_to`,`boarding_point`,`reservation_upto`,`quota`) VALUES 
 (2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ticket_reservation` ENABLE KEYS */;


--
-- Definition of table `train`
--

DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `id` int(11) NOT NULL auto_increment,
  `train_number` char(30) default NULL,
  `train_name` char(30) default NULL,
  `train_type` char(30) default NULL,
  `zone` char(30) default NULL,
  `date_from` char(30) default NULL,
  `date_to` char(30) default NULL,
  `train_from` char(20) default NULL,
  `departure` char(30) default NULL,
  `train_to` char(20) default NULL,
  `arrival` char(20) default NULL,
  `duration` char(20) default NULL,
  `halts` char(30) default NULL,
  `dep_days` char(30) default NULL,
  `class` char(20) default NULL,
  `distance` char(20) default NULL,
  `speed` char(20) default NULL,
  `train_return` char(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` (`id`,`train_number`,`train_name`,`train_type`,`zone`,`date_from`,`date_to`,`train_from`,`departure`,`train_to`,`arrival`,`duration`,`halts`,`dep_days`,`class`,`distance`,`speed`,`train_return`) VALUES 
 (2,'898',NULL,'Passenger','nr','6-10-2010','15-10-2010','gwalior','6:30 Pm','ujjain','3:00 Am','9 hrs','h','mon,wed,fri','sleeper','500km','55km\\hr','8-10-2010');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
