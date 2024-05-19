create table
    Student (
        id int primary key Identity (2, 2),
        username varchar(50) not null,
        email varchar(50) not null,
        password varchar(50) not null,
        phone varchar(20),
        address varchar(50),
    );

create table
    Category (
        categoryId int primary key,
        categoryId int primary key Identity (1, 1),
        categoryName varchar(20) not null
    );

create table
    Admin (
        id int primary key,
        id int primary key Identity (1, 2),
        username varchar(50) not null,
        email varchar(50) not null,
        password varchar(50) not null,
        phone varchar(20),
        address varchar(50)
    );

create table
    Book (
        bookId int primary key,
        ISBN varchar(50) unique,
        borrowingFees int not null,
        categoryId int,
        title varchar(50) not null,
        author varchar(50) not null foreign key (categoryId) REFERENCES Category (categoryId)
    );

create table
    Review (
        reviewId int primary key Identity (1, 1),
        studentId int,
        comment text,
        bookISBN varchar(50),
        foreign key (bookISBN) references Book (ISBN),
        foreign key (studentId) references Student (id)
    );

create table
    Inventory (
        numOfCopies int,
        bookISBN varchar(50) unique,
        adminId int foreign key (adminId) REFERENCES Admin (id),
        foreign key (bookISBN) references Book (ISBN),
    );

create table
    Borrowed (
        issueDate VARCHAR(10),
        returnDate VARCHAR(10),
        studentId int,
        bookID int,
        foreign key (studentId) references Student (id),
        foreign key (bookId) references Book (bookId)
    );