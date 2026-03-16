USE CabinetMedical;
GO

-- Enregistrer une nouvelle consultation

INSERT INTO Consultation
VALUES (4,'2026-03-12','Migraine',2,1);

-- Lister toutes les consultations d’un patient

SELECT Patient.Nom, Consultation.DateConsultation, Consultation.Motif
FROM Consultation
JOIN Patient
ON Consultation.NumPatient = Patient.NumPatient
WHERE Patient.NumPatient = 1;

-- Afficher les consultations effectuées par un médecin

SELECT Medecin.Nom, Consultation.DateConsultation, Consultation.Motif
FROM Consultation
JOIN Medecin
ON Consultation.CodeMedecin = Medecin.CodeMedecin
WHERE Medecin.CodeMedecin = 1;