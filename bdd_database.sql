DROP DATABASE if EXISTS bdd_contact.sql;
CREATE DATABASE bdd_contact_sql CHARACTER set = 'utf8' COLLATE = 'utf8_general_ci'; 

USE bdd_contact_sql; 

CREATE table pays_iso_3 (
    alpha_3 CHAR(3) PRIMARY KEY, 
    nom VARCHAR (50)
); 

