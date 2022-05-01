CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[AddressId] INT NOT NULL,
	[PersonId] INT NOT NULL,
	[CompanyName] nvarchar(20) NOT NULL,
	[Position] nvarchar(30) NULL,
	[EmployeeName] nvarchar(100) NULL,
)
