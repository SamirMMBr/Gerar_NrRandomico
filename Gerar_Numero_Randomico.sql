
SELECT TOP 0 * 
  INTO #Tabela_NrRandomico
FROM (SELECT ID_Hex
		, CHECKSUM(ID_Hex) AS Nr_Randomico
		, CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)) AS Nr_Randomico_Decimal
		, PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)) , 2) AS Parte_Inteiro
		, CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Parte_Decimal

		--, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 1) AS Parte_Inteiro_1dig
		--, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 2) AS Parte_Inteiro_2dig
		--, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 3) AS Parte_Inteiro_3dig
		--, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 4) AS Parte_Inteiro_4dig

		, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 1) + CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Inteiro_1_Decimal
		, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 2) + CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Inteiro_2_Decimal
		, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 3) + CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Inteiro_3_Decimal
		, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 4) + CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Inteiro_4_Decimal
 	FROM ( -- Nr_Randomico baseado em um ID Hexadecimal
	      SELECT NEWID() AS ID_Hex 
		 ) A
) Gerar_NrRandomico
GO

INSERT INTO #Tabela_NrRandomico
SELECT * 
FROM (SELECT ID_Hex
		, CHECKSUM(ID_Hex) AS Nr_Randomico
		, CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)) AS Nr_Randomico_Decimal
		, PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)) , 2) AS Parte_Inteiro
		, CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Parte_Decimal

		--, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 1) AS Parte_Inteiro_1dig
		--, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 2) AS Parte_Inteiro_2dig
		--, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 3) AS Parte_Inteiro_3dig
		--, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 4) AS Parte_Inteiro_4dig

		, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 1) + CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Inteiro_1_Decimal
		, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 2) + CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Inteiro_2_Decimal
		, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 3) + CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Inteiro_3_Decimal
		, RIGHT(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 2), 4) + CAST(PARSENAME(CAST(CHECKSUM(ID_Hex) / 10000.0000 AS decimal(10,4)), 1) / 10000.0000 AS decimal(10,4)) AS Inteiro_4_Decimal
 	FROM ( -- Nr_Randomico baseado em um ID Hexadecimal
	      SELECT NEWID() AS ID_Hex
		 ) A
) Gerar_NrRandomico
GO 5

SELECT * FROM #Tabela_NrRandomico
GO

DROP TABLE #Tabela_NrRandomico
GO


