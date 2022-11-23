--INSERT 

SELECT * FROM DBO.MECANICOS;

INSERT INTO DBO.MECANICOS
(ID_MECANICO, NOME_MECANICO)
VALUES
(6, 'ALESSANDRO TROVATO');

INSERT INTO DBO.MECANICOS
(ID_MECANICO, NOME_MECANICO)
VALUES
(6, 'ALESSANDRO TROVATO', 7);

--DELETE Podemos utilizar outras informa��es
--para apagar 

Select * from dbo.mecanicos; 

DELETE FROM DBO.MECANICOS
WHERE id_mecanico =6;

DELETE FROM DBO.MECANICOS
WHERE id_mecanico like '%SAMPAIO%';

-- UPDATE -atualizar os dados da tabela

Select * from dbo.Ordem_servico;
where id_mecanico = 2; --2 -->1

UPDATE dbo.Ordem_servico
set ID_mecanico = 1
where id_mecanico = 2;

select * from

--JOIN /JOINS - processo para trazer informa��es complementarem para uma outra tabela

select *from dbo.ORDEM_SERVICO
--n�O DA PRA SABER QUEM � O MEC�NICO E NEM QUAIS CIDADE

--INNER JOIN 

select os.ID_OS, os.CLIENTE, lo.NM_MUNICIPIO, lo.NM_UF
             from dbo.ORDEM_SERVICO os
            inner join dbo.LOCALIDADES lo on (os.ID_CIDADE=
			lo.ID_CIDADE)


--LEFT JOIN 
--RIGHT JOIN 
--USAMOS ACIMA PARA ANALISAR TUDO Q EU QUERO DE UMA TABELA 
--AINDA QUE N�O TENHA NA OUTRA


select os.ID_OS, os.CLIENTE, lo.NM_MUNICIPIO, lo.NM_UF
             from dbo.ORDEM_SERVICO os
            RIGHT join dbo.LOCALIDADES lo on (os.ID_CIDADE=
			lo.ID_CIDADE)
WHERE OS. ID_OS IS NULL

