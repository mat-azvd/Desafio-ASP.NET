CREATE TABLE [dbo].[Produto] (
    [ID]             INT NOT NULL IDENTITY,
    [nome]           VARCHAR (200) NOT NULL,
    [preco]          INT           NOT NULL,
    [quantidade]     INT           NOT NULL,
    [ultima_alt_por] INT           NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([ultima_alt_por]) REFERENCES [dbo].[Usuario] ([ID])
);

