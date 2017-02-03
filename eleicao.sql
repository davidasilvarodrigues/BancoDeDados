CREATE TABLE Zona(
    zona_id serial,
    cidade varchar(50) NOT NULL,
    numero integer NOT NULL,
    PRIMARY KEY (regiao_id)
    );
CREATE TABLE Secao(
    secao_id serial,
    cep char(8) NOT NULL,
    numero integer NOT NULL,
    zona_fk integer,
    PRIMARY KEY (secao_id),
    FOREIGN KEY (zona_fk) REFERENCES Zona(zona_id)
  );
  CREATE TABLE Eleitor(
      eleitor_id serial,
      nome varchar(50) NOT NULL,
      titulo char(12) NOT NULL,
      cpf char(11) NOT NULL,
      cep char(8) NOT NULL,
      secao_fk integer,
      PRIMARY KEY (eleitor_id),
      FOREIGN KEY (secao_fk) REFERENCES Secao(secao_id)
      );
  CREATE TABLE Partido(
      partido_id serial,
      nome varchar(50) NOT NULL,
      numero integer,
      PRIMARY KEY (partido_id)
      );
  CREATE TABLE Cargo(
        cargo_id serial,
        nome varchar(50) NOT NULL,
        descricao varchar(70),
        PRIMARY KEY (cargo_id)
      );
  CREATE TABLE Candidato(
      candidato_id serial,
      nome varchar(50) NOT NULL,
      numero integer,
      partido_fk integer,
      cargo_fk integer,
      PRIMARY KEY (candidato_id),
      FOREIGN KEY (cargo_fk) REFERENCES Cargo(cargo_id),
      FOREIGN KEY (partido_fk) REFERENCES Partido(partido_id)
    );
CREATE TABLE Voto(
      voto_id serial,
      data date,
      secao_fk integer,
      zona_fk integer,
      candidato_fk integer,
      PRIMARY KEY (voto_id),
      FOREIGN KEY (secao_fk) REFERENCES Secao(secao_id),
      FOREIGN KEY (zona_fk) REFERENCES Zona(zona_id),
      FOREIGN KEY (candidato_fk) REFERENCES Candidato(candidato_id)
      );
