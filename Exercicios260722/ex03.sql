CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco DOUBLE,
quantidade INT,
cor VARCHAR(155),
PRIMARY KEY (id),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
subtipo VARCHAR(155),
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (tipo, subtipo) VALUES ('Cosméticos', 'Maquiagem');
INSERT INTO tb_categorias (tipo, subtipo) VALUES ('Cosméticos', 'Unhas');
INSERT INTO tb_categorias (tipo, subtipo) VALUES ('Cosméticos', 'Corpo');
INSERT INTO tb_categorias (tipo, subtipo) VALUES ('Remédios', 'Antibióticos');
INSERT INTO tb_categorias (tipo, subtipo) VALUES ('Remédios', 'Antigripais');

INSERT INTO tb_produtos (nome, preco, quantidade, cor, categoria_id) VALUES ('Delineador', 13.90, 2, 'Preto', 1);
INSERT INTO tb_produtos (nome, preco, quantidade, cor, categoria_id) VALUES ('Demaquilante', 15.90, 1, 'N/A', 1);
INSERT INTO tb_produtos (nome, preco, quantidade, cor, categoria_id) VALUES ('Paleta de Sombras', 21.90, 3, 'N/A', 1);
INSERT INTO tb_produtos (nome, preco, quantidade, cor, categoria_id) VALUES ('Esmalte Cremoso', 2.99, 4, 'Rosa', 2);
INSERT INTO tb_produtos (nome, preco, quantidade, cor, categoria_id) VALUES ('Hidratante Corporal', 79.90, 1, 'N/A', 3);
INSERT INTO tb_produtos (nome, preco, quantidade, cor, categoria_id) VALUES ('Amoxicilina', 25.99, 2, 'N/A', 4);
INSERT INTO tb_produtos (nome, preco, quantidade, cor, categoria_id) VALUES ('Ibuprofeno', 10.79, 1, 'N/A', 5);
INSERT INTO tb_produtos (nome, preco, quantidade, cor, categoria_id) VALUES ('Benegrip', 19.90, 4, 'N/A', 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 7.0 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE tipo = 'Cosméticos';