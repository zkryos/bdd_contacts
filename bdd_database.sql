DROP DATABASE if EXISTS bdd_contact.sql;
CREATE DATABASE bdd_contact_sql CHARACTER set = 'utf8' COLLATE = 'utf8_general_ci'; 

USE bdd_contact_sql; 

CREATE TABLE pays (
    iso_3 CHAR(3) PRIMARY KEY, 
    nom VARCHAR(70),
    iso_2 CHAR(2), 
    nationalite VARCHAR(50)
);

INSERT INTO pays (iso_3, nom, iso_2, nationalite) VALUES
    ('FRA', 'France', 'FR', 'Français'),
    ('CHE', 'Suisse', 'CH', 'Suisse'),
    ('TUR', 'Turquie', 'TR', 'Turc'),
    ('BEL', 'Belgique', 'BE', 'Belge');



