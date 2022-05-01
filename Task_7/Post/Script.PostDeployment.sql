insert into dbo.[Address]
values (1, 'Address 1', 'City 12', 'State 1', 'ZipCode 1'),
(2, 'Address 2', 'City 11', 'State 2', 'ZipCode 2')

insert into dbo.[Person]
values (1, 'FirstName 1', 'LastName 1'),
(2, 'FirstName 2', 'LastName 2')

insert into dbo.[Company]
values (1, 'Name 1', 1),
(2, 'Name 2', 2),
(3, 'Name 3', 1),
(4, 'Name 4', 2)

insert into dbo.[Employee]
values (1, 1, 1, 'CompanyName 1', 'Position 1', 'EmployeeName 1'),
(2, 2, 2, 'CompanyName 2', 'Position 2', 'EmployeeName 2'),
(3, 1, 1, 'CompanyName 4', 'Position 3', 'EmployeeName 3'),
(4, 2, 2, 'CompanyName 4', 'Position 4', 'EmployeeName 4'),
(5, 2, 2, 'CompanyName 4', 'Position 5', null),
(6, 1, 1, 'CompanyName 1', 'Position 3', null)