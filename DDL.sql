USE bd_vsconnect;

/*UUID CONVERTENDO ID PARA BINARIO - DML*/
INSERT INTO tb_techs VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_techs VALUES (UUID_TO_BIN(UUID()), "css");
INSERT INTO tb_techs VALUES (UUID_TO_BIN(UUID()), "java");




/* CONVERTENDO BIN PARA UUID*/

SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;

INSERT INTO tb_usuarios VALUES (
	(UUID_TO_BIN(UUID())), 
    "Odirlei",
    "odirlei@email.com",
    "senai",
    "Rua Niterói, 180",
    "12345-678",
    0
);

INSERT INTO tb_usuarios VALUES (
	(UUID_TO_BIN(UUID())), 
    "Jessica",
    "jessica@email.com",
    "senai",
    "Rua Niterói, 180",
    "12345-678",
    0
);

INSERT INTO tb_usuarios VALUES (
	(UUID_TO_BIN(UUID())), 
    "Alexia",
    "alexia@email.com",
    "senai",
    "Rua Niterói, 180",
    "12345-678",
    0
);

SELECT * FROM tb_usuarios;
SELECT BIN_TO_UUID(id_usuario), nome FROM tb_usuarios;
SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;

DELETE FROM tb_usuarios WHERE id_usuario = UUID_TO_BIN("13b1b19b-6ee0-11ee-9cdc-b445067b827e");

UPDATE tb_usuarios
SET tipo_usuario = 1
WHERE id_usuario = UUID_TO_BIN("9bb53b8b-6f97-11ee-8ebb-b445067b8005");

INSERT INTO tb_dev_tech VALUES (UUID_TO_BIN("9bb53b8b-6f97-11ee-8ebb-b445067b8005"), UUID_TO_BIN("9bb53b8b-6f97-11ee-8ebb-b445067b8005e"));
INSERT INTO tb_dev_tech VALUES (UUID_TO_BIN("9bb53b8b-6f97-11ee-8ebb-b445067b8005"), UUID_TO_BIN("9bb53b8b-6f97-11ee-8ebb-b445067b8005"));

INSERT INTO tb_servicos VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("9bb53b8b-6f97-11ee-8ebb-b445067b8005"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("9bb53b8b-6f97-11ee-8ebb-b445067b8005"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("9bb53b8b-6f97-11ee-8ebb-b445067b8005"), NULL);



select bin_to_uuid(id_servico), titulo from tb_servicos;
select *from tb_cotacao;

insert into tb_cotacao values(
uuid_to_bin(uuid()),
10000.00,
uuid_to_bin("9d119188-6f97-11ee-8ebb-b445067b8005"), /*id do dev*/
uuid_to_bin("a4ba61a1-6f9a-11ee-8ebb-b445067b8005") /*id do servico*/
);

insert into tb_tech_servico values (uuid_to_bin("9726520e-6f97-11ee-8ebb-b445067b8005"),uuid_to_bin("a4ba60b2-6f9a-11ee-8ebb-b445067b8005"));
insert into tb_tech_servico values(uuid_to_bin("a80d1293-6f9c-11ee-8ebb-b445067b8005"),uuid_to_bin("a4ba60b2-6f9a-11ee-8ebb-b445067b8005"));

select * from tb_tech_servico;

