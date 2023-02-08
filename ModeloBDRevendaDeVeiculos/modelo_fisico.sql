-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Veiculo (
idveiculo Int PRIMARY KEY,
valor Float,
anomodelo Int,
km Int,
idmodelo Int,
idcor Int,
idcategoria Int,
idcombustivel Int,
idanuncio Int
)

CREATE TABLE Modelo (
idmodelo Int PRIMARY KEY,
descmodelo varchar(100),
idfabricante Int
)

CREATE TABLE Fabricante (
idfabricante Int PRIMARY KEY,
nomefabricante varchar(100)
)

CREATE TABLE Cor (
idcor Int PRIMARY KEY,
nomecor Varchar(100)
)

CREATE TABLE Categoria (
idcategoria Int PRIMARY KEY,
nomecategoria varchar(100)
)

CREATE TABLE Combustivel (
idcombustivel Int PRIMARY KEY,
desccombustivel varchar(100)
)

CREATE TABLE Opcional (
idopcional Int PRIMARY KEY,
descopcional varchar(100)
)

CREATE TABLE Anuncio (
idanuncio Int PRIMARY KEY,
datainicio date,
datafim date,
idcidade Int,
idcliente Int,
idstatus Int
)

CREATE TABLE Cidade (
idcidade Int PRIMARY KEY,
nomecidade Varchar(100),
idUF Int
)

CREATE TABLE Cliente (
idcliente Int PRIMARY KEY,
telefonecliente varchar(100),
nomecliente varchar(100),
emailcliente varchar(100),
cpfcnpjcliente varchar(100),
idtipo Int
)

CREATE TABLE Tipo (
idtipo Int PRIMARY KEY,
desctipo varchar(100)
)

CREATE TABLE UF (
idUF Int PRIMARY KEY,
nomeUF Varchar(100)
)

CREATE TABLE Status (
idstatus Int PRIMARY KEY,
descstatus Varchar(100)
)

CREATE TABLE OpcionalVeiculo (
idveiculo Int,
idopcional Int,
FOREIGN KEY(idveiculo) REFERENCES Veiculo (idveiculo),
FOREIGN KEY(idopcional) REFERENCES Opcional (idopcional)
)

ALTER TABLE Veiculo ADD FOREIGN KEY(idmodelo) REFERENCES Modelo (idmodelo)
ALTER TABLE Veiculo ADD FOREIGN KEY(idcor) REFERENCES Cor (idcor)
ALTER TABLE Veiculo ADD FOREIGN KEY(idcategoria) REFERENCES Categoria (idcategoria)
ALTER TABLE Veiculo ADD FOREIGN KEY(idcombustivel) REFERENCES Combustivel (idcombustivel)
ALTER TABLE Veiculo ADD FOREIGN KEY(idanuncio) REFERENCES Anuncio (idanuncio)
ALTER TABLE Modelo ADD FOREIGN KEY(idfabricante) REFERENCES Fabricante (idfabricante)
ALTER TABLE Anuncio ADD FOREIGN KEY(idcidade) REFERENCES Cidade (idcidade)
ALTER TABLE Anuncio ADD FOREIGN KEY(idcliente) REFERENCES Cliente (idcliente)
ALTER TABLE Anuncio ADD FOREIGN KEY(idstatus) REFERENCES Status (idstatus)
ALTER TABLE Cidade ADD FOREIGN KEY(idUF) REFERENCES UF (idUF)
ALTER TABLE Cliente ADD FOREIGN KEY(idtipo) REFERENCES Tipo (idtipo)
