use KETZ
go



CREATE TABLE Books
(
    ID          INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Books_Id PRIMARY KEY,
    BookName    NVARCHAR(50)
)
GO

CREATE TABLE Authors
(
	Id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_Authors_Id PRIMARY KEY,
	Lastname char(300) NOT NULL,
	Firstname char(300) NOT NULL,
	Middlename char(300) NULL
)
GO

CREATE TABLE Zapros
(
	Id INT IDENTITY(1,1) NOT NULL,
	BookId INT  NOT NULL CONSTRAINT FK_Zapros_BookId REFERENCES dbo.Books(Id),
	AuthorId int NOT NULL CONSTRAINT FK_Zapros_AuthorId REFERENCES dbo.Authors(Id)
)
GO