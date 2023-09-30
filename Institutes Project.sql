-- Create the learning_institutes database
CREATE DATABASE IF NOT EXISTS learning_institutes;

-- Switch to the learning_institutes database
USE learning_institutes;

-- Create the Institutes table to store information about learning institutions
CREATE TABLE Institutes (
    InstituteID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    ContactNumber VARCHAR(15)
);

-- Describe the Institutes table structure
DESC Institutes;

-- Create the Courses table to store information about courses offered by institutions
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT,
    InstituteID INT,
    FOREIGN KEY (InstituteID) REFERENCES Institutes (InstituteID)
);

-- Describe the Courses table structure
DESC Courses;

-- Create the Students table to store information about students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    InstituteID INT,
    FOREIGN KEY (InstituteID) REFERENCES Institutes (InstituteID)
);

-- Describe the Students table structure
DESC Students;

-- Create the Feedback table to store course feedback from students
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Rating INT,
    Comment TEXT,
    FOREIGN KEY (StudentID) REFERENCES Students (StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses (CourseID)
);

-- Describe the Feedback table structure
DESC Feedback;

-- Create the Instructors table to store information about instructors
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    InstituteID INT,
    FOREIGN KEY (InstituteID) REFERENCES Institutes (InstituteID)
);

-- Describe the Instructors table structure
DESC Instructors;

-- Create the CourseEnrollments table to track student course enrollments
CREATE TABLE CourseEnrollments (
    EnrollmentID INT PRIMARY KEY,
    CourseID INT,
    StudentID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students (StudentID)
);

-- Describe the CourseEnrollments table structure
DESC CourseEnrollments;

-- Create the CourseInstructors table to associate instructors with courses
CREATE TABLE CourseInstructors (
    CourseInstructorID INT PRIMARY KEY,
    CourseID INT,
    InstructorID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses (CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructors (InstructorID)
);

-- Describe the CourseInstructors table structure
DESC CourseInstructors;

-- Create the Payments table to track student payments
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    StudentID INT,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students (StudentID)
);

-- Describe the Payments table structure
DESC Payments;

-- Create the LibraryBooks table to store books available in the library
CREATE TABLE LibraryBooks (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100),
    InstituteID INT,
    FOREIGN KEY (InstituteID) REFERENCES Institutes (InstituteID)
);

-- Describe the LibraryBooks table structure
DESC LibraryBooks;

-- Create the Sports table to store information about sports activities
CREATE TABLE Sports (
    SportID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT,
    InstituteID INT,
    FOREIGN KEY (InstituteID) REFERENCES Institutes (InstituteID)
);

-- Describe the Sports table structure
DESC Sports;
