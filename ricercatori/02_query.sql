
prende i nomi e cognomi dei ricercatori e mostra a quale progetto sono assegnati e che attrezzatura usano

SELECT r.nome, r.cognome, ass.id_progetto, ass.id_attrezzatura
FROM Assegnazioni ass
JOIN Ricercatori r ON ass.id_ricercatore = r.id;



 presi nomi e cognomi dei ricercatori a quale progetto sono assegnati 

SELECT 
r.nome,
r.cognome,
p.titolo
FROM 
Assegnazioni a
JOIN 
Ricercatori r ON a.id_ricercatore = r.id
JOIN 
Progetti p ON a.id_progetto = p.id;


il nome e cognome del ricercatore il progetto a cui sono assegnati le attrezzature che utilizzano e la data d'inizio e di fine del progetto

SELECT 
r.nome,
r.cognome,
p.titolo AS progetto,
t.nome_attrezzatura AS attrezzature,
a.data_inizio,
a.data_fine
FROM Assegnazioni a
JOIN Ricercatori r ON a.id_ricercatore = r.id
JOIN Progetti p ON a.id_progetto = p.id
JOIN Attrezzature t ON a.id_attrezzatura = t.id;


il nome e cognome dei ricercatori a che progetto sono assegnati e quanto d'ura quest'ultimo 

SELECT 
r.nome,
r.cognome,
p.titolo,
p.durata_mesi
FROM Ricercatori r
JOIN Assegnazioni a 
ON r.id = a.id_ricercatore
JOIN Progetti p
ON a.id_progetto = p.id
WHERE p.durata_mesi > 10;



questo ci mostra invece tutti i progetti che hanno una data di fine null ovvero non hanno una data di fine (per usare questa query ho dovuto cambiare la tabella  delle assegnazioni  la colo delle date di inizio e fine )

SELECT 
r.nome,
r.cognome,
p.titolo AS progetto,
a.data_fine
FROM Ricercatori r
LEFT JOIN Assegnazioni a 
ON r.id = a.id_ricercatore
LEFT JOIN Progetti p 
ON a.id_progetto = p.id
WHERE a.data_fine IS NULL;
