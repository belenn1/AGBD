INSERT INTO user(username,password)
VALUES("Belen1", "25026"), ("minnie1","52751")

INSERT INTO post(author_id,title,body)
VALUES ((SELECT id FROM user WHERE username LIKE "belen1%"), "juguetes recomendados para gatos", "rascador, obillo de lana, raton que se mueve") ,
 ((SELECT id FROM user WHERE username LIKE "belen1%"), "Budin de Limon", "ralladura de limon,azucar,harina") ,
 ((SELECT id FROM user WHERE username LIKE "belen1%"), "Churross", "Harina,sal y agua") ,
 
 ((SELECT id FROM user WHERE username LIKE "minnie1%"), "Mi top 3 de helados", "Frutos del bosque,chocolate, oreo") ,
 ((SELECT id FROM user WHERE username LIKE "minnie1%"), "Mi fruta fav", "Sandia") ,
 ((SELECT id FROM user WHERE username LIKE "minnie1%"), "Fotos de mis gatos", "fotos") 
 
 INSERT INTO user(username, password)
 VALUES("bnnlvv", (SELECT password FROM user WHERE username LIKE "minnie1%"));
 