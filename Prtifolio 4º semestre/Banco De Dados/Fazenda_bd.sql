CREATE DATABASE Fazenda_bd

USE Fazenda_bd

CREATE TABLE Funcionario(
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR (30) NOT NULL,
    cpf INT NOT NULL,
    salario FLOAT NOT NULL,
    telefone INT,
    estado VARCHAR(30),
    cidade VARCHAR(30),
    bairro VARCHAR(30),
    Rua VARCHAR(30),
    N INT
)

CREATE TABLE Produção_Leite(
    id INT PRIMARY KEY IDENTITY,
    especie VARCHAR (30) NOT NULL,
    ultima_ordenha DATE NOT NULL,
    temperatura_leite FLOAT NOT NULL,
    Produtividade_quarto FLOAT NOT NULL,
    parto DATE NOT NULL,
    validade_leite DATE NOT NULL,
)

CREATE TABLE Produtos(
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
    Produtividade_quarto FLOAT NOT NULL,
)

                -- Tabela Funcionario
INSERT INTO  Funcionario (nome, cpf, salario, telefone, estado, cidade, bairro, Rua, N)
VALUES ('Rafael', 123000685, 3000.00, 99667788, 'São Paulo','São Paulo','Osasco','Alameda Jose Alberto',87)

INSERT INTO  Funcionario (nome, cpf, salario, telefone, estado, cidade, bairro, Rua, N)
VALUES ('Elisa', 987541215, 5000.00, 33544681, 'São Paulo','São Paulo','São Bernado Do Campo','Azyleia ventista',36)

INSERT INTO  Funcionario (nome, cpf, salario, telefone, estado, cidade, bairro, Rua, N)
VALUES ('Miguel', 456385100, 1200.00, 58314576, 'São Paulo','São Paulo','Sorocaba','Geada Nova', 56)



             --Tabela Produção de leite
INSERT INTO  Produção_Leite (especie, ultima_ordenha, temperatura_leite, Produtividade_quarto, parto, validade_leite)
VALUES ('Bos Tauros', '2020-08-20', 38, 1000, '2020-12-24', '2021-02-08')

INSERT INTO  Produção_Leite (especie, ultima_ordenha, temperatura_leite, Produtividade_quarto, parto, validade_leite)
VALUES ('Gado Jersey', '2020-06-10', 36, 700, '2020-11-18', '2021-10-10')

INSERT INTO  Produção_Leite (especie, ultima_ordenha, temperatura_leite, Produtividade_quarto, parto, validade_leite)
VALUES ('Gelbvieh', '2020-08-03', 40, 1200, '2020-01-12', '2021-02-03')



                --Prudutos
INSERT INTO  Produtos (nome, tipo, quantidade_estoque, preço, data_fabricação, data_validade)
VALUES ('Queijo', 'Perecível', 80, 20.50, '2020-07-12', '2020-07-27')

INSERT INTO  Produtos (nome, tipo, quantidade_estoque, preço, data_fabricação, data_validade)
VALUES ('Alcatra', 'Carne', 300, 42.00, '2020-08-01', '2021-04-01')

INSERT INTO  Produtos (nome, tipo, quantidade_estoque, preço, data_fabricação, data_validade)
VALUES ('Tomate', 'Vegetal', 800, 4.25, '2020-09-14', '2020-10-14')



                --Equipamentos
INSERT INTO  Equipamentos (nome, tipo, função, operando)
VALUES ('Trator', 'Agrícola', 'Ararar o solo', 0)

INSERT INTO  Equipamentos (nome, tipo, função, operando)
VALUES ('Ordenha', 'Mecanico', 'Extrair leite', 1)

INSERT INTO  Equipamentos (nome, tipo, função, operando)
VALUES ('Sensor', 'Camera', 'Imprimir peso do boi', 0)




                --Produção Ortaliças
INSERT INTO  Produção_Ortaliças (nome, data_plantio, data_colheita)
VALUES ('Alface', '2020-09-28', '2020-10-16')

INSERT INTO  Produção_Ortaliças (nome, data_plantio, data_colheita)
VALUES ('Batata', '2020-10-09', '2021-04-02')

INSERT INTO  Produção_Ortaliças (nome, data_plantio, data_colheita)
VALUES ('Uva', '2020-11-06', '2021-01-22')



                --Produção De Carne
INSERT INTO  Produção_Carne (especie, peso, tamanho, Produtividade_quarto)
VALUES ('Bos Tauros', 1300, 1.3, 30000)

INSERT INTO  Produção_Carne (especie, peso, tamanho, Produtividade_quarto)
VALUES ('Gado Jersey', 820, 1.0, 18000)

INSERT INTO  Produção_Carne (especie, peso, tamanho, Produtividade_quarto)
VALUES ('Gelbvieh', 1500, 1.5, 50000)




SELECT * FROM Funcionario

SELECT * FROM Funcionario
WHERE nome = 'Elisa'



SELECT * FROM Produção_Leite

SELECT * FROM Produção_Leite
WHERE Produtividade_quarto >= 1000 



SELECT * FROM Produtos

SELECT * FROM Produtos
WHERE data_validade <= '2020-12-31'



SELECT * FROM Equipamentos

SELECT * FROM Equipamentos
WHERE tipo = 'Mecanico' 



SELECT * FROM Produção_Ortaliças

SELECT * FROM Produção_Ortaliças
WHERE nome = 'Uva' 



SELECT * FROM Produção_Carne

SELECT * FROM Produção_Carne
WHERE Produtividade_quarto = 50000
