1
SELECT DISTINCT type FROM crime_scene_report
ORDER BY type ASC

2
SELECT name,age,gender,car_make,car_model,plate_number FROM person p
JOIN drivers_license d on p.license_id = d.id
WHERE gender = 'female' AND age < 40
ORDER by name asc

3
SELECT p.name AS Name from person p
LEFT JOIN drivers_license dl ON p.license_id = dl.id
WHERE dl.id IS NULL

4

5

6

7

8