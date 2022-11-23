SELECT  *  
   FROM dbo.ORDEM_SERVICO

select id_os, cliente, servico
   from dbo.ORDEM_SERVICO;

select id_os, os.CLIENTE, os.SERVICO as servicinhos, os.ID_OS, os.NASCIMENTO
   from dbo.ORDEM_SERVICO os;

select *
   from dbo.ORDEM_SERVICO
   where SERVICO ='FREIOS' --AND//OR
   OR SERVICO = 'ALINHAMENTO'

select *
   from dbo.ORDEM_SERVICO OS
   WHERE os.servico = 'freios'
   AND os.data_entrada >= '01/01/2020'

select os.id_os,
       os.cliente,
	  FORMAT(os.DATA_ENTRADA, 'dd, mm, yyyy') as Entrada,
	  FORMAT(os.DATA_saida, 'dd, mm, yyyy') as saida
   from dbo.ORDEM_SERVICO OS
   WHERE os.servico = 'freios'
   AND os.data_entrada >= '01/01/2020'

--like, in, not in

--buscar o que contem freio em qualquer parte 
--%freio - o q contem no início
--freio% o que contem no final

Select *
  from dbo.ORDEM_SERVICO
  where servico like '%FREIO%'


Select *
  from dbo.ORDEM_SERVICO
  where servico IN ('freios', 'alinhamento', 'cambagem'); 

Select *
  from dbo.ORDEM_SERVICO
  where servico not IN ('freios', 'alinhamento', 'cambagem'); 

Select *
  from dbo.ORDEM_SERVICO
  where servico not IN ('freios', 'alinhamento')
  order by servico;

Select *
  from dbo.ORDEM_SERVICO
  where servico not IN ('freios', 'alinhamento')
  order by ID_CIDADE;

--sempre o que manda é o primeiro order by
Select *
  from dbo.ORDEM_SERVICO
  where servico not IN ('freios', 'alinhamento')
  order by servico, data_entrada 

--desc - decrescente  - asc -crescente
Select *
  from dbo.ORDEM_SERVICO
  where servico IN ('freios', 'alinhamento')
  order by servico desc, data_entrada 
  ;

Select *
  from dbo.ORDEM_SERVICO
  where servico in ('freios', 'alinhamento')
  --order by servico desc, data_entrada 
  order by 6, 4
  ;

select sqrt(50) 'Raiz_quadrada';
select power (2,3) 'pot'; 
select 1000 * 1.1;


--funções de agregações
--sum

select sum(f.VALOR_OS) as total
  from dbo.FORMAS_PAGAMENTO f 

select f.FORMA_PAGAMENTO, sum(f.VALOR_OS) as total
  from dbo.FORMAS_PAGAMENTO f 
group by f.FORMA_PAGAMENTO
order by f.FORMA_PAGAMENTO


select f.FORMA_PAGAMENTO, sum(f.VALOR_OS) as total
  from dbo.FORMAS_PAGAMENTO f 
group by f.FORMA_PAGAMENTO
order by 2 desc

--avg = média
select forma_pagamento, avg(valor_os) Média
  from dbo.FORMAS_PAGAMENTO  
  group by forma_pagamento

select forma_pagamento, avg(valor_os) Média
  from dbo.FORMAS_PAGAMENTO  
  group by forma_pagamento
  order by avg(valor_os) desc;

  select forma_pagamento, avg(valor_os) Média
  from dbo.FORMAS_PAGAMENTO  
  group by forma_pagamento
  order by 2 desc;

-- max, min e count

select forma_pagamento, max(valor_os) as máximo
from dbo.FORMAS_PAGAMENTO
  group by forma_pagamento

select forma_pagamento, max(taxa) as máximo
from dbo.FORMAS_PAGAMENTO
  group by forma_pagamento


select forma_pagamento, MIN(valor_os) as MINIMO
from dbo.FORMAS_PAGAMENTO
  group by forma_pagamento

select forma_pagamento, MIN(taxa) as mínimo
from dbo.FORMAS_PAGAMENTO
  group by forma_pagamento

--COUNT

SELECT COUNT(*) TOTAL FROM DBO.FORMAS_PAGAMENTO;

SELECT FORMA_PAGAMENTO, COUNT(1)
FROM DBO.FORMAS_PAGAMENTO
GROUP BY FORMA_PAGAMENTO

--format DE DATAS

SELECT FORMAT(GETDATE(), 'd', 'PT-BR') BRASIL;
SELECT FORMAT(GETDATE(), 'd', 'PT-US') ENGLISH;

SELECT FORMAT(GETDATE(), 'dd/MM/yyyy') DATA;
SELECT FORMAT(GETDATE(), 'dd') dia;
SELECT FORMAT(GETDATE(), 'ddd') 'dia da semena abreviado';
SELECT FORMAT(GETDATE(), 'dddd') 'dia da semena abreviado';

SELECT FORMAT(GETDATE(), 'MM') MÊS;
SELECT FORMAT(GETDATE(), 'MMM') MÊS;
SELECT FORMAT(GETDATE(), 'MMMM') MÊS;

-- UPPER - CONVERTE TEXTO MINÚSCULOS PARA MAIÚSCULOS.

select upper('teste de conversão') as texto;

--LOWER - CONVERTE EM LETRA MINÚSCULA
select lower('TESTE DE CONVERSÃO') AS TEXTO;

--TRIM - RETIRA OS ESPAÇOS 
select TRIM('        TESTE DE CONVERSÃO'       ) AS TEXTO;

-- ltrim e rtrim para retirar a direita e a esquerda em momentos
--diferentes
select TRIM('        TESTE DE CONVERSÃO'       ) AS TEXTO;

-- replace para substituições

select replace('TESTE   DE     CONVERSÃO', '  ', ' ') AS TEXTO;

select replace( 
replace('TESTE   DE     CONVERSÃO', '  ', ' '),
  ' ', 
  ' ')AS TEXTO;

--exemplo

select lower (servico) from ordem_servico;


SELECT * FROM MECANICOS