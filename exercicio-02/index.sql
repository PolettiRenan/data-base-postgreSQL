-- Crie um banco de dados chamado sistema_escola e crie a tabela abaixo:

-- Tabela Alunos:

-- ID(Auto incremento e chave primária);
-- Nome(Tipo de texto limitado a 100 caracteres);
-- Email(Tipo texto limitado a 255 caracteres);
-- Endereco(Tipo texto limitado a 255 caracteres);
-- Mensalidade(Tipo número que aceita números "quebrados");
-- Maior Idade(Tipo verdadeiro ou falso para saber se o aluno é maior de idade);
-- Crie queries utilizando select que retorne os seguintes dados:

-- Alunos maior de idade;
-- Alunos menor de idade;
-- Alunos com mensalidade maior que 300 reais;
-- Alunos com mensalidade menor que 300 reais;
-- Alunos com limite de listagem em 5;
-- Alunos com alias para cada coluna, trazendo com os nomes em inglês.

create table alunos(
	id serial primary key,
	nome varchar(100),
	email varchar(255),
	endereco varchar(255),
	mensalidade decimal,
	maior_idade bool
);

select * from alunos where maior_idade = true;

select * from alunos where maior_idade = false;

select * from alunos where mensalidade > 300;

select * from alunos where mensalidade < 300;

select * from alunos limit 5;

select nome as name, email, endereco as address, mensalidade as montlhy_payment, maior_idade as of_age from alunos;