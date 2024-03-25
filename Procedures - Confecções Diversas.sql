 delimiter //
 create procedure SP_listaprodutos ()
 
 begin
 
 select * from products;
 
 end;
 
//


call SP_listaprodutos ();

delimiter //

create procedure buscando_filtro(in id varchar (15))
begin
if  not isnull(id) then
select * from products where productCode = id;
	else 
select * from products;

end if;

end;
//

call sp_listaprodutos;

call buscando_filtro ('S10_1949');


delimiter //




create procedure fazerinsertPagamento (in customernumber int, in checknumber varchar (50), in amount decimal)
 insert into payments (customerNumber, checkNumber, paymentDate, amount)
 values (customernumber, checknumber, NOW(), amount);
 
 
//

select *from payments;

call fazerinsertPagamento(121,'UH899578',1546.20);

















delimiter //
/*STORAGE PROCEDURE LACO DE REPETICAO - TESTANDO ITERACOES*/

create procedure teste_de_laco2 ()
begin
	declare contador int;
	set contador = 1;
while (contador <= 10) do
	begin
 
	select 'contador = ' + convert(contador, char(10));
 
	set contador = contador + 1;
 
	end;
 end while;
 end;
 /* PARA NÃO ABRIR VÁRIAS JANELAS DA PARA CORRER O SELECT PARA BAIXO DO LACO E CRIAR UMA VARIAVEL STR*/
 //


call teste_de_laco2