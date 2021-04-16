USE public_utilities;

/*
 * a view that includes streets and citizens
 */
CREATE OR REPLACE VIEW citizens_and_streets AS
SELECT c2.first_name, c2.last_name, s2.name AS street FROM streets s2 
JOIN 
citizen c2
ON s2.id = (SELECT h.street_id FROM houses h 
			WHERE h.id = (SELECT f.house_id FROM flats f
			WHERE f.id = c2.citizen_flat));

/*
 * request showing the population per street
 */
SELECT COUNT(*) AS population, street FROM citizens_and_streets GROUP BY street ORDER BY population DESC;

/*
 * a view that includes the elevator parameters and the state of the electrical substation
 */
CREATE OR REPLACE VIEW elevators_and_electricity AS
SELECT e.elevator_serial_number AS serial_num, 
e.status AS elevator_status, ss.name AS substation_status FROM substation_statuses ss
JOIN
elevators e 
ON ss.id = (SELECT es.status FROM electric_substation es 
			WHERE es.id = (SELECT h.electricity_source FROM houses h 
			WHERE h.id = (SELECT e2.house_id FROM entrances e2
			WHERE e2.id = e.entrance_id)));

/*
 * request indicating the serial number and status of elevators in buildings 
 * connected to electrical substations with the status of 'illum'
 */						  
SELECT serial_num, elevator_status FROM elevators_and_electricity WHERE substation_status = 'illum';
