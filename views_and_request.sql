USE public_utilities;

/*
 * a view that includes streets and citizens
 */

CREATE OR REPLACE VIEW citizens_and_streets AS
SELECT s2.name AS street, c.last_name AS 'citizen last name' FROM streets s2 
JOIN 
houses h ON s2.id = h.street_id
JOIN 
flats f ON h.id = f.house_id
JOIN 
citizen c ON f.id = c.citizen_flat;

SELECT * FROM citizens_and_streets;

/*
 * request showing the population per street
 */
SELECT COUNT(*) AS population, street FROM citizens_and_streets GROUP BY street ORDER BY population DESC;

/*
 * a view that includes the elevator parameters and the state of the electrical substation
 */

CREATE OR REPLACE VIEW elevators_and_electricity AS
SELECT e2.elevator_serial_number AS serial_num, 
e2.status AS elevator_status, 
ss.name AS substation_status
FROM substation_statuses ss
JOIN
electric_substation es ON ss.id = es.status_id 
JOIN 
houses h ON es.id = h.electricity_source 
JOIN 
entrances e ON h.id = e.house_id 
JOIN 
elevators e2 ON e.id = e2.entrance_id;
SELECT * FROM elevators_and_electricity;
/*
 * request indicating the serial number and status of elevators in buildings 
 * connected to electrical substations with the status of 'illum'
 */						  
SELECT serial_num, elevator_status FROM elevators_and_electricity WHERE substation_status = 'aut';
