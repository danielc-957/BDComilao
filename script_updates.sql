update telefone 
set telefone.telefone = "4375-2259"
where telefone.idTelefone=1;

update bairro
set bairro.descricao_bairro = "Taguatinga Norte Bonitona"
where bairro.idBairro=3;
update bairro
set bairro.descricao_bairro = "Ceilandia Norte Bonitona"
where bairro.idBairro=4;
update bairro
set bairro.descricao_bairro = "SCLN Bonitona"
where bairro.idBairro=5;

update cargo
set cargo.descricao = "Garcom Editado"
where cargo.idCargo=1;
update cargo
set cargo.descricao = "Gerente Editado"
where cargo.idCargo=2;
update cargo
set cargo.descricao = "Cozinheiro Editado"
where cargo.idCargo=3;
select * from cargo;

update cargo
set cargo.descricao = "Gerente Editado"
where cargo.idCargo=2;

update pessoa
set pessoa.nome = "Barack Capistrano Barreto"
where pessoa.idPessoa=1;
update pessoa
set pessoa.nome = "Teste2 Capistrano Barreto"
where pessoa.idPessoa=2;
update pessoa
set pessoa.nome = "Teste3 Capistrano Barreto"
where pessoa.idPessoa=3;

select * from cliente;

update cliente
set cliente.Pessoa_idPessoa = 1
where cliente.idCliente =1 ;
update cliente
set cliente.Pessoa_idPessoa = 2
where cliente.idCliente =2 ;
update cliente
set cliente.Pessoa_idPessoa = 3
where cliente.idCliente =3 ;

select * from cliente_mesa;

select * from funcionario;

update funcionario
set funcionario.salario = 666
where funcionario.idFuncionario =1 ;

update funcionario
set funcionario.salario = 666
where funcionario.idFuncionario =2 ;

update funcionario
set funcionario.salario = 666
where funcionario.idFuncionario =3 ;


select * from item_menu;

update item_menu
set item_menu.valor = 50
where item_menu.idItem_Menu =1 ;

update item_menu
set item_menu.valor = 50
where item_menu.idItem_Menu =2 ;

update item_menu
set item_menu.valor = 50
where item_menu.idItem_Menu =3 ;

select * from mesa;


update mesa
set mesa.disponibilidade = 0
where mesa.idMesa =1 ;

update mesa
set mesa.disponibilidade = 0
where mesa.idMesa =2 ;

update mesa
set mesa.disponibilidade = 0
where mesa.idMesa =3 ;


select * from pais;

update pais
set pais.nome_pais = "Brasil editado"
where pais.idPais =1 ;

update pais
set pais.nome_pais = "Argentina editado"
where pais.idPais =2 ;

update pais
set pais.nome_pais = "EUA editado"
where pais.idPais =3 ;

select*from pedido;

update pedido
set pedido.observacao = "editado"
where pedido.idPedido =1 ;
update pedido
set pedido.observacao = "editado"
where pedido.idPedido =2 ;
update pedido
set pedido.observacao = "editado"
where pedido.idPedido =3 ;

select * from produto;

update produto
set produto.desc_produto = "coca editado"
where produto.idProduto =1 ;

update produto
set produto.desc_produto = "antartica editado"
where produto.idProduto =2 ;

update produto
set produto.desc_produto = "guarana editado"
where produto.idProduto =3 ;

select*from recibo;

update recibo
set recibo.comentario_cliente = "Comentario editado"
where recibo.idRecibo =1 ;

update recibo
set recibo.comentario_cliente = "Comentario editado"
where recibo.idRecibo =2 ;

update recibo
set recibo.comentario_cliente = "Comentario editado"
where recibo.idRecibo =3 ;

update sexo
set sexo.descricao_sexo = "Masc editado"
where sexo.idSexo =1 ;

update sexo
set sexo.descricao_sexo = "Fem editado"
where sexo.idSexo =2 ;

select * from tipo_endereco;

update tipo_endereco
set tipo_endereco.descricao_tipoEndereco = "residencial editado"
where tipo_endereco.idTipo_Endereco =1 ;

update tipo_endereco
set tipo_endereco.descricao_tipoEndereco = "comercial editado"
where tipo_endereco.idTipo_Endereco =2 ;

select * from tipo_item;

update tipo_item
set tipo_item.descricao_item="Prato principal editado"
where tipo_item.idTipo_item=1;

update tipo_item
set tipo_item.descricao_item="Entrada editado"
where tipo_item.idTipo_item=2;

update tipo_item
set tipo_item.descricao_item="Acompanhamento editado"
where tipo_item.idTipo_item=3;

select * from uf;

update uf
set uf.Descricao_UF="DF Edit"
where uf.idUF=1;

update uf
set uf.Descricao_UF="GO Edit"
where uf.idUF=2;

update uf
set uf.Descricao_UF="SP Edit"
where uf.idUF=3;

select * from endereco;
update endereco
set endereco.cep = "70222654"
where endereco.idEndereco= 1;

update endereco
set endereco.cep = "75884163"
where endereco.idEndereco= 2;

update endereco
set endereco.cep = "72225321"
where endereco.idEndereco= 3;

select * from escolaridade;

update escolaridade
set escolaridade.desc_escolaridade = "Pos graduacao - Completo"
where escolaridade.idEscolaridade= 3;

update escolaridade
set escolaridade.desc_escolaridade = "Pos graduacao - incompleto"
where escolaridade.idEscolaridade= 4;

update escolaridade
set escolaridade.desc_escolaridade = "Pos graduacao - Completo"
where escolaridade.idEscolaridade= 5;

select * from estado_civil;

update estado_civil
set estado_civil.desc_estado_civil = "Juntos"
where estado_civil.idEstado_civil= 3;

update estado_civil
set estado_civil.desc_estado_civil = "Uniao estavel"
where estado_civil.idEstado_civil= 4;

update estado_civil
set estado_civil.desc_estado_civil = "recem casado"
where estado_civil.idEstado_civil= 5;

select * from estoque;

update estoque
set estoque.qtd_estoque = 900
where estoque.idEstoque= 10;

update estoque
set estoque.qtd_estoque = 200
where estoque.idEstoque= 11;

update estoque
set estoque.qtd_estoque = 100
where estoque.idEstoque= 9;

select * from filiacao;

update filiacao
set filiacao.nome_pai = "Ezequiel Cortesao Lagoa"
where filiacao.idFiliacao= 9;

update filiacao
set filiacao.nome_pai = "Mikael Paz Horta"
where filiacao.idFiliacao= 8;

update filiacao
set filiacao.nome_pai = "Albert Barroca Monforte"
where filiacao.idFiliacao= 7;

select * from funcionario;

update funcionario
set funcionario.salario = 3500.5
where funcionario.idFuncionario= 1;

update funcionario
set funcionario.salario = 7500.5
where funcionario.idFuncionario= 2;

update funcionario
set funcionario.salario = 2100.5
where funcionario.idFuncionario= 3;