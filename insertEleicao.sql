INSERT INTO zona (cidade,numero)
	VALUES ('RJ',56),('SP',81),('SC',39),('AM',35),('PA',2);
INSERT INTO secao (cep,numero,zona_fk)
  	VALUES ('25497183',11,1),('54322032',7,2),('92207029',24,3),('33905687',62,4),('14041963',33,5);
INSERT INTO eleitor (cep,cpf,titulo,nome,secao_fk)
    VALUES ('25497183','25497183123','254971831231','Orlando',29),('43220734','54322073432','543220734327','Zé',29),('07023289','92070232899','920702322899','maria',29),('39053726','33905372687','339205372687','carlos',28),('51204196','14512041963','14512041963','Joao',27);
INSERT INTO partido (nome,numero)
    VALUES ('PT',13),('PSDB',45),('PMDB',15),('PSTU',28),('PCDoB',27);
INSERT INTO cargo (nome,descricao)
  	VALUES ('Prefeito','chato tbm'),('senador','bem chato'),('presidente','chato');
INSERT INTO candidato (nome,numero,partidO_fk,cargo_fk)
    VALUES ('ROBERVALDO',13123,1,1),('Roberci',45,2,1),('Carlinhos',15999,3,2),('Romario',28999,4,2),('Silvio Santos',27999,5,3),('lula',13,1,3);
INSERT INTO voto (data,candidato_fk,zona_fk,secao_fk)
    VALUES ('2017/01/13',1,2,27),('2017/01/13',1,1,27),('2017/01/13',1,3,28),('2017/01/13',5,3,28),('2017/01/13',5,3,28),('2017/01/13',5,3,29),('2017/01/13',5,4,28),('2017/01/13',5,3,28),('2017/01/13',5,2,28),
        ('2017-01-13',3,3,30);
