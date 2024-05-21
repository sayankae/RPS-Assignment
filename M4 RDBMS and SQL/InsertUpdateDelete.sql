use librarysystem;

-- Inserting data into Customer table
INSERT INTO Customer (UserID, Name, Email, Phone) VALUES
(1, 'Alice', 'alice@example.com', 1234567890),
(2, 'Bob', 'bob@example.com', 2345678901),
(3, 'Charlie', 'charlie@example.com', 3456789012);

-- Insert sample data into the Book table
INSERT INTO Book (BookId, BookName, UserId, DateIssued, Price) VALUES
(1, 'Book One', 1, '2024-05-01', 100),
(2, 'Book Two', 2, '2024-05-05', 150),
(3, 'Book Three', NULL, NULL, 200),
(4, 'Book Four', NULL, NULL, 250);

-- Insert sample data into the ENROLLMENT table
INSERT INTO ENROLLMENT (Enrollment, UserId, BookId, EnrollementDate) VALUES
(1, 1, 1, '2024-05-01'),
(2, 2, 2, '2024-05-05');

-- Update Data in Customer Table
UPDATE Customer
SET Name = 'Sayan'
WHERE UserID = 1;
