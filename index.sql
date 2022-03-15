-- Exercício (1) Crie um banco de dados chamado sistema_estoque e crie as seguintes tabelas:

-- Tabela Usuario:
-- ID(Auto incremento e chave primária);
-- Nome(Tipo de texto limitado a 100 caracteres);
-- Idade(Tipo número que não aceita valores "quebrados");
-- Email(Tipo texto limitado a 255 caracteres);
-- Senha(Tipo texto limitado a 15 caracteres);
-- Acesso Permitido(Tipo verdadeiro ou falso para controle de acesso ao sistema);


-- Tabela de Produtos:
-- ID(Auto incremento e chave primária);
-- Categoria(Tipo texto limitado a 50 caracteres);
-- Descricao(Tipo texto limitado a 255 caracteres);
-- Quantidade(Tipo número que não aceita valores "quebrados");
-- Preco(Tipo número que aceita valores "quebrados");
-- Imagem Produto(Tipo texto ilimitado)

create database sitema_estoque;

create table usuario(
	id serial primary key,
	nome varchar(100),
	idade integer,
	email varchar(255),
	senha varchar(15),
	acesso_permitido bool
);

create table produtos(
	id serial primary key,
	categoria varchar(50),
	descricao varchar(255),
	quantidade integer,
	preco decimal,
	imagem_produto text
);