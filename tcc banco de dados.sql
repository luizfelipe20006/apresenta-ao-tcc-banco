create database todas_as_receitas;
use todas_as_receitas;
create table itens(
id int primary key auto_increment,
nome_itens VARCHAR(255) NOT NULL UNIQUE,
unidade_medida VARCHAR(50)
);

CREATE TABLE receitas (
id INT PRIMARY KEY AUTO_INCREMENT,
nome_receita VARCHAR(255),
tempo_preparo INT,
instrucoes TEXT
);

CREATE TABLE itens_receitas (
id_receita INT,
id_item INT,
quantidade DECIMAL(10, 2)
    );
    
    alter table itens_receitas add constraint id_item FOREIGN KEY (id_item) REFERENCES itens(id);
    alter table itens_receitas add constraint id_receita FOREIGN KEY (id_receita) REFERENCES receitas(id);

insert into itens (nome_itens, unidade_medida) values(),
("cenoura","ovos","açucar","farinha de trigo","óleo","sopa de fermento em pó","frango","cebola","alho","creme de leite","molho de tomate","sal","pimente","grão de bico","pepino","cebola roxa","tomate cerela","azeite de oliva","limão");