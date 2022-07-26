CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
jogador VARCHAR(255),
nome VARCHAR(255),
idade int,
raca VARCHAR(255),
alinhamento VARCHAR(255),
ataque int,
defesa int,
PRIMARY KEY (id),
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT,
classe 	VARCHAR(255),
armadura VARCHAR(255),
arma VARCHAR(255),
resistencia VARCHAR(255),
habilidade VARCHAR(255),
PRIMARY KEY (id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes (classe, armadura, arma, resistencia, habilidade) VALUES ('Bárbaro', 'Média', 'Simples', 'Força', 'Sobrevivência');
INSERT INTO tb_classes (classe, armadura, arma, resistencia, habilidade) VALUES ('Bardo', 'Leve', 'Arco', 'Destreza', 'Performance');
INSERT INTO tb_classes (classe, armadura, arma, resistencia, habilidade) VALUES ('Druida', 'Média', 'Cimitarra', 'Inteligência', 'Natureza');
INSERT INTO tb_classes (classe, armadura, arma, resistencia, habilidade) VALUES ('Ladino', 'Leve', 'Adagas', 'Destreza', 'Atletismo');
INSERT INTO tb_classes (classe, armadura, arma, resistencia, habilidade) VALUES ('Paladino', 'Pesada', 'Marcial', 'Sabedoria', 'Religião');

INSERT INTO tb_personagens (jogador, nome, idade, raca, alinhamento, ataque, defesa, classe_id) VALUES ('Amanda', 'Vistra', 24, 'Anão', 'Neutro e Bom', 2000, 2000, 3);
INSERT INTO tb_personagens (jogador, nome, idade, raca, alinhamento, ataque, defesa, classe_id) VALUES ('Renato', 'Tas', 20, 'Humano', 'Caótico e Bom', 1000, 2000, 2);
INSERT INTO tb_personagens (jogador, nome, idade, raca, alinhamento, ataque, defesa, classe_id) VALUES ('Vinicius', 'Rivotril', 30, 'Elfo', 'Caótico e Neutro', 4000, 2000, 4);
INSERT INTO tb_personagens (jogador, nome, idade, raca, alinhamento, ataque, defesa, classe_id) VALUES ('Elise', 'Elyria', 120, 'Elfo', 'Neutro e Bom', 4000, 2000, 3);
INSERT INTO tb_personagens (jogador, nome, idade, raca, alinhamento, ataque, defesa, classe_id) VALUES ('Nathan', 'Uther', 32, 'Humano', 'Ordeiro e Bom', 2000, 4000, 5);
INSERT INTO tb_personagens (jogador, nome, idade, raca, alinhamento, ataque, defesa, classe_id) VALUES ('Daniel', 'Rengar', 36, 'Orc', 'Caótico e Neutro', 2000, 4000, 1);
INSERT INTO tb_personagens (jogador, nome, idade, raca, alinhamento, ataque, defesa, classe_id) VALUES ('Ariel', 'Malganis', 27, 'Humano', 'Ordeiro e Mau', 4000, 1000, 2);
INSERT INTO tb_personagens (jogador, nome, idade, raca, alinhamento, ataque, defesa, classe_id) VALUES ('Bruno', 'Cho', 27, 'Anão', 'Neutro e Bom', 2000, 2000, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE classe = 'Druida';




