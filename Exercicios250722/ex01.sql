CREATE DATABASE DB_RH;

USE DB_RH;

CREATE TABLE tb_colaboradores (
id bigint auto_increment,
nome varchar(255),
idade int,
departamento varchar(255),
cargo varchar(255),
salario double,
primary key (id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome, idade, departamento, cargo, salario) VALUES ('Amanda', 29, 'TI', 'Desenvolvedor', 5000.00);
INSERT INTO tb_colaboradores (nome, idade, departamento, cargo, salario) VALUES ('Lucas', 21, 'TI', 'Desenvolvedor', 5000.00);
INSERT INTO tb_colaboradores (nome, idade, departamento, cargo, salario) VALUES ('Renato', 28, 'TI', 'DBA', 7500.00);
INSERT INTO tb_colaboradores (nome, idade, departamento, cargo, salario) VALUES ('Lúcia', 19, 'RH', 'Estagiário', 1800.00);
INSERT INTO tb_colaboradores (nome, idade, departamento, cargo, salario) VALUES ('Rodrigo', 20, 'Financeiro', 'Estagiário', 1800.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET nome = 'Bárbara' WHERE id = 4;