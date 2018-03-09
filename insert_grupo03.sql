--INSERT GRUPO-03
--ADBYS JOS� VASCONCELOS DE ANDRADE - 116110498
--ARIANN MICHAEL MARTINS DE ANDRADE FARIAS - 115210534
--LUAN ROCHA SILVA - 115210869
--NILTON MANUEL NOGUEIRA GINANI - 115211281
--VICTOR EDUARDO BORGES DE ARAUJO - 115210597
--YOVANY MARROQUIN DA CUNHA - 115210445

--======================BACIAS=============================================


INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES ('1', 'Bacia Amaz�nica', '7500000', '750000');

INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES ('2', 'Bacia do Rio Paran�', '800000', '80000');

INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES ('3', 'Bacia do Rio Paraguai', '1000000', '100000');

INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES ('4', 'Bacia Atl�ntico Nordeste', '287300', '28730');

INSERT INTO Bacia(idBacia, nome, area, perimetro) VALUES ('5', 'Bacia Tocantins-Araguaia', '500000', '50000');

--============================RIOS=========================================


INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('1', 'Rio Para�ba','Para�ba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('2', 'Rio Cachoeiro','Para�ba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('3', 'Rio Espinharas','Para�ba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('4', 'Rio Para�ba do Norte','Para�ba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('5', 'Rio Gramame','Para�ba', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('6', 'Rio Beberibe','Pernambuco', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('7', 'Rio Orob�','Pernambuco', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('8', 'Rio S�o Francisco','Pernambuco', '4');

INSERT INTO Rio(idRio, nome, indicativo, idBacia) VALUES ('9', 'Rio Amazonas','Amazonas', '1');

--============================A�UDE=========================================

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('1', 'Bodocong�', '53000', '1000', '9000', '3');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('2', 'Boqueir�o', '411686287', '20000', '12410', '1');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('3', 'Coremas', '591646222', '50000', '20410', '2');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('4', 'Botafogo', '27690', '900', '8000', '6');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('5', 'Po�o da Cruz', '500000000', '10000', '90000', '7');

INSERT INTO Acude(idAcude, nome, volumeMaximo, comprimento, area, idRio) VALUES ('6', 'Apipucos', '200000000', '9500', '80000', '7');

--============================USUARIO=========================================

INSERT INTO Usuario(matricula, nome) VALUES ('1', 'Jos� Maria');

INSERT INTO Usuario(matricula, nome) VALUES ('2', 'Jo�o Silva');

INSERT INTO Usuario(matricula, nome) VALUES ('3', 'Ana Maria');

INSERT INTO Usuario(matricula, nome) VALUES ('4', 'Jos� Cruz');

INSERT INTO Usuario(matricula, nome) VALUES ('5', 'Pedro da Mata');

--============================ESTACAO QUALIDADE=========================================

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('1', 'Estacao Bodocong�', '120', '190', '3', '1', '10/12/2017', '5', '5', '10', '12', '11');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('1', 'Estacao Bodocong�', '125', '170', '3', '1', '12/14/2017', '5', '6', '10', '14', '11');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('1', 'Estacao Bodocong�', '136', '230', '3', '1', '12/16/2017', '5', '7', '10', '15', '12');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('2', 'Estacao Para�ba 1', '129', '430', '1', '2', '01/11/2018', '6', '8', '10', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('3', 'Estacao Para�ba 2', '199', '930', '4', '1', '01/20/2018', '9', '8', '15', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('4', 'Estacao Para�ba 3', '125', '630', '5', '3', '01/30/2018', '7', '2', '17', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('5', 'Estacao Pernambuco 1', '155', '135', '8', '4', '01/10/2018', '6', '8', '10', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('6', 'Estacao Pernambuco 2', '120', '130', '7', '5', '02/10/2018', '5', '7', '10', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('7', 'Estacao Gramame', '180', '199', '5', '4', '03/06/2018', '5', '7', '15', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('7', 'Estacao Gramame', '180', '199', '5', '4', '03/01/2018', '5', '7', '10', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('7', 'Estacao Gramame', '180', '199', '5', '4', '03/02/2018', '5', '7', '12', '19', '9');

INSERT INTO Estacao_de_qualidade(idEstacaoQualidade, nome, latitude, longitude, idRio, idAcude, data, ph, dbo, turbidez, oxigenio, alcalinidade) VALUES ('8', 'Estacao Amazonas', '500', '600', '9', '6', '03/01/2017', '5', '7', '12', '19', '9');


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

INSERT INTO Posto_pluviometrico(idPostoPluviometrico, nome, rua, num, bairro, municipio, estado, idBacia) VALUES ('1', 'Posto Bacia do Para�ba', 'Rua do posto', '20', 'Bairro do posto', 'Campina Grande', 'Para�ba', '4');

INSERT INTO Posto_pluviometrico(idPostoPluviometrico, nome, rua, num, bairro, municipio, estado, idBacia) VALUES ('2', 'Posto Bacia do Amazonas', 'Rua do posto', '22', 'Bairro do posto', 'Amazonas', 'Amazonas', '1');

INSERT INTO Posto_pluviometrico(idPostoPluviometrico, nome, rua, num, bairro, municipio, estado, idBacia) VALUES ('3', 'Posto B TocantinsAraguaia', 'Rua do posto', '330', 'Bairro do posto', 'Palmas', 'Tocantins', '5');

INSERT INTO Posto_pluviometrico(idPostoPluviometrico, nome, rua, num, bairro, municipio, estado, idBacia) VALUES ('4', 'Posto Bacia do Paraguai', 'Rua do posto', '150', 'Bairro do posto', 'Assun��o', 'La Recoleta', '3');

INSERT INTO Posto_pluviometrico(idPostoPluviometrico, nome, rua, num, bairro, municipio, estado, idBacia) VALUES ('5', 'Posto Bacia do Paran�', 'Rua do posto', '405', 'Bairro do posto', 'Curitiba', 'Paran�', '2');


--============================TELEFONES USU�RIO=========================================

INSERT INTO Telefones_usuario(ddd, numero, matricula) VALUES ('11', '11111111','1');

INSERT INTO Telefones_usuario(ddd, numero, matricula) VALUES ('22', '22222222','2');

INSERT INTO Telefones_usuario(ddd, numero, matricula) VALUES ('33', '33333333','3');

INSERT INTO Telefones_usuario(ddd, numero, matricula) VALUES ('44', '44444444','4');

INSERT INTO Telefones_usuario(ddd, numero, matricula) VALUES ('55', '55555555','5');


--============================MEDICAO PLUVIOMETRICA=========================================

INSERT INTO Medicao_pluviometrica(idMedicao, idPostoPluviometrico, matricula) VALUES ('1', '1', '1');

INSERT INTO Medicao_pluviometrica(idMedicao, idPostoPluviometrico, matricula) VALUES ('2', '2', '1');

INSERT INTO Medicao_pluviometrica(idMedicao, idPostoPluviometrico, matricula) VALUES ('3', '5', '2');

INSERT INTO Medicao_pluviometrica(idMedicao, idPostoPluviometrico, matricula) VALUES ('4', '4', '3');

INSERT INTO Medicao_pluviometrica(idMedicao, idPostoPluviometrico, matricula) VALUES ('5', '3', '4');

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


--============================COTA AREA VOLUME=========================================

INSERT INTO Cota_area_volume(id, cota, area, volume, idAcude) VALUES ('1', '100000', '100', '10000', '1');

INSERT INTO Cota_area_volume(id, cota, area, volume, idAcude) VALUES ('2', '200000', '200', '20000', '2');

INSERT INTO Cota_area_volume(id, cota, area, volume, idAcude) VALUES ('3', '300000', '300', '30000', '3');

INSERT INTO Cota_area_volume(id, cota, area, volume, idAcude) VALUES ('4', '400000', '400', '40000', '4');

INSERT INTO Cota_area_volume(id, cota, area, volume, idAcude) VALUES ('5', '500000', '500', '50000', '5');


--============================CONTRIBUI��O POSTO PLUVIOMETRICO ACUDES=========================================

INSERT INTO Contrib_p_pluviometrico_acude(idPostoPluviometrico, idAcude) VALUES ('1', '1');

INSERT INTO Contrib_p_pluviometrico_acude(idPostoPluviometrico, idAcude) VALUES ('2', '2');

INSERT INTO Contrib_p_pluviometrico_acude(idPostoPluviometrico, idAcude) VALUES ('3', '3');

INSERT INTO Contrib_p_pluviometrico_acude(idPostoPluviometrico, idAcude) VALUES ('4', '4');

INSERT INTO Contrib_p_pluviometrico_acude(idPostoPluviometrico, idAcude) VALUES ('5', '5');