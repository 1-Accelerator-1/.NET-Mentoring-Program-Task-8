﻿ALTER TABLE dbo.Employee
ADD CONSTRAINT FK_Address_Employee FOREIGN KEY (AddressId)
    REFERENCES dbo.[Address] (Id) ON UPDATE CASCADE ON DELETE CASCADE