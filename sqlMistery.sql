SELECT * FROM crime_scene_report

WHERE  date = "20180115" AND type ='murder' AND city='SQL City' 

SELECT id,name,address_street_name, MAX(address_number) FROM person
WHERE address_street_name = "Northwestern Dr"

SELECT name FROM person
WHERE name LIKE '%Annabel%'
AND address_street_name = 'Franklin Ave'

