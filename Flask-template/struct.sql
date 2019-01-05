CREATE DATABASE multistar;
CREATE TABLE `multistar`.`contact` ( `id` INT(11) NOT NULL , `name` VARCHAR(15) NOT NULL , `phoneNo` VARCHAR(12) NOT NULL , `email` VARCHAR(20) NOT NULL , `message` TEXT NOT NULL , `date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`id`));
ALTER TABLE `contact` CHANGE `id` `id` INT(11) NOT NULL AUTO_INCREMENT;
CREATE TABLE `multistar`.`booking` ( `c_id` INT NULL , `Arrive_date` TEXT NOT NULL , `Depature_date` TEXT NOT NULL , `Rooms` INT(10) NOT NULL , `Guests` INT(10) NOT NULL , `Email` VARCHAR(25) NOT NULL , `Message` TEXT NOT NULL , PRIMARY KEY (`c_id`));
ALTER TABLE `booking` CHANGE `c_id` `c_id` INT(11) NOT NULL AUTO_INCREMENT;
