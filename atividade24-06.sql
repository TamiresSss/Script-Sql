CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id BIGINT auto_increment,
    nome_personagens VARCHAR(255),
    ataque INT,
    defesa INT,
    nivel INT,
    classe_id BIGINT ,
    PRIMARY KEY(id),
     FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);
	SELECT * FROM tb_personagens;
   
	
	INSERT INTO tb_personagens (nome_personagens, ataque, defesa, nivel, classe_id )VALUE("Cleber", 5, 10, 1, 1  );
    INSERT INTO tb_personagens (nome_personagens, ataque, defesa, nivel, classe_id )VALUE( "Valdivea", 100, 80, 7, 2  );
	INSERT INTO tb_personagens (nome_personagens, ataque, defesa, nivel, classe_id )VALUE("Branquinha", 50, 40, 5, 4  );
    INSERT INTO tb_personagens (nome_personagens, ataque, defesa, nivel, classe_id )VALUE( "Pedro", 20, 10, 3, 5  );
	INSERT INTO tb_personagens (nome_personagens, ataque, defesa, nivel, classe_id )VALUE("Jojão", 200, 100, 10, 1 );
    INSERT INTO tb_personagens (nome_personagens, ataque, defesa, nivel, classe_id )VALUE( "Michele", 500, 300, 10, 1  );
	INSERT INTO tb_personagens (nome_personagens, ataque, defesa, nivel, classe_id )VALUE("Lucas", 2, 1, 1, 5 );
    INSERT INTO tb_personagens (nome_personagens, ataque, defesa, nivel, classe_id )VALUE("Joaquim", 10, 5, 3, 4 );
    
CREATE TABLE tb_classes(
	
	id BIGINT auto_increment,
    nome_classe VARCHAR(255),
    PRIMARY KEY (id)
);
INSERT INTO  tb_classes (nome_classe)VALUE( 'Ladino');
INSERT INTO  tb_classes (nome_classe)VALUES("Guerreiro");
INSERT INTO  tb_classes (nome_classe)VALUES("Cavaleiro");
INSERT INTO  tb_classes (nome_classe)VALUES("Mago");
INSERT INTO  tb_classes (nome_classe)VALUES("Caminhante Branco");

SELECT * FROM tb_classes;

Drop TABLE tb_personagens;

SELECT * FROM tb_personagens WHERE defesa <2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome_personagens LIKE "%C%" ;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 4;