USE CabinetMedical;
GO

INSERT INTO Patient VALUES
(1,'Kossi','1998-04-10','90000000'),
(2,'Ama','2001-09-15','91000000'),
(3,'Kodjo','1995-12-20','92000000');

INSERT INTO Medecin VALUES
(1,'Dr Mensah','Generaliste'),
(2,'Dr Tchalla','Cardiologue'),
(3,'Dr Lawson','Pediatre');

INSERT INTO Service VALUES
(1,'Cardiologie'),
(2,'Pediatrie'),
(3,'Medecine Generale');

INSERT INTO Chambre VALUES
(1,101,1),
(2,102,2),
(3,103,3);

INSERT INTO Consultation VALUES
(1,'2026-03-01','Fievre',1,1),
(2,'2026-03-02','Douleur poitrine',2,2),
(3,'2026-03-03','Controle',3,1);

INSERT INTO RendezVous VALUES
(1,'2026-03-10','10:00',1,1),
(2,'2026-03-11','11:00',2,2);

INSERT INTO Traitement VALUES
(1,'Paracetamol','Traitement contre la douleur',1),
(2,'Aspirine','Traitement cardiaque',2);

INSERT INTO Hospitalisation VALUES
(1,'2026-03-05','2026-03-08',1,1),
(2,'2026-03-06','2026-03-09',2,2);