create table Client(
	id_Client INTEGER NOT NULL AUTO_INCREMENT,
	Login VARCHAR(255),
	Mdp VARCHAR(255),
	PRIMARY KEY(id_Client)
);

create table InfoClient(
	id_InfoClient INTEGER NOT NULL AUTO_INCREMENT,
	id_Client INTEGER NOT NULL,
	Nom VARCHAR(255),
	Prenom VARCHAR(255),
	Budget VARCHAR(255),
	Contact INTEGER,
	PRIMARY KEY(id_InfoClient),
	FOREIGN KEY (id_Client) REFERENCES Client(id_Client)

);

create table Admin(
	id_Admin INTEGER NOT NULL AUTO_INCREMENT,
	Login VARCHAR(255),
	Mdp VARCHAR(255),
	PRIMARY KEY(id_Admin)
);


create table Produit(
	id_Produit INTEGER NOT NULL AUTO_INCREMENT,
	Nom VARCHAR(255),
	Marque VARCHAR(255),
	Type VARCHAR(255),
	Vitesse INTEGER NOT NULL,
	Fiche VARCHAR(255),
	Prix DOUBLE PRECISION,
	Image VARCHAR(255),
	PRIMARY KEY(id_Produit)
);

create table Achat(
	id_Achat INTEGER NOT NULL AUTO_INCREMENT,
	id_Client INTEGER NOT NULL,
	id_Produit INTEGER NOT NULL,
	Quantite INTEGER,
	Prix_Total DOUBLE PRECISION,	
	PRIMARY KEY(id_Achat),
	FOREIGN KEY (id_Client) REFERENCES Client(id_Client),
	FOREIGN KEY (id_Produit) REFERENCES Produit(id_Produit)	
);

insert into Client VALUES(null,"Rabe","rab");
insert into Client VALUES(,"Rakoto","rak");
insert into Client VALUES(,"Rasoa","ras");

insert into Admin VALUES(null,"Admin","123");

insert into Produit values(null,"G5","Kymco","4T",120,"moto rapide",700000,"moto2.png");
insert into Produit values(null,"Jog Pro","Yamaha","2T",49,"moto leger et rapide",250000,"moto3.png");

