--======================BACIAS=============================================


INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES ('1', 'Bacia Amazônica', '7500000', '750000');

INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES ('2', 'Bacia do Rio Paraná', '800000', '80000');

INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES ('3', 'Bacia do Rio Paraguai', '1000000', '100000');

INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES ('4', 'Bacia Atlântico Nordeste', '287300', '28730');


--============================RIOS=========================================


INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('1', 'Rio Paraíba','Paraíba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('2', 'Rio Cachoeiro','Paraíba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('3', 'Rio Espinharas','Paraíba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('4', 'Rio Paraíba do Norte','Paraíba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('5', 'Rio Gramame','Paraíba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('6', 'Rio Beberibe','Pernambuco', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('7', 'Rio Orobó','Pernambuco', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('8', 'Rio São Francisco','Pernambuco', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('9', 'Rio Amazonas','Amazonas', '1');

--============================AÇUDE=========================================

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('1', 'Bodocongó', '53000', '1000', '9000', '3');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('2', 'Boqueirão', '411686287', '20000', '12410', '1');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('3', 'Coremas', '591646222', '50000', '20410', '2');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('4', 'Botafogo', '27690', '900', '8000', '6');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('5', 'Poço da Cruz', '500000000', '10000', '90000', '7');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('6', 'Apipucos', '200000000', '9500', '80000', '7');

--============================USUARIO=========================================

INSERT INTO Usuario(matricula, nome) VALUES ('1', 'José Maria');

INSERT INTO Usuario(matricula, nome) VALUES ('2', 'João Silva');

--============================ESTACAO QUALIDADE=========================================

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('1', 'Estacao Bodocongó', '120', '190', '3', '1', '10/12/2017', '5', '5', '10', '12', '11');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('1', 'Estacao Bodocongó', '125', '170', '3', '1', '12/14/2017', '5', '6', '10', '14', '11');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('1', 'Estacao Bodocongó', '136', '230', '3', '1', '12/16/2017', '5', '7', '10', '15', '12');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('2', 'Estacao Paraíba 1', '129', '430', '1', '2', '01/11/2018', '6', '8', '10', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('3', 'Estacao Paraíba 2', '199', '930', '4', '1', '01/20/2018', '9', '8', '15', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('4', 'Estacao Paraíba 3', '125', '630', '5', '3', '01/30/2018', '7', '2', '17', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('5', 'Estacao Pernambuco 1', '155', '135', '8', '4', '01/10/2018', '6', '8', '10', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('6', 'Estacao Pernambuco 2', '120', '130', '7', '5', '02/10/2018', '5', '7', '10', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('7', 'Estacao Gramame', '180', '199', '5', '4', '03/06/2018', '5', '7', '15', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('7', 'Estacao Gramame', '180', '199', '5', '4', '03/01/2018', '5', '7', '10', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('7', 'Estacao Gramame', '180', '199', '5', '4', '03/02/2018', '5', '7', '12', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('8', 'Estacao Amazonas', '500', '600', '9', '6', '03/10/2017', '5', '7', '12', '19', '9');


--============================COTA ACUDE=========================================

INSERT INTO Medicao_cota_diaria(idMedicaoDiaria, cotaAtual, data, matricula, idAcude) VALUES ('1', '8000', '12/20/2017', '1', '1');

INSERT INTO Medicao_cota_diaria(idMedicaoDiaria, cotaAtual, data, matricula, idAcude) VALUES ('2', '7500', '01/01/2018', '1', '1');

INSERT INTO Medicao_cota_diaria(idMedicaoDiaria, cotaAtual, data, matricula, idAcude) VALUES ('3', '6000', '01/10/2018', '1', '1');

INSERT INTO Medicao_cota_diaria(idMedicaoDiaria, cotaAtual, data, matricula, idAcude) VALUES ('4', '5500', '01/15/2018', '1', '1');

INSERT INTO Medicao_cota_diaria(idMedicaoDiaria, cotaAtual, data, matricula, idAcude) VALUES ('5', '6000', '01/20/2018', '1', '1');

INSERT INTO Medicao_cota_diaria(idMedicaoDiaria, cotaAtual, data, matricula, idAcude) VALUES ('6', '7800', '01/21/2018', '1', '1');

INSERT INTO Medicao_cota_diaria(idMedicaoDiaria, cotaAtual, data, matricula, idAcude) VALUES ('7', '8300', '01/30/2018', '1', '1');

INSERT INTO Medicao_cota_diaria(idMedicaoDiaria, cotaAtual, data, matricula, idAcude) VALUES ('8', '8900', '02/01/2018', '1', '1');

INSERT INTO Medicao_cota_diaria(idMedicaoDiaria, cotaAtual, data, matricula, idAcude) VALUES ('9', '10900', '02/05/2018', '1', '1');



--============================POSTO PLUVIOMETRICO=========================================

INSERT INTO Posto_pluviometrico(idPostoPluviometrico, nome, rua, num, bairro, municipio, estado, idBacia) VALUES ('1', 'Posto Bacia do Paraíba', 'Rua do posto', '20', 'Bairro do posto', 'Campina Grande', 'Paraíba', '4');

INSERT INTO Posto_pluviometrico(idPostoPluviometrico, nome, rua, num, bairro, municipio, estado, idBacia) VALUES ('2', 'Posto Bacia do Amazonas', 'Rua do posto', '22', 'Bairro do posto', 'Amazonas', 'Amazonas', '1');

--============================MEDICAO PLUVIOMETRICA=========================================

INSERT INTO Medicao_pluviometrica(idMedicao, idPostoPluviometrico, matricula) VALUES ('1', '1', '1');

INSERT INTO Medicao_pluviometrica(idMedicao, idPostoPluviometrico, matricula) VALUES ('2', '2', '1');

--============================VALORES DIARIOS MEDICAO PLUVIOMETRICA=========================================

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('100', '01/01/2017', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('150', '02/08/2017', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('200', '05/06/2017', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('180', '09/20/2017', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('280', '09/25/2017', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('70', '10/20/2017', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('170', '10/21/2017', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('200', '10/27/2017', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('50', '01/02/2018', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('150', '02/10/2018', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('100', '03/02/2018', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('200', '03/08/2018', '1');

INSERT INTO V_diarios_med_pluviometrica(valorChuva, data, idMedicao) VALUES ('500', '03/08/2018', '2');