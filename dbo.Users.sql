CREATE TABLE [dbo].[Users] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (MAX) NOT NULL,
    [CompanyInfoKey] INT            NOT NULL,
    [CompanyId]      INT            NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Users_Companies_CompanyId] FOREIGN KEY ([CompanyId])
	REFERENCES [dbo].[Companies] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Users_CompanyId]
    ON [dbo].[Users]([CompanyId] ASC);

