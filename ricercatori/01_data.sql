INSERT INTO Ricercatori (nome, cognome, specializzazione)
 VALUES 
('Alice', 'Rossi', 'Biologia'),
('Marco', 'Bianchi', 'Chimica'),
('Luca', 'Verdi', 'Fisica'),
('Sara', 'Neri', 'Biotecnologie');


INSERT INTO Progetti (titolo, durata_mesi)
VALUES
('Studio cellule staminali', 12),
('Analisi reazioni chimiche', 8),
('Esperimenti fisica quantistica', 10),
('Sviluppo vaccini', 15);


INSERT INTO Attrezzature (nome_attrezzatura, tipo)
VALUES
('Microscopio Elettronico', 'Microscopia'),
('Centrifuga', 'Chimica'),
('Spettrometro', 'Fisica'),
('Incubatore', 'Biotecnologie');


INSERT INTO Assegnazioni (id_ricercatore, id_progetto, id_attrezzatura, data_inizio, data_fine)
VALUES
(1, 1, 1, '2026-02-01', '2026-08-01'),
(2, 2, 2, '2026-03-01', '2026-09-01'),
(3, 3, 3, '2026-01-15', '2026-11-15'),
(4, 4, 4, '2026-02-10', '2027-05-10'),
(1, 4, 4, '2026-06-01', '2027-06-01');