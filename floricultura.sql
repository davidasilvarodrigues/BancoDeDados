CREATE TABLE Cliente(
    cliente_id serial,
    nome varchar(50) NOT NULL,
    cpf char(11) NOT NULL,
    cep char(8) NOT NULL,
    PRIMARY KEY (cliente_id)
    );
CREATE TABLE Regiao(
    regiao_id serial,
    nome varchar(50) NOT NULL,
    PRIMARY KEY (regiao_id)
    );
CREATE TABLE Cidade(
    cidade_id serial,
    nome varchar(50) NOT NULL,
    cep char(8) NOT NULL,
    regiao_fk integer,
    PRIMARY KEY (cidade_id),
    FOREIGN KEY (regiao_fk) REFERENCES Regiao(regiao_id)
    );
CREATE TABLE Pedido(
    pedido_id serial,
    nome varchar(50) NOT NULL,
    data date NOT NULL,
    valor money NOT NULL,
    cliente_fk integer,
    cidade_fk integer,
    PRIMARY KEY (pedido_id),
    FOREIGN KEY (cliente_fk) REFERENCES Cliente(cliente_id),
    FOREIGN KEY (cidade_fk) REFERENCES Cidade(cidade_id)
    );
CREATE TABLE Flor(
    flor_id serial,
    nome varchar(50) NOT NULL,
    cor varchar(10) NOT NULL,
    tipo varchar(20) NOT NULL,
    PRIMARY KEY (flor_id)
    );
    CREATE TABLE Floricultura(
          floricultura_id serial,
          nome varchar(50) NOT NULL,
          cep char(8) NOT NULL,
          cnpj char(14) NOT NULL,
          regiao_fk integer,
          PRIMARY KEY (floricultura_id),
          FOREIGN KEY (regiao_fk) REFERENCES Regiao(regiao_id)
        );
    CREATE TABLE FlorFloricultura(
          floricultura_fk integer,
          flor_fk integer,
          PRIMARY KEY (floricultura_fk,flor_fk),
          FOREIGN KEY (flor_fk) REFERENCES Flor(flor_id),
          FOREIGN KEY (Floricultura_fk) REFERENCES Floricultura(Floricultura_id)
          );
    CREATE TABLE FlorPedido(
            pedido_fk integer,
            flor_fk integer,
            quantidade varchar(5),
            PRIMARY KEY (pedido_fk,flor_fk),
            FOREIGN KEY (flor_fk) REFERENCES Flor(flor_id),
            FOREIGN KEY (pedido_fk) REFERENCES Pedido(pedido_id)
          );
