USE bd_vsconnect;

select min(proposta) from tb_servicos;
select max(proposta) from tb_servicos;
/*unico comando */
select titulo, proposta 
From tb_servicos
where proposta = (select min(proposta) from tb_servicos);


select count(id_servico) from tb_servicos;

select count(id_servico), status_servico From tb_servicos where status_servico = " Em Andamento";

select  count(id_servico), status_servico from tb_servicos group by status_servico;
select * from tb_servicos where tb_servicos.titulo like "Dashboard";
select titulo from tb_servicos  order by titulo asc; 
select titulo from tb_servicos  order by proposta desc; 


select sum(proposta) from tb_servicos;

/*inner join  unificar duas tabelas*/  
select   titulo, tb_techs.nome from tb_tech_servico  inner join tb_techs; 

select * from tb_cotacao 
inner join tb_servico on tb_cotacao.id_servico = tb_servicos.id_servico
inner join tb_usuarios on tb_cotacao.id_dev = tb_usuarios.id_usuario;

select tb_cotacao.valor, tb_servicos.titulo, tb_usuarios.nome
from tb_cotacao
inner join tb_servicos on tb_cotacao.id_servico = tb_servicos.id_servico
inner join tb_usuarios on tb_cotacao.id_dev = tb_usuarios.id_usuario;



