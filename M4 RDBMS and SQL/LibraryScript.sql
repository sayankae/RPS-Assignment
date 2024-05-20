-- Write SQL statements to CREATE a new database and tables that reflect the library schema you designed earlier. 
-- Use ALTER statements to modify the table structures and DROP statements to remove a redundant table.

CREATE DATABASE LibrarySystem;

CREATE TABLE Customer (
    UserID INT PRIMARY KEY,
    Name VARCHAR(10) NOT NULL,
    Email VARCHAR(25) NOT NULL,
    Phone BIGINT NOT NULL
);


CREATE TABLE ENROLLMENT (
    Enrollment INT PRIMARY KEY,
    UserId INT NOT NULL,
    BookId INT NOT NULL,
    EnrollementDate DATE,
    FOREIGN KEY (UserId)
        REFERENCES Customer (UserId)
);

CREATE TABLE Book (
    BookId INT PRIMARY KEY,
    BookName VARCHAR(10) NOT NULL,
    UserId INT,
    DateIssued DATE,
    Price INT DEFAULT 0,
    FOREIGN KEY (UserID)
        REFERENCES Customer (UserId)
);


ALTER TABLE ENROLLMENT
ADD CONSTRAINT book_fk
FOREIGN KEY (BookId) REFERENCES Book(BookId);

CREATE TABLE RedudantTable (
    NoPk INT,
    NoName VARCHAR(10),
    UserId INT,
    BookId INT,
    Enrollement INT,
    FOREIGN KEY (UserID)
        REFERENCES Customer (UserId),
    FOREIGN KEY (BookId)
        REFERENCES Book (BookId),
    FOREIGN KEY (Enrollement)
        REFERENCES ENROLLMENT (Enrollment)
);

DROP TABLE RedudantTable;

