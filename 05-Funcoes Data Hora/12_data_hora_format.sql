--FORMATANDO DATAS
	select GETDATE()

	Select convert(varchar(10),getdate(),120)

	Select convert(varchar(10),getdate(),103)

	Select convert(varchar(5),getdate(),103)

	Select convert(varchar(10),getdate(),108)

	Select convert(varchar(5),getdate(),108)

	SELECT CONVERT(VARCHAR(20),GETDATE(), 100)

	SELECT CONVERT(VARCHAR(8),GETDATE(), 1)
	
	select convert(varchar(10),getdate(),103), 
	       substring(convert(varchar(10),getdate(),103),4,2)

--Extensão
SELECT CAST(DAY(GETDATE()) AS VARCHAR(2)) + ' de ' +
       DATENAME(MM, GETDATE()) +' de '+
	   CAST(YEAR(GETDATE()) AS VARCHAR(4))
	   AS [Dia, Mes e ano]

--EXEMPLO EM TABELA
USE CursoSQLServerCrm
	SELECT a.nascimento,
		   CONVERT(varchar(10),a.nascimento,120)padrao120,
	       CONVERT(varchar(10),a.nascimento,103)padrao103,
		   CONVERT(VARCHAR(20),a.nascimento,100)padrao100,
		   CONVERT(VARCHAR(11),a.nascimento,100)padrao100,
		   CONVERT(VARCHAR(8),a.nascimento,1)  padrao1
		   FROM cliente a

