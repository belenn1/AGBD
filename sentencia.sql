SELECT * FROM INHABITANT
SELECT * FROM inhabitant WHERE STATE = 'friendly'
SELECT * FROM inhabitant WHERE STATE = 'friendly' AND job = 'weaponsmith'
SELECT * FROM inhabitant WHERE STATE = 'friendly' AND job LIKE
'%smith'
SELECT personid FROM inhabitant WHERE name = 'Stranger'