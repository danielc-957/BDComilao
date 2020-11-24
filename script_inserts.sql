
use comilao;

describe pais;

insert into pais values(1,'55','Brasil');

insert into pais values(2,'54','Argentina'),(3,'01','Estados Unidos'), (4,'44','Inglaterra'),(5,'52','Mexico');

select * from pais;

select * from uf;

insert into uf values(1,'DF','61',1);

insert into uf values(2,'GO','62',1),(3,'SP','18',1),(4,'RJ','24',1),(5,'RS','55',1);

select u.idUF,u.Descricao_UF,u.DDD,p.nome_pais from uf as u, pais as p where p.idPais = 1;

describe cidade;

insert into cidade values(1,'Ceilandia',1),(2,'Aguas Claras',1),(3,'Taguatinga',1),(4,'Sao Sebastiao',1),(5,'Asa Norte',1);

select * from uf;

select * from cidade;

select c.idCidade,c.descricao_cidade,u.Descricao_UF,p.nome_pais from cidade as c,uf as u, pais as p where u.idUF = 1 and p.idPais = 1;

select * from bairro;

insert into bairro values(1,'Ceilandia Sul',1),(2,'Areal',2),(3,'Taguatinga Norte',3),(4,'Ceilandia Norte',1),(5,'SCLN',5);

select distinct b.idBairro,b.descricao_bairro,c.descricao_cidade from cidade as c,bairro as b, uf as u where c.idCidade = b.Cidade_idCidade;

select * from bairro;

select * from tipo_endereco;
insert into tipo_endereco values(1, 'Endereco residencial'),(2, 'Endereco comercial');

select * from tipo_endereco;

describe endereco;

insert into endereco values(1,'71000242','QNN 32 Conjunto H', 'Lote','07',1,1);

insert into endereco values(2,'78000222','QNM 23 Conjunto B', 'Lote','15',3,1)
,(3,'73400123','Quadra 23 Rua 32 Bloco F', 'Condominio','10',2,1)
,(4,'70123444','Quadra 89 rua 65', 'Lote','13',4,2)
,(5,'72888111','QNM 73 Conjunto J', 'Lote','26',1,1);

insert into endereco values(6,'75000234','QNP 09 Conjunto B', 'Lote','22',4,1)
,(7,'72111000','Quadra 42 Rua 10 Bloco B', 'Condominio','90',2,1)
,(8,'73444982','Quadra 99 rua 03', 'Lote','10',2,2)
,(9,'71000254','QNN 03 Conjunto H', 'Lote','01',4,1)
,(10,'70176291','Quadra 66 Conjunto A', 'Lote','11',3,1);

select * from endereco;
describe endereco;

update endereco set numero = '07' where idEndereco = 1;

select * from endereco;

insert into sexo values (1,'Masculino'),(2,'Feminino');

select * from sexo;

insert into estado_civil values (1,'Solteiro'),(2,'Casado'),(3,'Separado'),(4,'Divorciado'),(5,'Viuvo');

select * from estado_civil;

insert into escolaridade values (1,'Fundamental - Incompleto'),(2,'Fundamental Completo'),(3,'Medio - Incompleto'),(4,'MEdio - Completo'),(5,'Superior - Incompleto'),(6,'Superior - Completo');

select * from escolaridade;

insert into filiacao values (1,'Maria de Souza Santos','Joao Mario Silva Santos'),(2,'Bianca Bouças Holanda ','Artur Lobo Dias')
,(3,'Naima Fernandes Franca','Vladimir Navais Franca')
,(4,'Klara Vieira Miguel','Gil Freire Monsato')
,(5,'Dora Cartaxo Tavora','Nikolas Pimenta Granjeiro');

insert into filiacao values (6,'Ariana Bonilha Pegado','Luke Duarte Viveiros'),(7,'Brianna Ximenes Castanheira','Rogério Feira Oleiro')
,(8,'Viviana Lamenha Espinosa','Jesus Teodoro Assis')
,(9,'Alda Mantas Morão','Evandro Gois Brito')
,(10,'Jade Pinho Leite','Eddy Vieira Mendes');
select * from filiacao;

describe cargo;

insert into cargo values (1,'Garcom'),(2,'Gerente'),(3,'Cozinheiro');

select * from cargo;

select * from escolaridade;

describe pessoa;

insert into pessoa values (1,'Malak Capistrano Barreto','53841284130','1249632','malak@email.com',1500.50,1,2,1,4,1,1)
,(2,'Rita Valente Campos','44785698712','1254896','ritaV@email.com',3000.50,1,2,2,3,2,2)
,(3,'Yara Monforte Urias','11235489652','1147895','mofotes@email.com',7000.0,1,2,1,2,3,3)
,(4,'Tainara Carmona Carvalheiro','11235629871','5562317','cavalheiro@email.com',10500.50,1,2,1,6,4,4)
,(5,'Virgílio Padilha Araújo','10232145789','1149853','padilha@email.com',2500.00,1,1,5,2,5,5)
,(6,'Isabela Rijo Barroqueiro','15486523478','1420398','isabelaRijo@email.com',9000.0,1,2,4,4,6,6)
,(7,'Henzo Barrocas Freitas','10235496785','1116574','henzo@email.com',1500.50,1,1,3,1,7,7)
,(8,'Lázaro Angelim Andrade','12354036875','5568952','langelimandrade@email.com',3700.50,1,1,2,2,8,8)
,(9,'Mellyssa Dinis Pastana','55569842103','4423986','mellyssa@email.com',25000.00,1,2,1,4,9,9)
,(10,'Tito Raminhos Matosinhos','12987562358','1254896','matosinhos@email.com',16000.50,1,1,3,4,10,10);

