CREATE DATABASE ecommecer_shopleila;

 USE ecommecer_shopleila;


CREATE TABLE organizacao_ecommecer(
	
	id BIGINT auto_increment,
    
    
    roupas VARCHAR(255),
    caixa DECIMAL(9,2),
    setor VARCHAR(255),
    cadastro INT,
	etiqueta VARCHAR(255),
    
    PRIMARY KEY(id)
);



SELECT * FROM organizacao_ecommecer;


INSERT INTO organizacao_ecommecer (roupas, caixa, setor, cadastro, etiqueta )VALUES("shorts", 10000.90, "Feminino", 03, "dez" );

SELECT * FROM organizacao_ecommecer WHERE caixa >500;
SELECT * FROM organizacao_ecommecer WHERE caixa <500 ;

UPDATE organizacao_ecommecer
SET roupas = "blusas"
WHERE id = 1;




-- query de atualização de um dado na tabela
UPDATE organizacao_ecommecer
SET nome = "Marcelo"
WHERE id = 2;



DELETE FROM  organizacao_ecommecer WHERE id = 2;
