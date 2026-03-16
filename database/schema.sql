IF DB_ID('CabinetMedical') IS NOT NULL
DROP DATABASE CabinetMedical;
GO

CREATE DATABASE CabinetMedical;
GO

USE CabinetMedical;
GO

CREATE TABLE Patient(
NumPatient INT PRIMARY KEY,
Nom VARCHAR(50),
DateNaissance DATE,
Telephone VARCHAR(20)
);

CREATE TABLE Medecin(
CodeMedecin INT PRIMARY KEY,
Nom VARCHAR(50),
Specialite VARCHAR(50)
);

CREATE TABLE Service(
IdService INT PRIMARY KEY,
NomService VARCHAR(50)
);

CREATE TABLE Chambre(
IdChambre INT PRIMARY KEY,
Numero INT,
IdService INT,
FOREIGN KEY (IdService) REFERENCES Service(IdService)
);

CREATE TABLE Consultation(
IdConsultation INT PRIMARY KEY,
DateConsultation DATE,
Motif VARCHAR(100),
NumPatient INT,
CodeMedecin INT,
FOREIGN KEY (NumPatient) REFERENCES Patient(NumPatient),
FOREIGN KEY (CodeMedecin) REFERENCES Medecin(CodeMedecin)
);

CREATE TABLE RendezVous(
IdRdv INT PRIMARY KEY,
DateRdv DATE,
HeureRdv TIME,
NumPatient INT,
CodeMedecin INT,
FOREIGN KEY (NumPatient) REFERENCES Patient(NumPatient),
FOREIGN KEY (CodeMedecin) REFERENCES Medecin(CodeMedecin)
);

CREATE TABLE Traitement(
IdTraitement INT PRIMARY KEY,
NomTraitement VARCHAR(50),
Description VARCHAR(100),
IdConsultation INT,
FOREIGN KEY (IdConsultation) REFERENCES Consultation(IdConsultation)
);

CREATE TABLE Hospitalisation(
IdHospitalisation INT PRIMARY KEY,
DateDebut DATE,
DateFin DATE,
NumPatient INT,
IdChambre INT,
FOREIGN KEY (NumPatient) REFERENCES Patient(NumPatient),
FOREIGN KEY (IdChambre) REFERENCES Chambre(IdChambre)
);