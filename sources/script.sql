DROP TABLE IF EXISTS pays ;
CREATE TABLE pays (idPays INT AUTO_INCREMENT NOT NULL,
nomPays VARCHAR(255),
PRIMARY KEY (idPays)) ENGINE=InnoDB;

DROP TABLE IF EXISTS utilisateur ;
CREATE TABLE utilisateur (idUtilisateur INT AUTO_INCREMENT NOT NULL,
nomUtilisateur VARCHAR(55),
PRIMARY KEY (idUtilisateur)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Film ;
CREATE TABLE Film (idFilm INT AUTO_INCREMENT NOT NULL,
nomFilm VARCHAR(255),
anneeFilm INT,
dureeFilm INT,
resumeFilm TEXT,
afficheFilm TEXT,
lienBandeAnnonce TEXT,
idUtilisateur INT,
PRIMARY KEY (idFilm)) ENGINE=InnoDB;

DROP TABLE IF EXISTS genre ;
CREATE TABLE genre (idGenre INT AUTO_INCREMENT NOT NULL,
nomGenre VARCHAR(255),
PRIMARY KEY (idGenre)) ENGINE=InnoDB;

DROP TABLE IF EXISTS personne ;
CREATE TABLE personne (idPersonne INT AUTO_INCREMENT NOT NULL,
nomPersonne VARCHAR(55),
prenomPersonne VARCHAR(55),
idPays INT,
PRIMARY KEY (idPersonne)) ENGINE=InnoDB;

DROP TABLE IF EXISTS motClef ;
CREATE TABLE motClef (idMotCles INT AUTO_INCREMENT NOT NULL,
motClef VARCHAR(20),
motclef2 VARCHAR(255),
PRIMARY KEY (idMotCles)) ENGINE=InnoDB;

DROP TABLE IF EXISTS genre2 ;
CREATE TABLE genre2 (idGenre2 INT AUTO_INCREMENT NOT NULL,
nomGenre2 VARCHAR(255),
PRIMARY KEY (idGenre2)) ENGINE=InnoDB;

DROP TABLE IF EXISTS estOriginaire ;
CREATE TABLE estOriginaire (idPays INT AUTO_INCREMENT NOT NULL,
idFilm INT NOT NULL,
PRIMARY KEY (idPays,
 idFilm)) ENGINE=InnoDB;

DROP TABLE IF EXISTS produit ;
CREATE TABLE produit (idFilm INT AUTO_INCREMENT NOT NULL,
idPersonne INT NOT NULL,
PRIMARY KEY (idFilm,
 idPersonne)) ENGINE=InnoDB;

DROP TABLE IF EXISTS realise ;
CREATE TABLE realise (idFilm INT AUTO_INCREMENT NOT NULL,
idPersonne INT NOT NULL,
PRIMARY KEY (idFilm,
 idPersonne)) ENGINE=InnoDB;

DROP TABLE IF EXISTS appartient ;
CREATE TABLE appartient (idGenre INT AUTO_INCREMENT NOT NULL,
idFilm INT NOT NULL,
idGenre2 INT NOT NULL,
PRIMARY KEY (idGenre,
 idFilm,
 idGenre2)) ENGINE=InnoDB;

DROP TABLE IF EXISTS joue ;
CREATE TABLE joue (idFilm INT AUTO_INCREMENT NOT NULL,
idPersonne INT NOT NULL,
roleJoue VARCHAR(255),
PRIMARY KEY (idFilm,
 idPersonne)) ENGINE=InnoDB;

DROP TABLE IF EXISTS decris ;
CREATE TABLE decris (idMotCles INT AUTO_INCREMENT NOT NULL,
idFilm INT NOT NULL,
PRIMARY KEY (idMotCles,
 idFilm)) ENGINE=InnoDB;

ALTER TABLE Film ADD CONSTRAINT FK_Film_idUtilisateur FOREIGN KEY (idUtilisateur) REFERENCES utilisateur (idUtilisateur);

ALTER TABLE personne ADD CONSTRAINT FK_personne_idPays FOREIGN KEY (idPays) REFERENCES pays (idPays);
ALTER TABLE estOriginaire ADD CONSTRAINT FK_estOriginaire_idPays FOREIGN KEY (idPays) REFERENCES pays (idPays);
ALTER TABLE estOriginaire ADD CONSTRAINT FK_estOriginaire_idFilm FOREIGN KEY (idFilm) REFERENCES Film (idFilm);
ALTER TABLE produit ADD CONSTRAINT FK_produit_idFilm FOREIGN KEY (idFilm) REFERENCES Film (idFilm);
ALTER TABLE produit ADD CONSTRAINT FK_produit_idPersonne FOREIGN KEY (idPersonne) REFERENCES personne (idPersonne);
ALTER TABLE realise ADD CONSTRAINT FK_realise_idFilm FOREIGN KEY (idFilm) REFERENCES Film (idFilm);
ALTER TABLE realise ADD CONSTRAINT FK_realise_idPersonne FOREIGN KEY (idPersonne) REFERENCES personne (idPersonne);
ALTER TABLE appartient ADD CONSTRAINT FK_appartient_idGenre FOREIGN KEY (idGenre) REFERENCES genre (idGenre);
ALTER TABLE appartient ADD CONSTRAINT FK_appartient_idFilm FOREIGN KEY (idFilm) REFERENCES Film (idFilm);
ALTER TABLE appartient ADD CONSTRAINT FK_appartient_idGenre2 FOREIGN KEY (idGenre2) REFERENCES genre2 (idGenre2);
ALTER TABLE joue ADD CONSTRAINT FK_joue_idFilm FOREIGN KEY (idFilm) REFERENCES Film (idFilm);
ALTER TABLE joue ADD CONSTRAINT FK_joue_idPersonne FOREIGN KEY (idPersonne) REFERENCES personne (idPersonne);
ALTER TABLE decris ADD CONSTRAINT FK_decris_idMotCles FOREIGN KEY (idMotCles) REFERENCES motClef (idMotCles);
ALTER TABLE decris ADD CONSTRAINT FK_decris_idFilm FOREIGN KEY (idFilm) REFERENCES Film (idFilm);