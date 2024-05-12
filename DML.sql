INSERT INTO Student (StudentId,StudentName,Email,Password)
VALUES(1542,'Ahmad','a@a.a','p_123');

INSERT INTO Student (StudentId,StudentName,Email,Password)
VALUES(2314,'Loay','b@a.a','j_120');

INSERT INTO Admin (AdminId,AdminName,Email,Password)
VALUES(9205,'Omar','c@a.a','s_23');

INSERT INTO Admin (AdminId,AdminName,Email,Password)
VALUES(102,'Abdel-Aziz','d@a.a','p_103');

INSERT INTO Book (BookID,ISBN,BorrowingFees,Title,Author)
VALUES (102,'44UD',250,'Database 1','Mohamed');

INSERT INTO Book (BookID,ISBN,BorrowingFees,Title,Author)
VALUES (103,'45SD',300,'Database 2','Ali');

INSERT INTO Book (BookID,ISBN,BorrowingFees,Title,Author)
VALUES (903,'95SH',200,'Programming','Hussin');

INSERT INTO Review(ReviewId,UserId,Comment,BookISBN)
VALUES (510, 1542, 'Good!','95SH');

DELETE FROM Student
WHERE StudentName = 'Loay';

DELETE FROM Admin
WHERE AdminId = 9205;

DELETE FROM Book
WHERE Title LIKE 'Database%';

UPDATE Book
SET BorrowingFees = BorrowingFees + 50;

UPDATE Student
SET PhoneNum = '+201586'
WHERE StudentId = 1542;

UPDATE Admin
SET PhoneNum = '+201510'
WHERE Email = 'd@a.a';

SELECT * 
FROM Book;

SELECT *
FROM Student
WHERE StudentId < 2000;

SELECT Student.StudentName,Review.Comment,Book.Title
FROM Student,Review,Book
WHERE Student.StudentId = Review.UserId
and Review.BookISBN = Book.ISBN;