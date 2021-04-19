DROP DATABASE IF EXISTS public_utilities;
CREATE DATABASE public_utilities;
USE public_utilities;

DROP TABLE IF EXISTS streets;
CREATE TABLE streets (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'street name'
) COMMENT 'streets';

DROP TABLE IF EXISTS substation_statuses;
CREATE TABLE substation_statuses (
id SERIAL PRIMARY KEY,
name VARCHAR(255) DEFAULT 'in work' COMMENT 'substation status name'
);

DROP TABLE IF EXISTS electric_substation;
CREATE TABLE electric_substation (
id SERIAL PRIMARY KEY COMMENT 'id of electric substation',
substation_power BIGINT UNSIGNED NOT NULL COMMENT 'maximum output power of the substation, MW',
status BIGINT UNSIGNED NOT NULL,
street_id BIGINT UNSIGNED NOT NULL COMMENT 'street id',
house_number VARCHAR(255) COMMENT 'house numbers',
website VARCHAR(255) DEFAULT NULL,
coordinates POINT DEFAULT NULL COMMENT 'GPS coordinates of the substation',
INDEX address_idx (street_id, house_number),
INDEX substation_power_idx (substation_power),
INDEX status_idx (status),
INDEX website_idx (website),
CONSTRAINT fk_electric_substation_street_id FOREIGN KEY (street_id) REFERENCES streets (id),
CONSTRAINT fk_electric_substation_status_id FOREIGN KEY (status) REFERENCES substation_statuses (id)
) COMMENT 'electric substations data';

DROP TABLE IF EXISTS water_substation;
CREATE TABLE water_substation (
id SERIAL PRIMARY KEY COMMENT 'id of water substation',
status BIGINT UNSIGNED NOT NULL,
street_id BIGINT UNSIGNED NOT NULL COMMENT 'street id',
house_number VARCHAR(255) COMMENT 'house numbers',
website VARCHAR(255) DEFAULT NULL,
INDEX address_idx (street_id, house_number),
INDEX status_idx (status),
INDEX website_idx (website),
CONSTRAINT fk_water_substation_street_id FOREIGN KEY (street_id) REFERENCES streets (id),
CONSTRAINT fk_water_substation_status_id FOREIGN KEY (status) REFERENCES substation_statuses (id)
) COMMENT 'water substations data';

DROP TABLE IF EXISTS heat_substation;
CREATE TABLE heat_substation (
id SERIAL PRIMARY KEY COMMENT 'id of heat substation',
status BIGINT UNSIGNED NOT NULL,
street_id BIGINT UNSIGNED NOT NULL COMMENT 'street id',
house_number VARCHAR(255) COMMENT 'house numbers',
website VARCHAR(255) DEFAULT NULL,
INDEX address_idx (street_id, house_number),
INDEX status_idx (status),
INDEX website_idx (website),
CONSTRAINT fk_heat_substation_street_id FOREIGN KEY (street_id) REFERENCES streets (id),
CONSTRAINT fk_heat_substation_status_id FOREIGN KEY (status) REFERENCES substation_statuses (id)
) COMMENT 'water substations data';

DROP TABLE IF EXISTS gas_substation;
CREATE TABLE gas_substation (
id SERIAL PRIMARY KEY COMMENT 'id of gas substation',
status BIGINT UNSIGNED NOT NULL,
street_id BIGINT UNSIGNED NOT NULL COMMENT 'street id',
house_number VARCHAR(255) COMMENT 'house numbers',
website VARCHAR(255) DEFAULT NULL,
coordinates POINT COMMENT 'GPS coordinates of the substation',
INDEX address_idx (street_id, house_number),
INDEX status_idx (status),
INDEX website_idx (website),
CONSTRAINT fk_gas_substation_street_id FOREIGN KEY (street_id) REFERENCES streets (id),
CONSTRAINT fk_gas_substation_status_id FOREIGN KEY (status) REFERENCES substation_statuses (id)
) COMMENT 'gas substations data';

DROP TABLE IF EXISTS houses;
CREATE TABLE houses (
id SERIAL PRIMARY KEY,
house_number VARCHAR(255) COMMENT 'house numbers',
street_id BIGINT UNSIGNED NOT NULL COMMENT 'street id',
construction_date DATE DEFAULT NULL COMMENT 'construction date',
entrances_quantity INT UNSIGNED NOT NULL DEFAULT 1 COMMENT 'number of entrances',
floors_quantity INT UNSIGNED NOT NULL DEFAULT 1 COMMENT 'number of floors',
electricity_source BIGINT UNSIGNED DEFAULT NULL COMMENT 'id of electric substation',
water_source BIGINT UNSIGNED DEFAULT NULL COMMENT 'id of water substation',
heat_source BIGINT UNSIGNED DEFAULT NULL COMMENT 'id of heat substation',
gas_source BIGINT UNSIGNED DEFAULT NULL COMMENT 'id of gas substation',
INDEX construction_date_idx (construction_date),
CONSTRAINT fk_street_id FOREIGN KEY (street_id) REFERENCES streets (id),
CONSTRAINT fk_electricity_source_id FOREIGN KEY (electricity_source) REFERENCES electric_substation (id),
CONSTRAINT fk_water_source_id FOREIGN KEY (water_source) REFERENCES water_substation (id),
CONSTRAINT fk_heat_source_id FOREIGN KEY (heat_source) REFERENCES heat_substation (id),
CONSTRAINT fk_gas_source_id FOREIGN KEY (gas_source) REFERENCES gas_substation (id)
) COMMENT 'streets';

