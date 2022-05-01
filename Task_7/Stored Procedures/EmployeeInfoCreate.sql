CREATE PROCEDURE [dbo].[EmployeeInfoCreate] 
	@EmployeeName nvarchar(100) = null,
	@FirstName nvarchar(50) = null,
	@LastName nvarchar(50) = null,
	@CompanyName nvarchar(20),
	@Position nvarchar(30) = null,
	@Street nvarchar(50),
	@City nvarchar(20) = null,
	@State nvarchar(50) = null,
	@ZipCode nvarchar(50) = null,
	@AddressId int = null,
	@PersonId int = null
AS
	if (((@EmployeeName is not null) or (@FirstName is not null) or (@LastName is not null)) or
	    ((trim(@EmployeeName) = '') or (trim(@FirstName) = '') or (trim(@LastName) = '')))
		if (len(@CompanyName) > 20)
			begin
				INSERT INTO [Address] ([Id], [Street], [City], [State], [ZipCode]) 
				VALUES ((Select Max(Id) from [Address]) + 1, @Street, @City, @State, @ZipCode);

				SELECT @AddressId = (Select Max(Id) from [Address]);

				INSERT INTO [Person] ([Id], [FirstName], [LastName]) 
				VALUES ((Select Max(Id) from [Person]) + 1, @FirstName, @LastName);

				SELECT @PersonId = (Select Max(Id) from [Person]);

				INSERT INTO [Employee] ([Id], [AddressId], [PersonId], [EmployeeName], [CompanyName], [Position]) 
				VALUES ((Select Max(Id) from [Employee]) + 1, (Select Max(Id) from [Address]), (Select Max(Id) from [Person]), @EmployeeName, left(@CompanyName, 20), @Position);
			end
		else
			begin
				INSERT INTO [Address] ([Id], [Street], [City], [State], [ZipCode]) 
				VALUES ((Select Max(Id) from [Address]) + 1, @Street, @City, @State, @ZipCode);

				SELECT @AddressId = (Select Max(Id) from [Address]);

				INSERT INTO [Person] ([Id], [FirstName], [LastName]) 
				VALUES ((Select Max(Id) from [Person]) + 1, @FirstName, @LastName);

				SELECT @PersonId = (Select Max(Id) from [Person]);

				INSERT INTO [Employee] ([Id], [AddressId], [PersonId], [EmployeeName], [CompanyName], [Position]) 
				VALUES ((Select Max(Id) from [Employee]) + 1, (Select Max(Id) from [Address]), (Select Max(Id) from [Person]), @EmployeeName, @CompanyName, @Position);
			end
	
