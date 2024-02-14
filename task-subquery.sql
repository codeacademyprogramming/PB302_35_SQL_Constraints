USE Course

CREATE TABLE Employees
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(20) NOT NULL,
	Surname NVARCHAR(20) NOT NULL CHECK(LEN(Surname)>=3),
	Salary DECIMAL(18,2) CHECK(Salary>=350),
	Email NVARCHAR(100)
)

ALTER TABLE Employees
ADD CONSTRAINT UNQ_Email UNIQUE(Email)

INSERT INTO Employees (Name,Surname,Email,Salary)
VALUES
(N'Tofiq',N'Abbasov','totu@gmail.com',1000),
(N'Nərmin',N'Quluzadə','nermin@gmail.com',2300),
(N'Nərminə',N'Quluyeva','nermine@gmail.com',2100),
(N'Elmar',N'Qarayev','elmar@code.edu.az',350),
(N'Davud',N'Əliyev','davud@code.com',400),
(N'Dilbər',N'Nemətova','dilber@mail.ru',1200)

SELECT * FROM Employees

SELECT AVG(Salary) FROM Employees

SELECT * FROM Employees
WHERE Salary>(SELECT AVG(Salary) FROM Employees)

SELECT MIN(Salary) FROM Employees

UPDATE Employees
SET Salary=350 WHERE Id=7

SELECT * FROM Employees
WHERE Salary = (SELECT MIN(Salary) FROM Employees) 

SELECT SUBSTRING(Email,1,CHARINDEX('@',Email)-1) FROM Employees

SELECT Id,CONCAT(Name,' ',Surname) AS Fullname,Salary FROM Employees AS E
WHERE E.Salary>1000

ALTER TABLE Employees
ADD BirthDate DATETIME2

UPDATE Employees
SET BirthDate='1995-10-20 21:00'
WHERE Id=1

SELECT * FROM Employees
WHERE BirthDate BETWEEN '1990-01-01' AND '2000-01-01'

SELECT *,
CONCAT(Name,' ',Surname) AS Fullname,
MONTH(BirthDate)  AS BirthMonth,
DATEDIFF(year, BirthDate, GETDATE()) AS Age1,
YEAR(GETDATE())-YEAR(BirthDate) AS Age2 FROM Employees






SELECT * FROM Employees

DELETE FROM Employees

TRUNCATE TABLE EMPLOYEES

