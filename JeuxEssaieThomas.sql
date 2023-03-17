/*Jeux D'éssaie Client*/

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Joseph','444 Rue du prince','Arkham',66566,'Curwen',0666056676);

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Wilbur',"6 Avenue de l'abomination",'Dunwich',74856,'Whateley',0444064484);

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Charle','444 Rue du prince','Providance',64554,'Ward',0655554560);

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Simon','315 Rue du Blasphème','Salem',66566,'Orne',0666445566);

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Ezra','666 Fool Street','Providance',64554,'Weeden',0678068589);

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Louis','98 Rue des Fleurs','Pignon',74589,'LeMaire',0610557630);

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Jean',"6 Avenue des Lilas",'Poisy',74330,'Dubois',0615064464);

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Mattias','4 Boulvard des Orchidées','Grenoble',38000,'Fernandez',0655554560);

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Yann','315 Rue du Trèfle','Annecy',74000,'LePrunec',0666445566);

insert into client(PRENOM_CLIENT,ADRESSE_CLIENT,VILLE_CLIENT,CP_CLIENT,NOM_CLIENT,TEL_CLIENT) 
VALUE ('Maria','18 Avenue des Pâquerette','Providance',64554,'Rodrigez',067806859);

/*Jeux d'éssaie Commande*/

INSERT INTO commande(NUMERO_COMMANDE,DATE_COMMANDE,ID_CLIENT)
VALUE (646,"2021-03-29",2);

INSERT INTO commande(DATE_COMMANDE,ID_CLIENT)
VALUE ("2021-06-22",1);

INSERT INTO commande(DATE_COMMANDE,ID_CLIENT)
VALUE ("2021-12-03",4);

INSERT INTO commande(DATE_COMMANDE,ID_CLIENT)
VALUE ("2022-02-22",5);

INSERT INTO commande(DATE_COMMANDE,ID_CLIENT)
VALUE ("2022-03-15",7);

INSERT INTO commande(DATE_COMMANDE,ID_CLIENT)
VALUE ("2022-06-25",6);

INSERT INTO commande(DATE_COMMANDE,ID_CLIENT)
VALUE ("2022-11-26",3);

INSERT INTO commande(DATE_COMMANDE,ID_CLIENT)
VALUE ("2023-01-02",8);

INSERT INTO commande(DATE_COMMANDE,ID_CLIENT)
VALUE ("2023-01-19",9);

INSERT INTO commande(DATE_COMMANDE,ID_CLIENT)
VALUE ("2023-02-20",10);

/*Jeux d'éssaie produit*/
INSERT INTO PRODUITS(NOM_PRODUITS,PRIX_PRODUITS,TYPE_STOCK) 
VALUE ('Pergola FIDJI', 1720.51, 'Principal');

INSERT INTO PRODUITS(NOM_PRODUITS,PRIX_PRODUITS,TYPE_STOCK) 
VALUE ('Portail ORLEANS', 2733.98, 'SAV');

INSERT INTO PRODUITS(NOM_PRODUITS,PRIX_PRODUITS,TYPE_STOCK) 
VALUE ('Clotûre ATHENES', 178.85, 'SAV');

INSERT INTO PRODUITS(NOM_PRODUITS,PRIX_PRODUITS,TYPE_STOCK) 
VALUE ("Porte d'entrée HUDSON", 2794.72, 'Principal');

/*Jeux d'éssaie comporter*/
INSERT INTO PRODUITS(ID_PRODUITS,NUMERO_COMMANDE,QT_COMMANDEES) 
VALUE (1, 600646, 2);

INSERT INTO PRODUITS(ID_PRODUITS,NUMERO_COMMANDE,QT_COMMANDEES) 
VALUE (4, 600648, 3);

INSERT INTO PRODUITS(ID_PRODUITS,NUMERO_COMMANDE,QT_COMMANDEES) 
VALUE (2, 600650, 1);

INSERT INTO PRODUITS(ID_PRODUITS,NUMERO_COMMANDE,QT_COMMANDEES) 
VALUE (3, 600649, 2);

INSERT INTO PRODUITS(ID_PRODUITS,NUMERO_COMMANDE,QT_COMMANDEES) 
VALUE (3, 600647, 2);