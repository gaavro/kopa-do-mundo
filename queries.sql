CREATE TABLE IF NOT EXISTS kopas (
	id BIGSERIAL CONSTRAINT kopa_pk PRIMARY key,
	selecao VARCHAR(128) UNIQUE,
	qnt_copas INTEGER
);

INSERT INTO kopas
    (selecao,qnt_copas)
VALUES
('Brasil',5),
('Alemanha',5),
('Itália',4),
('Argentina',2),
('França',2),
('Uruguai',2),
('Inglaterra',1),
('Espanha',1),
('Japão',1);

SELECT selecao, qnt_copas FROM kopas;
UPDATE kopas SET qnt_copas = 4 WHERE id = 2;
DELETE FROM kopas WHERE id = 9 RETURNING *;
SELECT * FROM kopas;

UPDATE kopas SET pts = 237 WHERE selecao = 'Brasil';
UPDATE kopas SET pts = 221 WHERE selecao = 'Alemanha';
UPDATE kopas SET pts = 156 WHERE selecao = 'Italia';
UPDATE kopas SET pts = 144 WHERE selecao = 'Argentina';
UPDATE kopas SET pts = 115 WHERE selecao = 'França';
UPDATE kopas SET pts = 84 WHERE selecao = 'Uruguai';
UPDATE kopas SET pts = 108 WHERE selecao = 'Inglaterra';
UPDATE kopas SET pts = 105 WHERE selecao = 'Espanha';

SELECT * FROM kopas;

                
-- TABELA ESTÁDIOS

CREATE TABLE IF NOT EXISTS estadios (
	id SERIAL ,
	edicao VARCHAR,
	ano VARCHAR(4),
	estadio VARCHAR, 
	local VARCHAR(128),
	publico_pagante INTEGER	
);

insert INTO estadios(
edicao,ano,estadio,local,publico_pagante
)
values
('I','1930','Estádio Centenário','Montevidéu',68346),
('II','1934','Estádio do Partido Nacional Fascista','Roma',55000),
('III','1938','Estádio Olímpico Yves-du-Manoir','Colombes',45000),
('IV','1950','Estádio do Maracanã','Rio de Janeiro',173850),
('V','1954','Estádio Wankdorf','Berna',62500),
('VI','1958','Estádio Råsunda','Solna',49737),
('VII','1962','Estádio Nacional do Chile','Santiago',68679),
('VIII','1966','Estádio de Wembley','Londres',96924),
('IX','1970','Estádio Azteca','Cidade do México',107412),
('X','1974','Estádio Olímpico de Munique','Munique',78200),
('XI','1978','Estádio Monumental de Núñez','Buenos Aires',71483),
('XII','1982','Estádio Santiago Bernabéu','Madrid',90000),
('XIII','1986','Estádio Azteca','Cidade do México',114600),
('XIV','1990','Estádio Olímpico de Roma','Roma',73603),
('XV','1994','Rose Bowl','Pasadena',94194),
('XVI','1998','Stade de France','Saint-Denis',80000),
('XVII','2002','Estádio Internacional de Yokohama','Yokohama',69029),
('XVIII','2006','Estádio Olímpico de Berlim','Berlim',69000),
('XIX','2010','Soccer City','Joanesburgo',84490),
('XX','2014','Estádio do Maracanã','Rio de Janeiro',74738),
('XXI','2018','Estádio Lujniki','Moscou',78011);


SELECT * FROM estadios;
SELECT * FROM estadios WHERE publico_pagante > 100.000;
SELECT * FROM estadios WHERE publico_pagante > 50000 and publico_pagante < 100000;
SELECT * FROM estadios where estadio like '%y'

alter table estadios alter column ano type INT using ano::integer;
SELECT * FROM estadios;

