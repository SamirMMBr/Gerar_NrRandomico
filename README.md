# Gerar_NrRandomico
Exemplo para Gerar Vários Números Randômicos, ou seja, aleatórios e armazenar em uma Tabela no SQL Server

T-SQL script

declare @1 decimal(10,4)

select @1 = 12.938

select @1 as Numero_Original

, RIGHT( PARSENAME(@1,2), 1) as Parte_Inteira

, CAST(PARSENAME(@1,1) AS decimal(10,4)) / 10000 as Parte_Decimal

, RIGHT( PARSENAME(@1,2), 1) + CAST(PARSENAME(@1,1) AS decimal(10,4)) / 10000 as Numero_Novo_1_Parte_Inteira_e_Decimal

go