select * from pessoa;

describe telefone;

insert into telefone values (1,'3375-2259','61',1),(2,'3232-2218','61',4),(3,'1145-3258','62',3),(4,'4265-4475','62',9),(5,'1136-8874','62',2)
,(6,'5574-9632','41',7),(7,'4821-6298','18',6),(8,'1147-2631','25',4),(9,'4236-5210','17',8),(10,'4246-6314','23',5);

select * from cargo;

describe funcionario;

insert into funcionario values(1,3500.0,150.50,1,1),(2,3500.0,0,2,1),(3,3500.0,150.50,3,1),(4,4500.50,300.0,4,2),(5,4500.50,300.0,5,2);

select * from funcionario;

describe cliente;

select * from endereco;

insert into cliente values(1,6,2),(2,7,1),(3,8,3),(4,9,3),(5,10,2);

select * from cliente;

alter table recibo modify data_hora_recibo DATETIME;

describe recibo;
delete from recibo where idRecibo = 1;

describe logotipo_restaurante;

insert into logotipo_restaurante values(1,'logotipo_comilao.jpg');

select * from logotipo_restaurante;


insert into recibo values(1,'Bom dinamismo entre os garcons','20-10-01 12:34:09',1,1);

insert into recibo values(2,'Mau atendimento','20-11-22 13:30:09',2,1)
,(3,'Demora na entrega do pedido','20-03-11 12:00:00',3,1)
,(4,'Valor acima do padrao','20-07-10 11:59:00',4,1)
,(5,'Boa higiene do local','20-10-25 12:34:09',5,1);

select * from recibo;

describe recibo;

#---------------------------------------------------------------------------------------
describe pedido;

insert into pedido values(1,'Sem observacoes',350.59,0,'20-10-01 12:00:09',1)
,(2,'Batata frita no lugar do pure de batatas',100.50,0,'20-11-22 13:00:09',2)
,(3,'Sem Observacoes',55.59,0,'20-03-11 11:20:00',3)
,(4,'Sem observacoes',400.90,0,'20-07-10 11:20:00',4)
,(5,'Copos sem gelo',200.15,0,'20-10-25 12:00:09',5);

select * from pedido;

describe tipo_item;

insert into tipo_item values (1,'Prato principal'),(2,'Prato de entrada'),(3,'Acompanhamento')
,(4,'Bebida'),(5,'Refigerantes'),(6,'Sobremesa');

select * from tipo_item;

describe produto;

insert into produto values (1,'Coca cola'),(2,'Antartica'),(3,'Guarana'),(4,'Creme de leite')
,(5,'Leite '),(6,'Frango'),(7,'Peixe'),(8,'Mandioca'),(9,'Carne'),(10,'Massas')
,(11,'Batata'),(12,'Oleo'),(13,'Cebola'),(14,'Queijo');

insert into produto values(15,'Arroz');

describe item_menu;

describe item_menu_produto;

select * from item_menu_produto;

ALTER TABLE item_menu_produto DROP PRIMARY KEY;

insert into item_menu_produto values (1,6),(1,15),(2,11),(2,14),(2,12),(3,6),(4,9),(4,8),(5,1),(5,3)
,(6,15),(6,7),(7,15),(7,7),(8,4),(8,9),(8,5),(8,11),(9,13),(9,12),(1,15),(10,15),(10,4),(10,5),(10,10);

select * from tipo_item;

insert into item_menu values (1,'Parmegiana',59.60,10,1);

insert into item_menu values (2,'Pocao de batata frita',25.50,10,2),(3,'Frango a passarinho',20.99,8,2),(4,'Carne de sol com mandioca',35.99,9,1)
,(5,'Refigerante 2 Litros',6.99,10,5),(6,'File de Tilapia',30.99,7,1),(7,'Tucunare na brasa',70.99,9,1),(8,'Escondidinho de carne',25.99,10,3),(9,'Aneis de cebola fritos',25.99,8,2)
,(10,'Lasanha de frango',39.99,10,1);

select * from item_menu;

ALTER TABLE item_menu_pedido DROP PRIMARY KEY;

describe item_menu_pedido;

select * from pedido;

select * from item_menu_pedido;

insert into item_menu_pedido values (7,1,3,210),(1,1,1,59.60),(10,1,2,79.98)
,(1,2,1,59.60),(10,2,1,39.99)
,(2,3,2,51)
,(7,4,5,354.95),(4,4,1,35.99),(5,4,1,5.99)
,(10,5,4,159.96),(4,5,1,35.99);

select * from pedido;

select * from item_menu_cliente;

select * from item_menu_pedido;

describe item_menu_cliente;

select * from pedido;

insert into item_menu_cliente values (1,7,1,15,230),(2,7,2,15,200),(3,2,3,10,100),(4,7,4,18,300),(5,10,5,35,150);

select * from produto;

select * from estoque;

describe estoque;

insert into estoque values (1,700,1),(2,500,2),(3,900,3),(4,400,4)
,(5,100,5),(6,40,6),(7,50,7),(8,250,8),(9,200,9),(10,300,10)
,(11,750,11),(12,130,12),(13,300,13),(14,1200,14),(15,5000,15);

select * from estoque;

describe item_menu;

describe mesa;

select * from funcionario;

alter table mesa drop column Garcom_idGarcom;

insert into mesa values (1,3,1,1,1),(2,7,1,2,2),(3,10,1,3,3),(4,4,1,4,3),(5,6,1,5,1);

select * from cliente;

select * from item_menu_produto;

describe cliente_mesa;

insert into cliente_mesa values(1,1),(2,2),(3,3),(4,4),(5,5);

select * from item_menu_produto;










