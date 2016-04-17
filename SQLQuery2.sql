use KETZ
go


  SELECT b.BookName, Count(a.id) 
  from Books b
    join Zapros z on b.id=z.BookId
    join Authors a on z.AuthorId=a.Id
  Group by b.BookName
 Having Count(a.id) >= 3