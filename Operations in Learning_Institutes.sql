use learning_institutes;


-- Joining the "Institutes" and "Courses" tables to retrieve courses offered by each institute:
-- Get a list of courses offered by each institute
SELECT Institutes.Name AS InstituteName, Courses.Name AS CourseName
FROM Institutes
INNER JOIN Courses ON Institutes.InstituteID = Courses.InstituteID;


-- Joining the "Institutes" and "Students" tables to list students associated with each institute:
-- List students associated with each institute
SELECT Institutes.Name AS InstituteName, Students.Name AS StudentName
FROM Institutes
INNER JOIN Students ON Institutes.InstituteID = Students.InstituteID;



-- Joining the "Students," "Courses," and "Feedback" tables to get feedback given by students for specific courses:
-- Retrieve feedback given by students for specific courses
SELECT Students.Name AS StudentName, Courses.Name AS CourseName, Feedback.Rating, Feedback.Comment
FROM Students
INNER JOIN Feedback ON Students.StudentID = Feedback.StudentID
INNER JOIN Courses ON Feedback.CourseID = Courses.CourseID;



-- Joining the "Institutes" and "Instructors" tables to list instructors associated with each institute:
-- List instructors associated with each institute
SELECT Institutes.Name AS InstituteName, Instructors.Name AS InstructorName
FROM Institutes
INNER JOIN Instructors ON Institutes.InstituteID = Instructors.InstituteID;



-- Joining the "Courses," "Instructors," and "CourseInstructors" tables to link instructors to specific courses:
-- Get a list of instructors assigned to specific courses
SELECT Courses.Name AS CourseName, Instructors.Name AS InstructorName
FROM Courses
INNER JOIN CourseInstructors ON Courses.CourseID = CourseInstructors.CourseID
INNER JOIN Instructors ON CourseInstructors.InstructorID = Instructors.InstructorID;



-- Joining the "Students" and "Payments" tables to retrieve payment information for each student:
-- Retrieve payment information for each student
SELECT Students.Name AS StudentName, Payments.Amount, Payments.PaymentDate
FROM Students
INNER JOIN Payments ON Students.StudentID = Payments.StudentID;



-- Joining the "Institutes" and "LibraryBooks" tables to list books available in each institute's library
-- List books available in each institute's library
SELECT Institutes.Name AS InstituteName, LibraryBooks.Title AS BookTitle, LibraryBooks.Author
FROM Institutes
INNER JOIN LibraryBooks ON Institutes.InstituteID = LibraryBooks.InstituteID;



-- Joining the "Institutes" and "Sports" tables to list sports activities available at each institute
-- List sports activities available at each institute
SELECT Institutes.Name AS InstituteName, Sports.Name AS SportName, Sports.Description
FROM Institutes
INNER JOIN Sports ON Institutes.InstituteID = Sports.InstituteID;