DROP TABLE IF EXISTS entrances;
CREATE TABLE entrances (
id SERIAL PRIMARY KEY COMMENT 'entrance id',
entrance_number BIGINT UNSIGNED,
house_id BIGINT UNSIGNED NOT NULL,
INDEX entrance_idx (entrance_number),
UNIQUE KEY entrance_in_house_uq (entrance_number, house_id),
CONSTRAINT fk_house_id_entrances FOREIGN KEY (house_id) REFERENCES houses (id)
) COMMENT 'entrances of house';

DROP TABLE IF EXISTS elevators;
CREATE TABLE elevators (
id SERIAL PRIMARY KEY COMMENT 'elevator id',
elevator_serial_number BIGINT UNSIGNED,
entrance_id BIGINT UNSIGNED NOT NULL,
status VARCHAR(255) DEFAULT 'in work',
INDEX elevator_serial_number_idx (elevator_serial_number),
CONSTRAINT fk_entrances_id_elevators FOREIGN KEY (entrance_id) REFERENCES entrances (id)
) COMMENT 'elevators';

DROP TABLE IF EXISTS floors;
CREATE TABLE floors (
id SERIAL PRIMARY KEY COMMENT 'floor id',
floor_number BIGINT UNSIGNED,
house_id BIGINT UNSIGNED NOT NULL,
INDEX floor_idx (floor_number),
UNIQUE KEY floor_in_house_uq (floor_number, house_id),
CONSTRAINT fk_house_id_floors FOREIGN KEY (house_id) REFERENCES houses (id)
) COMMENT 'floors of house';

DROP TABLE IF EXISTS flats;
CREATE TABLE flats (
id SERIAL PRIMARY KEY COMMENT 'flat id',
flat_number BIGINT UNSIGNED NOT NULL COMMENT 'number of flat',
house_id BIGINT UNSIGNED NOT NULL COMMENT 'id of house',
entrance_id BIGINT UNSIGNED NOT NULL COMMENT 'id of entrance',
floor_id BIGINT UNSIGNED NOT NULL COMMENT 'id of floor',
INDEX flat_number_idx (flat_number),
CONSTRAINT fk_house_id_flats FOREIGN KEY (house_id) REFERENCES houses (id),
CONSTRAINT fk_entrances_id_flats FOREIGN KEY (entrance_id) REFERENCES entrances (id),
CONSTRAINT fk_floors_id_flats FOREIGN KEY (floor_id) REFERENCES floors (id)
) COMMENT 'flats in the house';

DROP TABLE IF EXISTS citizen;
CREATE TABLE citizen (
id SERIAL PRIMARY KEY COMMENT 'citizen id',
first_name VARCHAR(255),
last_name VARCHAR(255),
citizen_flat BIGINT UNSIGNED NOT NULL COMMENT 'number of flat',
citizen_email VARCHAR(255),
INDEX first_name_idx (first_name),
INDEX last_name_idx (last_name),
INDEX citizen_email_idx (citizen_email),
CONSTRAINT fk_citizen_flat FOREIGN KEY (citizen_flat) REFERENCES flats (id)
) COMMENT 'citizens';

DROP TABLE IF EXISTS flat_meter_readings;
CREATE TABLE flat_meter_readings (
flat_id BIGINT UNSIGNED NOT NULL PRIMARY KEY COMMENT 'number of flat',
gas BIGINT UNSIGNED DEFAULT NULL,
electricity BIGINT UNSIGNED NOT NULL,
cold_water BIGINT UNSIGNED NOT NULL,
hot_water BIGINT UNSIGNED NOT NULL,
INDEX flat_gas_idx (gas),
INDEX flat_electricity_idx (electricity),
INDEX flat_cold_water_idx (cold_water),
INDEX flat_hot_water_idx (hot_water),
CONSTRAINT fk_flat FOREIGN KEY (flat_id) REFERENCES flats (id)
) COMMENT 'flat meter readings';

DROP TABLE IF EXISTS house_meter_readings;
CREATE TABLE house_meter_readings (
house_id BIGINT UNSIGNED NOT NULL PRIMARY KEY COMMENT 'house id',
gas BIGINT UNSIGNED DEFAULT NULL,
electricity BIGINT UNSIGNED NOT NULL,
cold_water BIGINT UNSIGNED NOT NULL,
hot_water BIGINT UNSIGNED NOT NULL,
INDEX house_gas_idx (gas),
INDEX house_electricity_idx (electricity),
INDEX house_cold_water_idx (cold_water),
INDEX house_hot_water_idx (hot_water),
CONSTRAINT fk_house_id_meter_readings FOREIGN KEY (house_id) REFERENCES houses (id)
) COMMENT 'meter readings for house';

/*
 * before running the script to fill the database with examples, 
 * you need to turn off the triggers
 */

-- triggers
/*
DROP TRIGGER IF EXISTS check_floor;
DELIMITER //
CREATE TRIGGER check_floor BEFORE INSERT ON floors
FOR EACH ROW 
	BEGIN
		IF (NEW.floor_number > (SELECT floors_quantity FROM houses WHERE houses.id = NEW.house_id))
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'there is no such floor in this house';
		END IF;
	END//

DELIMITER ;

DROP TRIGGER IF EXISTS check_entrance;
DELIMITER //
CREATE TRIGGER check_entrance BEFORE INSERT ON entrances
FOR EACH ROW 
	BEGIN
		IF (NEW.entrance_number > (SELECT entrances_quantity FROM houses WHERE houses.id = NEW.house_id))
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'there is no such entrance in this house';
		END IF;
	END//

DELIMITER ;
*/
