﻿ALTER TABLE dbo.Employee
ADD CONSTRAINT FK_Person_Employee FOREIGN KEY (PersonId)
    REFERENCES dbo.[Person] (Id) ON UPDATE CASCADE ON DELETE CASCADE