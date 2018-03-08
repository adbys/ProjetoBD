-- ======================== 1 =============================== DUVIDA

SELECT a.nome as acude, e.nome as estacao
FROM Estacao_de_qualidade e, Acude a
WHERE e.idAcude = a.idAcude
GROUP BY a.nome, e.nome;

-- ======================== 2 ===============================

CREATE OR REPLACE VIEW chuva_no_paraiba AS
SELECT EXTRACT(MONTH FROM data) AS MES, EXTRACT(YEAR FROM data) AS ANO, SUM(valorChuva) AS CHUVAS
FROM  V_diarios_med_pluviometrica v, Posto_pluviometrico p, Medicao_pluviometrica m, Rio r, Bacia b
WHERE r.nome = 'Rio Gramame' and r.idBacia = b.idBacia and p.idBacia = b.idBacia and m.idPostoPluviometrico = p.idPostoPluviometrico and v.idMedicao = m.idMedicao
GROUP BY v.idMedicao, EXTRACT(MONTH FROM data), EXTRACT(YEAR FROM data);

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

-- ======================== 5 ===============================

CREATE OR REPLACE TRIGGER medicao_pluv_data
BEFORE INSERT OR UPDATE ON V_diarios_med_pluviometrica
FOR EACH ROW
BEGIN
	IF (:new.data > SYSDATE) THEN
		RAISE_APPLICATION_ERROR(-20001, 'Data da medição pluviometrica não pode ser superior a data atual');
	END IF;
END;
/

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('100', '05/08/2019', '2');


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

CREATE OR REPLACE VIEW "ACUDES_PERNAMBUCO" ("NOME", "PH") AS 
  SELECT DISTINCT(a.nome), eq.ph
FROM Estacao_de_qualidade eq, Acude a
WHERE a.idAcude IN (
    SELECT idAcude
    FROM Acude a, Rio r
    WHERE r.indicativo = 'Pernambuco' and a.idRio = r.idRio

);

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
GROUP BY v.idMedicao;

-- ======================== 11 ===============================

CREATE OR REPLACE TRIGGER cota_area_non_zerov
AFTER INSERT ON Cota_area_volume
FOR EACH ROW
BEGIN
   IF (:new.area = 0) THEN
       RAISE_APPLICATION_ERROR(-20001, 'Area cota não pode possuir valor zero');
   END IF;
END;
/

INSERT INTO Cota_area_volume(id, cota, area, volume, idAcude) VALUES ('1', '100000', '0', '10000', '1');

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



