select * from endereco;

delete from endereco where idEndereco = 10;
delete from endereco where Bairro_idBairro = 4;
delete from endereco where Bairro_idBairro = 2;

select * from pessoa;
delete from pessoa where Endereco_idEndereco !=1 and Endereco_idEndereco !=2 and Endereco_idEndereco !=5;
delete from pessoa where idPessoa = 1;


select * from estoque;
delete from estoque where idEstoque = 1;
delete from produto where idProduto = 2;

select * from produto;
delete from produto where idProduto = 15;
delete from produto where idProduto = 14;


delete from sexo where idSexo = 1;
delete from sexo where idSexo = 2;

select * from uf;

select * from cliente;
delete from cliente where idCliente = 1;
delete from cliente where idCliente = 2;

select * from item_menu_pedido;
delete from item_menu_pedido where Item_Menu_idItem_Menu = 1;
delete from item_menu_pedido where Item_Menu_idItem_Menu = 2;





