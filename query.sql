-- ======================== 1 =============================== DUVIDA

SELECT a.nome as acude, e.nome as estacao
FROM Estacao_de_qualidade e, Acude a
WHERE e.idAcude = a.idAcude
GROUP BY a.nome, e.nome;

-- ======================== 3 ===============================
SELECT nome
FROM Rio
WHERE idRio NOT IN (
     SELECT idRio
     FROM Estacao_de_qualidade
);

-- ======================== 4 ===============================

SELECT nome
FROM Bacia
ORDER BY area, perimetro DESC;

-- ======================== 6 ===============================

SELECT dbo
FROM Estacao_de_qualidade
WHERE idAcude IN (SELECT idAcude
                FROM Acude
                WHERE nome = 'Bodocongó' AND data BETWEEN '10/12/2017' AND '12/15/2017');

-- ======================== 7 ===============================

SELECT r.nome, COUNT(*)
FROM Acude a, Rio r
WHERE a.idRio = r.idRio
GROUP BY a.idRio, r.nome;

-- ======================== 8 ===============================

CREATE VIEW "ACUDES_PERNAMBUCO" ("NOME", "PH") AS 
  SELECT a.nome, eq.ph
FROM Estacao_de_qualidade eq, Acude a
WHERE a.idAcude IN (
    SELECT idAcude
    FROM Acude a, Rio r
    WHERE r.indicativo = 'Pernambuco' and a.idRio = r.idRio

)

-- ======================== 9 ===============================

SELECT turbidez
FROM Estacao_de_qualidade
WHERE idRio IN (SELECT idRio
                FROM Rio
                WHERE nome = 'Rio Gramame'
                )
ORDER BY turbidez ASC;

-- ======================== 10 ===============================

SELECT SUM(valorChuva)
FROM V_diarios_med_pluviometrica v, Posto_pluviometrico p, Medicao_pluviometrica m, Rio r, Bacia b
WHERE r.nome = 'Rio Gramame' and r.idBacia = b.idBacia and p.idBacia = b.idBacia and m.idPostoPluviometrico = p.idPostoPluviometrico and v.idMedicao = m.idMedicao and v.data BETWEEN '10/01/2017' AND '10/31/2017'
GROUP BY v.idMedicao

-- ======================== 11 ===============================

CREATE TRIGGER cota_area_non_zerov
AFTER INSERT ON Cota_area_volume
REFERENCING NEW AS NovaCota
FOR EACH ROW
BEGIN
   DECLARE ERRO_COTA_AREA_VOLUME EXCEPTION
   FOR SQLSTATE '99999';
   IF NovaCota.area = '0' THEN SIGNAL ERRO_COTA_AREA_VOLUME;
   END IF;
END;

INSERT INTO Cota_area_volume(id, cota, area, volume, idAcude) VALUES ('1', '100000', '0', '10000', '1');



CREATE OR REPLACE TRIGGER cota_area_non_zerov
AFTER INSERT ON Cota_area_volume
FOR EACH ROW
BEGIN
   IF (new.area = 0) THEN
       RAISE_APPLICATION_ERROR(-20001, 'Area cota não pode possuir valor zero');
   END IF;
END;

-- ======================== 12 ===============================

SELECT SUM(area)/COUNT(*)
FROM Acude a, Rio r 
WHERE r.indicativo = 'Paraíba' and a.idRio = r.idRio;

-- ======================== 13 ===============================
SELECT *
FROM Bacia 
WHERE perimetro >= ALL(SELECT perimetro FROM Bacia);

-- ======================== 14 ===============================

SELECT SUM(cotaAtual)/COUNT(*)
FROM Medicao_cota_diaria
WHERE idAcude IN (SELECT idAcude
                FROM Acude
                WHERE nome = 'Bodocongó' AND data BETWEEN '01/01/2018' AND '02/01/2018');

-- ======================== 15 ===============================

SELECT DISTINCT(nome)
FROM Estacao_de_qualidade
WHERE idRio IN (SELECT idRio
                FROM Rio
                WHERE indicativo = 'Paraíba' OR indicativo = 'Pernambuco');













CREATE VIEW acudes_pernambuco AS
SELECT a.nome, eq.ph
FROM Estacao_de_qualidade eq, Acude a
WHERE a.idAcude IN (
    SELECT idAcude
    FROM Acude a, Rio r
    WHERE r.indicativo = 'Pernambuco' and a.idRio = r.idRio

);