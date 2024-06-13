INSERT INTO regions(region_name,region_id)
VALUES("Africa",5)

UPDATE regions SET region_name = "Middle East"
WHERE region_name =
        (SELECT region_name FROM regions
                WHERE region_name LIKE "%East%")

UPDATE countries SET region_id = 
		(SELECT region_id FROM regions 
				WHERE region_name LIKE "%Africa%")
WHERE country_name in ("Egypt", "Nigeria" ,"Zambia", "Zimbabwe")			
				        				
INSERT INTO countries(country_name, region_id, country_id)
VALUES("Kenia", 5, "AF"), ("Ghana",5, "GHA"),("Qatar", 4,"QA"), ("Armenia",4, "ARM")	