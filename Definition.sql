create database UniLibrary;

create table Student (
    StudentId int primary key,
    StudentName varchar(50) not null,
    Email varchar(50) not null,
    Password varchar(50) not null,
    PhoneNum varchar(20),
    Address varchar(50),
);

create table Category (
    CategoryId int primary key,
    CategName varchar(20) not null
);

create table Inventory(
    NumOfCopies int,
    BookISBN varchar(50) unique
);

create table Admin(
    AdminId int primary key,
    AdminName varchar(50) not null,
    Email varchar(50) not null,
    Password varchar(50) not null,
    PhoneNum varchar(20),
    Address varchar(50)
);

create table Book(
    BookId int primary key,
    ISBN varchar(50) unique,
    BorrowingFees int not null,
    CategId int,
    Title varchar(50) not null,
    Author varchar(50) not null
    foreign key (CategId) REFERENCES Category(CategoryId)
);

create table Review(
    ReviewId int primary key,
    UserId int not null,
    Comment text,
    BookISBN varchar(50),
    foreign key (BookISBN) references Book(ISBN)
);

create table Borrowed(
    IssueDate VARCHAR(10),
    ReturnDate VARCHAR(10),
    StudId int,
    BookID int,
    foreign key (StudId) references Student(StudentId),
    foreign key (BookId) references Book(BookId)
);
