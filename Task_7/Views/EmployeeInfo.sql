Create View dbo.EmployeeInfo as
SELECT TOP (100) dbo.Employee.Id AS EmployeeId, dbo.Person.FirstName + ' ' + dbo.Person.LastName AS EmployeeFullName, 
                  dbo.[Address].ZipCode + '_' + dbo.[Address].[State] + ', ' + dbo.[Address].City + '-' + dbo.[Address].Street AS EmployeeFullAddress, dbo.Employee.CompanyName + '(' + dbo.Employee.Position + ')' AS EmployeeCompanyInfo
FROM     dbo.[Address] INNER JOIN
                  dbo.Company ON dbo.[Address].Id = dbo.Company.AddressId INNER JOIN
                  dbo.Employee ON dbo.[Address].Id = dbo.Employee.AddressId INNER JOIN
                  dbo.Person ON dbo.Employee.PersonId = dbo.Person.Id
WHERE  (dbo.Employee.EmployeeName IS NOT NULL)
ORDER BY dbo.Employee.CompanyName, dbo.[Address].City