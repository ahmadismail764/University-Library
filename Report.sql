-- 1. Query to Get Student Who Have Reviewed A Book
SELECT
    s.username,
    b.title,
    r.comment
FROM
    Student s
    JOIN Review r ON s.id = r.studentId
    JOIN Book b on r.bookISBN = b.ISBN;

-- 2. Query to Find Books Borrowed by Students
SELECT
    s.username,
    b.title,
    b.author
FROM
    Student s
    JOIN Borrowed bor ON s.id = bor.studentId
    JOIN Book b ON bor.bookID = b.bookId;

-- 3.Query to Get Categories and the Number of Books in Each Category
SELECT
    c.categoryName,
    COUNT(b.bookId) AS NumberOfBooks
FROM
    Category c
    LEFT JOIN Book b ON c.categoryId = b.categoryId
GROUP BY
    c.categoryName;

-- 4.Query to Retrieve Books With No Reviews
SELECT
    b.title,
    b.author
FROM
    Book b
    LEFT JOIN Review r ON b.ISBN = r.bookISBN
WHERE
    r.reviewId IS NULL;

-- 5.Query to Find Students Who Have Borrowed Books and Reviewed Them
SELECT
    s.username,
    b.title,
    r.comment
FROM
    Student s
    JOIN Borrowed bor ON s.id = bor.studentId
    JOIN Book b ON bor.bookID = b.bookId
    JOIN Review r ON s.id = r.studentId
    AND b.ISBN = r.bookISBN;

-- 6.Query to Retrieve Students Who Have Not Borrowed Any Books
SELECT
    s.username
FROM
    Student s
    LEFT JOIN Borrowed bor ON s.id = bor.studentId
WHERE
    bor.studentId IS NULL;

-- 7.Query to Calculate Total Borrowing Fees Paid by Each Student
SELECT
    s.username,
    SUM(b.borrowingFees) AS TotalFeesPaid
FROM
    Student s
    JOIN Borrowed bor ON s.id = bor.studentId
    JOIN Book b ON bor.bookID = b.bookId
GROUP BY
    s.username;