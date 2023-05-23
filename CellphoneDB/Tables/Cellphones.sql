CREATE TABLE [dbo].[Cellphones]
(
    [CellphoneId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(50) NOT NULL,
    [Price] DECIMAL(18,2) NOT NULL,
    [Description] NVARCHAR(100) NOT NULL,
    [Image] NVARCHAR(100) NOT NULL,
    [BrandId] INT NOT NULL,
    [LaunchDate] DATETIME NOT NULL,
    CONSTRAINT [FK_Cellphones_Brands] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brands] ([BrandId])
)
