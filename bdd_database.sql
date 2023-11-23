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

CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(70),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    adresse TEXT,
    cp VARCHAR(10),
    ville VARCHAR(70),
    pays_iso_3 CHAR(3),
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
); 

CREATE TABLE telephone (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_contact INT,
    numero VARCHAR(50),
    type BYTE,
    FOREIGN KEY (id_contact) REFERENCES contacts(id)
);



