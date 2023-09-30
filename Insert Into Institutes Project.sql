use learning_institutes;
-- Inserting records into the Institutes table
INSERT INTO Institutes (InstituteID, Name, Address, ContactNumber)
VALUES
    (1, 'ABC Institute', '123 Main Street, Mumbai', '9876543210'),
    (2, 'XYZ College', '456 Oak Avenue, Delhi', '9988776655'),
    (3, 'PQR School', '789 Elm Road, Bangalore', '8765432109'),
    (4, 'LMN Academy', '101 Pine Lane, Chennai', '9876541230'),
    (5, 'EFG University', '234 Cedar Drive, Kolkata', '8765432101');

-- Inserting records into the Courses table
INSERT INTO Courses (CourseID, Name, Description, InstituteID)
VALUES
    (1, 'Computer Science', 'Learn programming and software development', 1),
    (2, 'Physics', 'Explore the world of physics and its principles', 2),
    (3, 'Mathematics', 'Master mathematical concepts and theories', 3),
    (4, 'History', 'Study historical events and their significance', 4),
    (5, 'English Literature', 'Appreciate great works of English literature', 5);

-- Inserting records into the Students table
INSERT INTO Students (StudentID, Name, Email, InstituteID)
VALUES
    (101, 'Rajesh Kumar', 'rajesh@example.com', 1),
    (102, 'Priya Sharma', 'priya@example.com', 2),
    (103, 'Amit Patel', 'amit@example.com', 3),
    (104, 'Sneha Verma', 'sneha@example.com', 4),
    (105, 'Ananya Singh', 'ananya@example.com', 5);

-- Inserting records into the Feedback table
INSERT INTO Feedback (FeedbackID, StudentID, CourseID, Rating, Comment)
VALUES
    (1, 101, 1, 4, 'Great course, enjoyed learning programming'),
    (2, 102, 2, 5, 'Fascinating subject, excellent teaching'),
    (3, 103, 3, 4, 'Mathematics was challenging but rewarding'),
    (4, 104, 4, 3, 'Interesting historical facts, could be more engaging'),
    (5, 105, 5, 5, 'Loved studying classic literature, highly recommended');

-- Inserting records into the Instructors table
INSERT INTO Instructors (InstructorID, Name, Email, InstituteID)
VALUES
    (201, 'Dr. Suresh Gupta', 'suresh@example.com', 1),
    (202, 'Prof. Meena Singh', 'meena@example.com', 2),
    (203, 'Dr. Rajan Verma', 'rajan@example.com', 3),
    (204, 'Ms. Nandini Choudhury', 'nandini@example.com', 4),
    (205, 'Prof. Arvind Kapoor', 'arvind@example.com', 5);

-- Inserting records into the CourseEnrollments table
INSERT INTO CourseEnrollments (EnrollmentID, CourseID, StudentID, EnrollmentDate)
VALUES
    (1001, 1, 101, '2023-01-15'),
    (1002, 2, 102, '2023-02-20'),
    (1003, 3, 103, '2023-03-25'),
    (1004, 4, 104, '2023-04-30'),
    (1005, 5, 105, '2023-05-05');

-- Inserting records into the Payments table
INSERT INTO Payments (PaymentID, StudentID, Amount, PaymentDate)
VALUES
    (501, 101, 2500.00, '2023-01-20'),
    (502, 102, 2800.00, '2023-02-25'),
    (503, 103, 2300.00, '2023-03-30'),
    (504, 104, 2600.00, '2023-04-05'),
    (505, 105, 3000.00, '2023-05-10');

-- Inserting records into the LibraryBooks table
INSERT INTO LibraryBooks (BookID, Title, Author, InstituteID)
VALUES
    (10001, 'Introduction to Computer Science', 'Amit Sharma', 1),
    (10002, 'Physics for Beginners', 'Rajiv Verma', 2),
    (10003, 'Advanced Mathematics', 'Meera Kapoor', 3),
    (10004, 'World History: A Comprehensive Guide', 'Neha Singh', 4),
    (10005, 'Classic English Literature', 'Amita Chatterjee', 5);

-- Inserting records into the Sports table
INSERT INTO Sports (SportID, Name, Description, InstituteID)
VALUES
    (301, 'Cricket', 'Learn and play cricket at our sports club', 1),
    (302, 'Basketball', 'Join our basketball team and improve your skills', 2),
    (303, 'Badminton', 'Enjoy a game of badminton with fellow students', 3),
    (304, 'Football', 'Practice football and participate in tournaments', 4),
    (305, 'Athletics', 'Train for various athletic events at our facility', 5);
    
-- Inserting records into the CourseInstructors table
INSERT INTO CourseInstructors (CourseInstructorID, CourseID, InstructorID)
VALUES
    (1, 1, 201),   -- Course 1 is taught by Instructor 1
    (2, 2, 202),   -- Course 2 is taught by Instructor 2
    (3, 3, 203),   -- Course 3 is taught by Instructor 3
    (4, 4, 204),   -- Course 4 is taught by Instructor 4
    (5, 5, 205);   -- Course 5 is taught by Instructor 5;

