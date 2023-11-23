DROP DATABASE if EXISTS bdd_contact.sql;
CREATE DATABASE bdd_contact_sql CHARACTER set = 'utf8' COLLATE = 'utf8_general_ci'; 

USE bdd_contact_sql; 

CREATE table pays_iso_3 (
    alpha_3 CHAR(3) PRIMARY KEY, 
    nom VARCHAR (50)
    alpha_2 CHAR(3) 
); 

INSERT INTO pays_iso_3 (alpha_3, nom) VALUES
    ('FRA', 'FRANCE'),
    ('SUI', 'SUISSE'),
    ('TR', 'TURQUIE'),
    ('BE', 'BELGIQUE'); 

CREATE table contacts ( 
 id int PRIMARY KEY AUTO_INCREMENT, 
 nom VARCHAR(70), 
 prenom VARCHAR(70),
 date_de_naisssance DATE, 
 sexe VARCHAR(10), 
 adresse TEXT,
 cp VARCHAR(15), 
 ville VARCHAR(70), 
FOREIGN KEY (pays) REFERENCES pays_iso_3(alpha_3) 
); 

CREATE table telephone ( 
 id int PRIMARY KEY AUTO_INCREMENT, 
 id_contact int  AUTO_INCREMENT,
 numero VARCHAR(40), 
 type TINYINT
); 




