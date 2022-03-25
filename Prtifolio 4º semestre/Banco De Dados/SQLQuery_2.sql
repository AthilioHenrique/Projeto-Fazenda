CREATE DATABASE Fazenda_db_1_2

USE Fazenda_db_1_2

CREATE TABLE Funcionario(
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR (30) NOT NULL,
    cpf INT NOT NULL,
    salario FLOAT NOT NULL,
    telefone INT,
    endereço VARCHAR(30),
)

CREATE TABLE Produlção_Leite(
    id INT PRIMARY KEY IDENTITY,
    especie VARCHAR (30) NOT NULL,
    ultima_ordenha DATE NOT NULL,
    temperatura_leite FLOAT NOT NULL,
    Podutividade_quarto FLOAT NOT NULL,
    parto DATE NOT NULL,
    validade_leite DATE NOT NULL,
)

CREATE TABLE Prudutos(
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(30) NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    quantidade_estoque INT NOT NULL,
    preço INT NOT NULL,
    data_fabricação DATE NOT NULL,
    data_validade DATE not NULL,
)

CREATE TABLE Equipamentos(
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(30) NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    função VARCHAR(30) NOT NULL,
    operando TINYINT NOT NULL DEFAULT '1',
)

CREATE TABLE  Produção_Ortaliças (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(30),
    data_plantio DATE NOT NULL,
    data_colheita DATE not null,
)

CREATE TABLE Produção_Carne(
    id INT PRIMARY KEY IDENTITY,
    especie VARCHAR (30) NOT NULL,
    peso INT NOT NULL,
    tamanho int NOT NULL,
    Podutividade_quarto FLOAT NOT NULL,
)