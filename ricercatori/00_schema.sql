CREATE TABLE Ricercatori (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
cognome VARCHAR(50) NOT NULL,
specializzazione VARCHAR(100)
);

CREATE TABLE Progetti (
id INT AUTO_INCREMENT PRIMARY KEY,
titolo VARCHAR(100) NOT NULL,
durata_mesi INT
);

CREATE TABLE Attrezzature (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_attrezzatura VARCHAR(100) NOT NULL,
tipo VARCHAR(50)
 );

CREATE TABLE Assegnazioni (
id_assegnazione INT AUTO_INCREMENT PRIMARY KEY,
id_ricercatore INT NOT NULL,
id_progetto INT NOT NULL,
id_attrezzatura INT NOT NULL,
data_inizio DATE,
data_fine DATE,
FOREIGN KEY (id_ricercatore) REFERENCES Ricercatori(id),
FOREIGN KEY (id_progetto) REFERENCES Progetti(id),
FOREIGN KEY (id_attrezzatura) REFERENCES Attrezzature(id)
);


 