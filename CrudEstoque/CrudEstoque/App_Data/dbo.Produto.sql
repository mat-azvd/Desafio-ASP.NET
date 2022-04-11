CREATE TABLE [dbo].[Produto] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [nome]           VARCHAR (200) NOT NULL,
    [preco]          INT           NOT NULL,
    [quantidade]     INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([ultima_alt_por]) REFERENCES [dbo].[Usuario] ([ID])
);

