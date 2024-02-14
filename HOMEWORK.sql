CREATE DATABASE LIBRARY
USE LIBRARY
CREATE TABLE Books
(
Id Int,
Name NVARCHAR(100),
Price DECIMAL,
)
-- Books table-na Author column və Genre column əlavə etmək
ALTER TABLE Books
ADD Author NVARCHAR(10)
ALTER TABLE Books
ADD Genre NVARCHAR(10)
SELECT*FROM Books

ALTER TABLE Books
ALTER COLUMN Author NVARCHAR(50)
---Books table-dan Genre column silmek

ALTER TABLE Books 
DROP Column Genre

Insert into Books(Id,Price,Author,Name)
Values 
(1,24,'Hikmet Abbasov','book1'),
(2,12,'Tofiq Abbasov','book2'),
(3,7.5,'Nermin Abbasova','book3'),
(4,14.78,'Hikmet Abbasov','book4'),
(5,70,'Elsen Qulamov','book5'),
(6,43.7,'Elmar Qarayev','book6'),
(7,71,'Davud Aliyev','book7'),
(8,17,'Tofiq Quluzade','book8'),
(9,7,'Qulu Abbasov','book9'),
(10,7,'Nermine Quluzade','book10')

UPDATE Books
SET Price=10 
WHERE Price<10

SELECT * FROM Books
WHERE Price BETWEEN 10 AND 50 

SELECT * FROM Books
WHERE Name LIKE '%Q%' OR Author LIKE '%q%' 

DELETE FROM BOOKS
WHERE PRICE=10

select * from books
where Price > all (select Price from books where price>0)





