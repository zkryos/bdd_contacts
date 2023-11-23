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
   ('DEU', 'Allemagne', 'DE', 'Allemand'),
    ('ESP', 'Espagne', 'ES', 'Espagnol'),
    ('ITA', 'Italie', 'IT', 'Italien');

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

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, adresse, cp, ville, pays_iso_3) VALUES
    ('Martin', 'Lucas', '1990-05-10', 'M', '123 rue de Paris', '75001', 'Paris', 'FRA'),
    ('Bernard', 'Émilie', '1985-07-20', 'F', '456 avenue des Champs-Élysées', '75008', 'Paris', 'FRA'),
    ('Dubois', 'Julien', '1972-03-15', 'M', '789 boulevard de Belleville', '75020', 'Paris', 'FRA'),
    ('Moreau', 'Chloé', '1995-08-30', 'F', '321 rue de la République', '13001', 'Marseille', 'FRA'),
    ('Laurent', 'Sophie', '1988-12-25', 'F', '654 allée du Vieux-Port', '13002', 'Marseille', 'FRA'),
    ('Simon', 'Pierre', '1975-10-05', 'M', '987 chemin des Oliviers', '06000', 'Nice', 'FRA'),
    ('Michel', 'Anne', '1992-04-18', 'F', '147 route de Lyon', '69000', 'Lyon', 'FRA'),
    ('Lefebvre', 'Marc', '1978-01-22', 'M', '258 rue Garibaldi', '69003', 'Lyon', 'FRA'),
    ('Leroy', 'Marie', '1982-09-17', 'F', '369 rue de la Liberté', '33000', 'Bordeaux', 'FRA'),
    ('Roux', 'David', '1994-06-11', 'M', '852 avenue de la Gare', '33000', 'Bordeaux', 'FRA');


CREATE TABLE telephone (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_contact INT,
    numero VARCHAR(50),
    type BYTE,
    FOREIGN KEY (id_contact) REFERENCES contacts(id)
);

INSERT INTO telephone (id_contact, numero, type) VALUES
    (1, '0123456789', 1),
    (2, '0234567891', 1),
    (3, '0345678912', 2),
    (4, '0456789123', 1),
    (5, '0567891234', 2),
    (6, '0678912345', 1),
    (7, '0789123456', 2),
    (8, '0891234567', 1),
    (9, '0912345678', 2),
    (10, '0123456790', 1);




