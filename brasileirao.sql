CREATE TABLE Jogador(
    idJogador serial,
    numero integer NOT NULL,
    nome varchar(50) NOT NULL,
    situacao varchar(50) NOT NULL,
    posicao varchar(50) NOT NULL,
    PRIMARY KEY (idJogador)
    );
CREATE TABLE Tecnico(
      idTecnico serial,
      idade integer NOT NULL,
      nome varchar(50) NOT NULL,
      PRIMARY KEY (idTecnico)
    );
CREATE TABLE Clube(
     idClube serial,
     escudo varchar(20) NOT NULL,
     nome varchar(50) NOT NULL,
     PRIMARY KEY (idClube)
    );
CREATE TABLE Estadio(
    idEstadio serial,
    cep char(8) NOT NULL,
    nome varchar(50) NOT NULL,
    capacidade integer NOT NULL,
    PRIMARY KEY (idEstadio)
    );    
CREATE TABLE ClubeEstadio(
     Estadio_fk integer,
     Clube_fk integer,
     PRIMARY KEY (Estadio_fk,Clube_fk),
     FOREIGN KEY (Estadio_fk) REFERENCES Estadio(idEstadio),
     FOREIGN KEY (Clube_fk) REFERENCES Clube(idClube)
    );
CREATE TABLE Equipe(
     idEquipe serial,
     Tecnico_fk integer,
     Clube_fk integer,
     posicao varchar(50) NOT NULL,
     categoria varchar(50) NOT NULL,
     PRIMARY KEY (idEquipe),
     FOREIGN KEY (Tecnico_fk) REFERENCES Tecnico(idTecnico),
     FOREIGN KEY (Clube_fk) REFERENCES Clube(idClube)
 );
 CREATE TABLE Partida(
    idPartida serial,
     data date NOT NULL,
     publico integer NOT NULL,
     mandante integer NOT NULL,
     visitante integerNOT NULL,
     PRIMARY KEY (idPartida),
     FOREIGN KEY (mandante) REFERENCES Equipe(idEquipe),
     FOREIGN KEY (visitante) REFERENCES Equipe(idEquipe)
    );
CREATE TABLE EquipeJogador(
     Jogador_fk integer,
     Equipe_fk integer,
     PRIMARY KEY (Equipe_fk,Jogador_fk),
     FOREIGN KEY (Jogador_fk) REFERENCES Jogador(idJogador),
     FOREIGN KEY (Equipe_fk) REFERENCES Equipe(idEquipe)
 );
CREATE TABLE JogadorPartida(
     Jogador_fk integer,
     Partida_fk integer,
     gol integer NOT NULL,
     cartaoA integer NOT NULL,
     cartaoV integer NOT NULL,
     PRIMARY KEY (Partida_fk,Jogador_fk),
     FOREIGN KEY (Jogador_fk) REFERENCES Jogador(idJogador),
     FOREIGN KEY (Partida_fk) REFERENCES Partida(idPartida)
 );