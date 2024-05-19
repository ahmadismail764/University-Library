INSERT INTO Student (username,email,password)
VALUES('Ahmad','a@a.a','p_123');

INSERT INTO Student (username,email,password)
VALUES('Loay','b@a.a','j_120');

INSERT INTO Admin (username,email,password)
VALUES('Omar','c@a.a','s_23');

INSERT INTO Admin (username,email,password)
VALUES('Abdel-Aziz','d@a.a','p_103');

INSERT INTO Category(categoryId, categoryName)
VALUES (0,'Comics');

INSERT INTO Category(categoryId, categoryName)
VALUES (1,'Programming');

INSERT INTO Category(categoryId, categoryName)
VALUES (2,'Programming');

INSERT INTO Book (ISBN,borrowingFees,title, categoryId, author)
VALUES ('44UD',250,'Database 1',0,'Mohamed');

INSERT INTO Book (ISBN,borrowingFees,Title,categoryId,author)
VALUES ('45SD',300,'Database 2',1,'Ali');

INSERT INTO Book (ISBN,borrowingFees,title,categoryId,author)
VALUES ('95SH',200,'Programming',2,'Hussin');

INSERT INTO Review(studentId,comment,bookISBN)
VALUES (1, 'Good!','95SH');

DELETE FROM Student
WHERE username = 'Loay';

DELETE FROM Admin
WHERE id = 9205;

DELETE FROM Book
WHERE Title LIKE 'Database%';

UPDATE Book
SET BorrowingFees = BorrowingFees + 50;

UPDATE Student
SET phone = '+201586'
WHERE id = 1542;

UPDATE Admin
SET phone = '+201510'
WHERE email = 'd@a.a';

SELECT * 
FROM Book;

SELECT *
FROM Student
WHERE id < 2000;

SELECT Student.username,Review.Comment,Book.Title
FROM Student,Review,Book
WHERE Student.id = Review.studentId
and Review.bookISBN = Book.ISBN;