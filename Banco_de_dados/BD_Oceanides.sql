create database oceanides;
use oceanides;

create table tb_transportadora(
    id_transportadora int primary key auto_increment,
    nome_transportadora varchar(50),
    razao_social varchar (100),
    CNPJ_tranportadora char(18)
);

create table tb_porto(
    id_porto int primary key auto_increment,
    nome_porto varchar(50),
    sigla_porto char (7),
    pais_porto varchar(50)
);

create table tb_usuario(
    id_usuario int primary key auto_increment,
    nome_usuario varchar(100),
    email_usuario varchar(100),
    senha_usuario varchar(25)
    -- chave estrangeira com transportadora
);

create table tb_cargueiro(
    id_cargueiro int primary key auto_increment,
    nome_cargueiro varchar(50),
    IMO_cargueiro char(7),
    datahora_saida datetime,
    -- dt_entrada datetime
   
    local_origem char(7), -- chaves estrangeiras
    local_destino char(7) -- chaves estrangeiras

    -- chave estrangeira com empresa
);

create table tb_container(
    id_container int primary key auto_increment,
    modelo_container varchar(50),
    codigo_container char(12)

    -- chave estrangeira com cargueiro
);

create table tb_sensor(
    id_sensor int primary key auto_increment,
    modelo_sensor varchar(50),
    validade date,
    instalacao date
    -- chave estrangeira com container
);

create table tb_monitoramento(
	id_monitoramento int primary key auto_increment,
    temperatura_sensor decimal(4,2),
    umidade_sensor decimal(4,2),
    datahora_sensor datetime default current_timestamp
	-- chave estrangeira com usuário 
	-- chave estrangeira com sensor
);

insert into tb_usuario(nome_usuario, email_usuario, senha_usuario) values
    ('Lucas Faria', 'lucas.flima@sptech.school', '21102002'),
    ('Katherinne', 'katherinne.silva@sptech.school', '01234567'),
    ('Jack Sparrow', 'jack.sparrow@gmail.com', '98765432'),
    ('Popeye Espinafre', 'popeye.espinafre@gmail.com', '12345678'),
    ('Wilson Machado', 'wilson.machado@gmail.com','12345678'),
    ('Barba Negra', 'barbanegra@gmail.com', '12345678'),
    ('Luhul Crocodile', 'crocodile.capitao@gmail.com', '12345678'),
    ('Arthur Curry', 'arthurcurry@gmail.com', '12345678'),
    ('Jhon Nemon', 'nemo.captain@gmail.com', '12345678'),
    ('Fernão de Magalhães', 'magalhaes.fernao@gmail.com', '12345678');

insert into tb_transportadora(nome_transportadora, razao_social, CNPJ_tranportadora) values
	('Blitz', 'Blitz Fretes Ltda', '32.675.333/0001-9'),
	('Cap-GP', 'GP Transportes Ltda', '01.678.345/0001-9'),
	('Nocturne', 'Nocturne Transportadoras Ltda', '13.354.231/0001-9'),
	('Irelia', 'Irealia QE', '22.663.001/0001-9'),
	('Akaly', 'Akaly Banceamentos', '02.466.011/0001-9'),
	('Arhi', 'Arhi Charm Transportes', '30.576.101/0001-9'),
	('Neeko', 'Neeko`s Cheese Bread', '70.976.151/0001-9');
    

insert into tb_porto(nome_porto, sigla_porto, pais_porto) values
	('Porto de Santos', 'BRSSZ', 'Brasil'),
    ('Porto de Nova York', 'USNYC', 'Estados Unidos'),
    ('Porto de Le Havre', 'FRLHV','França'),
    ('Porto de Tanger Med', 'MATNG', 'Marrocos'),
    ('Porto de Xangai', 'CNSHA', 'China'),
    ('Porto de Sydney', 'AUSYD', 'Austrália');

insert into tb_cargueiro(nome_cargueiro, IMO_cargueiro, datahora_saida, local_origem, local_destino) values
	('Aliança Manaus', '9156325', '2023-10-25 14:40:25', 'BRSSZ', 'USNYC'),
	('Cap San Lorenzo', '9283221', '2023-10-23 13:20:45', 'FRLHV', 'CNSHA'),
	('Log-In Amazonia', '9700035', '2023-10-26 09:15:58', 'MATNG', 'AUSYD'),
	('Log-In Tempestade', '9785734', '2023-10-25 11:57:35', 'USNYC', 'BRSSZ'),
	('Log-In Resilience', '9700019', '2023-10-19 16:22:19', 'CNSHA', 'MATNG');

insert into tb_container(modelo_container, codigo_container) values
	('20 Standart', 'MSCU 1234567'),
    ('40 Standart', 'JBDS 5432672'),
    ('20 Standart', 'LMFK 1616506'),
    ('40 Standart', 'MHRS 8448132'),
    ('20 Standart', 'JVSC 2198123'),
    ('40 Standart', 'KASS 7445184'),
    ('Freezer Container', 'LFLA 3969285'),
    ('Freezer Container', 'KSWB 5124821'),
    ('40 Standart', 'DSQC 9852384'),
    ('20 Standart', 'VBCD 3547841');
    
