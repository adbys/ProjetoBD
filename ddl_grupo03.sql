--DDL GRUPO-03
--ADBYS JOSÉ VASCONCELOS DE ANDRADE - 116110498
--ARIANN MICHAEL MARTINS DE ANDRADE FARIAS - 115210534
--LUAN ROCHA SILVA - 115210869
--NILTON MANUEL NOGUEIRA GINANI - 115211281
--VICTOR EDUARDO BORGES DE ARAUJO - 115210597
--YOVANY MARROQUIN DA CUNHA - 115210445
CREATE TABLE Bacia( idBacia INTEGER,
		    		nome VARCHAR(30),
		    		area DECIMAL,
		    		perimetro DECIMAL,
		    		PRIMARY KEY (idBacia)
		  		  );

CREATE TABLE Rio( idRio INTEGER,
				  nome VARCHAR(30),
				  indicativo VARCHAR(30),
			      idBacia INTEGER, --GERANDO RELACIONAMENTO BACIA 1:N RIO
				  PRIMARY KEY (idRio),
				  FOREIGN KEY (idBacia) REFERENCES Bacia(idBacia)
				);

CREATE TABLE Acude( idAcude INTEGER,
				    nome VARCHAR(30),
				    volumeMaximo DECIMAL,
				    comprimento DECIMAL,
				    area DECIMAL,
				    idRio INTEGER, --GERANDO RELACIONAMENTO RIO 1:N AÇUDE
				    PRIMARY KEY (idAcude),
				    FOREIGN KEY (idRio) REFERENCES Rio(idRio)
		  		  );


CREATE TABLE Usuario( matricula INTEGER,
		      		  nome VARCHAR(30),
		      		  PRIMARY KEY (matricula)
		  			);

CREATE TABLE Estacao_de_qualidade( idEstacaoQualidade INTEGER,
		                   		   nome VARCHAR(30),
		                   		   latitude DECIMAL,
				   				   longitude DECIMAL,
								   idRio INTEGER, --GERANDO RELACAO RIO 1:N ESTACAO DE QUALIDADE
								   idAcude INTEGER, --GERANDO RELACAO ACUDE 1:N ESTACAO DE QUALIDADE
								   data DATE,
							       ph DECIMAL,
							       dbo DECIMAL,
							       turbidez DECIMAL,
							       oxigenio DECIMAL,
							       alcalinidade DECIMAL,
		                   		   PRIMARY KEY (idEstacaoQualidade),
								   FOREIGN KEY (idRio) REFERENCES Rio(idRio),
								   FOREIGN KEY (idAcude) REFERENCES Acude(idAcude),
								   CHECK ((idRio IS NOT NULL) OR (idAcude IS NOT NULL))
		                 		 );

CREATE TABLE Posto_pluviometrico( idPostoPluviometrico INTEGER,
						          nome VARCHAR(30),
						          rua VARCHAR(50),
								  num INTEGER,
								  bairro VARCHAR(50),
								  municipio VARCHAR(50),
								  estado VARCHAR(30),
								  idBacia INTEGER, --Gerando relacionamento bacia monitorada 1:N por posto pluviometrico
						          PRIMARY KEY (idPostoPluviometrico),
								  FOREIGN KEY (idBacia) REFERENCES Bacia(idBacia)
		                		);


CREATE TABLE Telefones_usuario( ddd CHAR(2),
							    numero VARCHAR(9),
							    matricula INTEGER,
							    PRIMARY KEY(matricula, numero, ddd),
							    FOREIGN KEY(matricula) REFERENCES Usuario(matricula)
			 				  );

CREATE TABLE Contrib_p_pluviometrico_acude( idPostoPluviometrico INTEGER, -- GERANDO RELACIONAMENTO AÇUDE N:N POSTO PLUVIOMETRICO
											idAcude INTEGER,
											PRIMARY KEY (idPostoPluviometrico, idAcude),
											FOREIGN KEY(idPostoPluviometrico) REFERENCES Posto_pluviometrico(idPostoPluviometrico),
											FOREIGN KEY(idAcude) REFERENCES Acude(idAcude)
						   				  );

CREATE TABLE Cota_area_volume( id INTEGER,
						       cota DECIMAL,
						       area DECIMAL,
						       volume DECIMAL,
						       idAcude INTEGER, --Gerando a relacao acude tem cota_area_volume
						       PRIMARY KEY (id),
						       FOREIGN KEY (idAcude) REFERENCES Acude(idAcude)
			     			 );


CREATE TABLE Medicao_cota_diaria( idMedicaoDiaria INTEGER,
				  cotaAtual DECIMAL,
				  data DATE,
				  matricula INTEGER, --Gerando a relacao acude tem medicao diaria
				  idAcude INTEGER, --Gerando a relacao usuario realiza medicao diaria
				  PRIMARY KEY(idMedicaoDiaria),
				  FOREIGN KEY (matricula) REFERENCES Usuario(matricula),
				  FOREIGN KEY (idAcude) REFERENCES Acude(idAcude)
				);

CREATE TABLE Medicao_pluviometrica( idMedicao INTEGER,
								    idPostoPluviometrico INTEGER, --GERANDO RELACIONAMENTO POSTO PLUVIOMETRICO 1:N MEDICAO PLUVIOMETRICA
								    matricula INTEGER, --GERANDO RELACIONAMENTO USUARIO 1:N MEDICAO PLUVIOMETRICA
								    PRIMARY KEY(idMedicao),
								    FOREIGN KEY (matricula) REFERENCES Usuario(matricula),
								    FOREIGN KEY (idPostoPluviometrico) REFERENCES Posto_pluviometrico(idPostoPluviometrico)
								  );

CREATE TABLE V_diarios_med_pluviometrica( valorChuva DECIMAL,
										  data DATE,
									      idMedicao INTEGER,
									      PRIMARY KEY(valorChuva, data, idMedicao),
									      FOREIGN KEY(idMedicao) REFERENCES Medicao_pluviometrica(idMedicao)
			     			  			);
