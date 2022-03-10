
select * from associados;
insert into associados () values (default, '1111111','eduardo','sakamoto','rua parana','maringa','PR');
insert into associados () values (default, '2222222','elivelton','viveiro','rua sao paulo','sao paulo','SP');
insert into associados () values (default, '3333333','louise','nascimento','rua rio','rio de janeiro','RJ');
insert into associados () values (default, '4444444','ezio','lorenzetti','rua minas','betim','MG');
insert into associados () values (default, '5555555','fabiana','kayanoki','rua amazonas','manaus','AM');

select * from telefones;
insert into telefones () values(default,'99999999',1);
insert into telefones () values(default,'59999998',1);
insert into telefones () values(default,'49999980',2);
insert into telefones () values(default,'39999970',2);
insert into telefones () values(default,'29999500',3);
insert into telefones () values(default,'19999400',3);
insert into telefones () values(default,'80999999',4);
insert into telefones () values(default,'10999999',5);

select * from autores;
insert into autores () values(default,'coelho','paulo');

select * from editoras;
insert into editoras () values(default,'editora1 ltda','123456');
insert into editoras () values(default,'editora2 sa','456789');
insert into editoras () values(default,'editora3 me','987147');


select * from livros;
insert into livros () values(default,'9780006019251','the alchemist','1970-01-01',1,'1975-05-10',1);
insert into livros () values(default,'9780007116041','o demonio e a srta prym','1971-01-01',1,'1976-05-10',2);
insert into livros () values(default,'9780007103461','veronika decide morrer','1982-03-01',1,'1989-05-10',3);
insert into livros () values(default,'9780007116058','brida','1970-01-01',1,'1995-05-10',2);
insert into livros () values(default,'9780007114375','as valquirias','2000-05-01',1,'2001-05-10',1);


select * from exemplares;
insert into exemplares () values(default,1,0);
insert into exemplares () values(default,2,1);
insert into exemplares () values(default,3,1);
insert into exemplares () values(default,4,1);
insert into exemplares () values(default,5,0);


select * from emprestimos;
insert into emprestimos () values(default,1,'2021-09-09','2021-10-09','2021-10-10');
insert into emprestimos () values(default,2,'2021-08-10','2021-09-10','2021-09-15');
insert into emprestimos () values(default,3,'2021-10-11','2021-11-11','2021-12-10');


select * from emprestimo_exemplares;
insert into emprestimo_exemplares () values(default,1,1);
insert into emprestimo_exemplares () values(default,2,2);
insert into emprestimo_exemplares () values(default,3,3);


/*delete*/
/*Deletando um associado, tive que excluir primeiro todas as relações que o associado escolhido havia em outras tabelas*/
select * from emprestimos where codAssoc = 3;
delete from emprestimos where codAssoc = 3;

select * from emprestimo_exemplares where cod_emprestimo = 3;
delete from emprestimo_exemplares where cod_emprestimo = 3;

select * from telefones where codAssoc = 3;
delete from telefones where codAssoc = 3;

delete from associados where id_associados = 3;

/*Tente excluir um livro que possui um exemplar associado a ele. O que 
acontece nesse caso?*/
select * from exemplares;
delete from livros where id_livro = 1;

/*Ao tentar realizar o delete, da um ErrorCode 1451 devido a um constraint. Teria que estar excluindo todas as associações*/

/*update*/
/*Um associado pede que você atualize seu endereço para "Rua das Flores, 860". Atualize o registro número 03*/
/*OBS: Como exclui o Associado 3 estarei dando update no id associado 2*/

select * from associados;

update associados
   set endereco = 'Rua das Flores, 860'
 where id_associados = 2;