insert into tb_sensor(modelo_sensor, validade, instalacao) values
	('DHT11', '2032-02-27', '2022-10-19'),
	('DHT11', '2032-02-27', '2022-10-19'),
	('DHT11', '2032-02-27', '2022-10-19'),
	('DHT11', '2032-02-27', '2022-10-19'),
	('DHT11', '2032-03-25', '2022-09-27'),
	('DHT11', '2032-03-25', '2022-09-27'),
	('DHT11', '2032-03-25', '2022-09-27'),
	('DHT11', '2032-03-25', '2022-09-27'),
	('DHT11', '2034-05-27', '2024-03-03'),
	('DHT11', '2034-05-27', '2024-03-03'),
	('DHT11', '2034-05-27', '2024-03-03'),
	('DHT11', '2034-05-27', '2024-03-03'),
	('AHT10', '2035-05-27', '2025-11-14'),
	('AHT10', '2035-05-27', '2025-11-14'),
	('AHT10', '2035-05-27', '2025-11-14'),
	('AHT10', '2035-05-27', '2025-11-14'),
	('AHT10', '2037-05-27', '2025-11-15'),
	('AHT10', '2037-05-27', '2025-11-15'),
	('AHT10', '2037-05-27', '2025-11-15'),
	('AHT10', '2037-05-27', '2025-11-15'),
	('DHT22', '2049-03-21', '2059-12-06'),
	('DHT22', '2049-03-21', '2059-12-06'),
	('DHT22', '2049-03-21', '2059-12-06'),
	('DHT22', '2049-03-21', '2059-12-06'),
	('DHT22', '2049-03-21', '2059-12-06'),
	('DHT22', '2030-03-21', '2040-11-14'),
	('DHT22', '2030-03-21', '2040-11-14'),
	('DHT22', '2030-03-21', '2040-11-14'),
	('DHT22', '2030-03-21', '2040-11-14'),
	('DHT22', '2030-03-21', '2040-11-14'),
	('H-474AC', '2042-05-27', '2052-08-23'),
	('H-474AC', '2042-05-27', '2052-08-23'),
	('H-474AC', '2042-05-27', '2052-08-23'),
	('H-474AC', '2042-05-27', '2052-08-23'),
	('H-474AC', '2042-05-27', '2052-08-23'),
	('H-474AC', '2042-05-27', '2052-08-23'),
	('H-474AC', '2032-06-22', '2042-08-03'),
	('H-474AC', '2032-06-22', '2042-08-03'),
	('H-474AC', '2032-06-22', '2042-08-03'),
	('H-474AC', '2032-06-22', '2042-08-03'),
	('H-474AC', '2032-06-22', '2042-08-03');

insert into tb_monitoramento(temperatura_sensor, umidade_sensor, datahora_sensor) values
	('24.1', '55.5', '2023-03-10 19:02:30'),
	('24.1', '55.5', '2023-03-10 19:02:30'),
	('24.1', '55.5', '2023-03-10 19:02:30'),
	('24.1', '55.5', '2023-03-10 19:02:30'),
	('24.1', '55.5', '2023-03-10 19:02:30'),
	('31.7', '31.5', '2023-03-28 18:59:53'),
	('31.7', '31.5', '2023-03-28 18:59:53'),
	('31.7', '31.5', '2023-03-28 18:59:53'),
	('31.7', '31.5', '2023-03-28 18:59:53'),
	('27.4', '27.7', '2027-07-27 07:07:27'),
	('27.4', '27.7', '2027-07-27 07:07:27'),
	('27.4', '27.7', '2027-07-27 07:07:27'),
	('27.4', '27.7', '2027-07-27 07:07:27'),
	('27.4', '27.7', '2027-07-27 07:07:27'),
	('33.7', '35.8', '2028-12-25 00:05:25'),
	('33.7', '35.8', '2028-12-25 00:05:25'),
	('33.7', '35.8', '2028-12-25 00:05:25'),
	('33.7', '35.8', '2028-12-25 00:05:25'),
	('33.7', '35.8', '2028-12-25 00:05:25'),
	('20.1', '21.8', '2029-05-27 04:27:42'),
	('20.1', '21.8', '2029-05-27 04:27:42'),
	('20.1', '21.8', '2029-05-27 04:27:42'),
	('20.1', '21.8', '2029-05-27 04:27:42'),
	('20.1', '21.8', '2029-05-27 04:27:42'),
	('39.1', '17.6', '2030-10-12 08:30:01'),
	('39.1', '17.6', '2030-10-12 08:30:01'),
	('39.1', '17.6', '2030-10-12 08:30:01'),
	('39.1', '17.6', '2030-10-12 08:30:01'),
	('27.1', '29.2', '2031-02-09 12:32:27'),
	('27.1', '29.2', '2031-02-09 12:32:27'),
	('27.1', '29.2', '2031-02-09 12:32:27'),
	('27.1', '29.2', '2031-02-09 12:32:27'),
	('27.1', '29.2', '2031-02-09 12:32:27'),
	('27.1', '29.2', '2031-02-09 12:32:27'),
	('22.9', '30.5', '2032-03-03 14:57:33'),
	('22.9', '30.5', '2032-03-03 14:57:33'),
	('22.9', '30.5', '2032-03-03 14:57:33'),
	('22.9', '30.5', '2032-03-03 14:57:33'),
	('22.9', '30.5', '2032-03-03 14:57:33'),
	('34.9', '11.5', '2033-07-08 16:34:23'),
	('34.9', '11.5', '2033-07-08 16:34:23'),
	('34.9', '11.5', '2033-07-08 16:34:23'),
	('34.9', '11.5', '2033-07-08 16:34:23'),
	('34.9', '11.5', '2033-07-08 16:34:23');