create database db_acai

go
-- Tabela de Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY IDENTITY(1,1),
    NomeProduto NVARCHAR(50)
);

-- Tabela de Lojas
CREATE TABLE Lojas (
    LojaID INT PRIMARY KEY IDENTITY(1,1),
    NomeLoja NVARCHAR(50)
);

-- Tabela de Vendas
CREATE TABLE Vendas (
    VendaID INT PRIMARY KEY IDENTITY(1,1),
    ProdutoID INT FOREIGN KEY REFERENCES Produtos(ProdutoID),
    LojaID INT FOREIGN KEY REFERENCES Lojas(LojaID),
    DataVenda DATE,
    Quantidade INT
);

-------------

-- Inserção de Produtos
INSERT INTO Produtos (NomeProduto) VALUES ('Açaí 200');
INSERT INTO Produtos (NomeProduto) VALUES ('Açaí 300');
INSERT INTO Produtos (NomeProduto) VALUES ('Açaí 500');

-- Inserção de Lojas
INSERT INTO Lojas (NomeLoja) VALUES ('Loja A');
INSERT INTO Lojas (NomeLoja) VALUES ('Loja B');
INSERT INTO Lojas (NomeLoja) VALUES ('Loja C');
----------------- gerando os dados-------------------

-- Inserção das Vendas
DECLARE @DataAtual DATE = '2024-10-26';  -- Data final
DECLARE @DataInicio DATE = DATEADD(MONTH, -12, @DataAtual);  -- 12 meses antes
DECLARE @LojaID INT;
DECLARE @ProdutoID INT;
DECLARE @DataVenda DATE;
DECLARE @Quantidade INT;

-- Loop pelas lojas
SET @LojaID = 1;
WHILE @LojaID <= 3
BEGIN
    -- Loop pelos produtos
    SET @ProdutoID = 1;
    WHILE @ProdutoID <= 3
    BEGIN
        -- Loop pelas datas (últimos 12 meses)
        SET @DataVenda = @DataInicio;
        WHILE @DataVenda <= @DataAtual
        BEGIN
            -- Gerar uma quantidade aleatória de vendas entre 2 e 5
            SET @Quantidade = FLOOR(RAND() * 4) + 2;

            -- Inserir a venda
            INSERT INTO Vendas (ProdutoID, LojaID, DataVenda, Quantidade)
            VALUES (@ProdutoID, @LojaID, @DataVenda, @Quantidade);

            -- Avançar para o próximo dia
            SET @DataVenda = DATEADD(DAY, 1, @DataVenda);
        END

        -- Avançar para o próximo produto
        SET @ProdutoID = @ProdutoID + 1;
    END

    -- Avançar para a próxima loja
    SET @LojaID = @LojaID + 1;
END
