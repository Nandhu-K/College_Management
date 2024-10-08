create database college_management; 
use college_management;
 create TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    year INT
);
CREATE TABLE Fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    amount DECIMAL(10, 2),
    status VARCHAR(20),
    due_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
CREATE TABLE Library (
    library_id INT primary key auto_increment,
    student_id INT,
    book_issued VARCHAR(100),
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
drop table	library;
CREATE TABLE Hostel (
    hostel_id INT PRIMARY KEY,
    student_id INT,
    room_number INT,
    fee DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
INSERT INTO Students (student_id, name, course, year) VALUES
(1, 'Arun', 'Computer Science', 3),
(2, 'Balu', 'Electrical Engineering', 2),
(3, 'Charu', 'Mechanical Engineering', 3),
(4, 'David', 'Civil Engineering', 1),
(5, 'Elakiya', 'Computer Science', 2),
(6, 'Fathima', 'Mathematics', 3),
(7, 'Gomathi', 'Physics', 1),
(8, 'Harini', 'Biotechnology', 2),
(9, 'Indira', 'Chemistry', 3),
(10, 'James', 'Computer Science', 3),
(11, 'Kavin', 'Mechanical Engineering', 2),
(12, 'Latha', 'Electrical Engineering', 3),
(13, 'Mala', 'Civil Engineering', 1),
(14, 'Nandhini', 'Biotechnology', 2),
(15, 'Oviya', 'Mathematics', 3);
INSERT INTO Fees (fee_id, student_id, amount, status, due_date) VALUES
(1, 1, 2000.00, 'Paid', '2024-06-01'),
(2, 2, 2500.00, 'Unpaid', '2024-08-01'),
(3, 3, 1500.00, 'Paid', '2024-07-01'),
(4, 4, 2200.00, 'Paid', '2024-08-15'),
(5, 5, 1800.00, 'Unpaid', '2024-09-20'),
(6, 6, 2400.00, 'Paid', '2024-08-23'),
(7, 7, 2100.00, 'Unpaid', '2024-07-25'),
(8, 8, 2300.00, 'Paid', '2024-08-05'),
(9, 9, 1900.00, 'Paid', '2024-06-12'),
(10, 10, 2600.00, 'Unpaid', '2024-09-13'),
(11, 11, 2000.00, 'Paid', '2024-03-22'),
(12, 12, 2500.00, 'Unpaid', '2024-08-30'),
(13, 13, 2200.00, 'Unpaid', '2024-07-28'),
(14, 14, 2400.00, 'Paid', '2024-08-02'),
(15, 15, 1800.00, 'Unpaid', '2024-09-15');
INSERT INTO Library (student_id, book_issued, issue_date, return_date) VALUES
( 1, 'Introduction to Algorithms', '2024-08-05', '2024-08-20'),
( 2, 'Digital Logic Design', '2024-08-10', '2024-08-25'),
( 3, 'Thermodynamics', '2024-07-15', '2024-07-30'),
( 12, 'Structural Analysis', '2024-08-01', '2024-08-15'),
( 6, 'Discrete Mathematics', '2024-08-12', '2024-08-27'),
( 5, 'Linear Algebra', '2024-08-08', '2024-08-23'),
( 7, 'Quantum Mechanics', '2024-08-14', '2024-08-29'),
( 9, 'Molecular Biology', '2024-08-04', '2024-08-19'),
( 10, 'Organic Chemistry', '2024-07-20', '2024-08-04');
INSERT INTO Hostel (hostel_id, student_id, room_number, fee, status) VALUES
(1, 1, 101, 3000.00, 'Paid'),
(2, 2, 102, 3200.00, 'Unpaid'),
(3, 3, 103, 2800.00, 'Paid'),
(4, 4, 104, 3100.00, 'Paid'),
(5, 5, 105, 2900.00, 'Unpaid'),
(6, 6, 106, 3000.00, 'Paid'),
(7, 7, 107, 3300.00, 'Unpaid'),
(8, 8, 108, 3100.00, 'Paid'),
(9, 9, 109, 3000.00, 'Paid'),
(10, 10, 110, 3200.00, 'Unpaid'),
(11, 11, 111, 2800.00, 'Paid'),
(12, 12, 112, 3100.00, 'Unpaid'),
(13, 13, 113, 3000.00, 'Paid'),
(14, 14, 114, 3300.00, 'Paid'),
(15, 15, 115, 2900.00, 'Unpaid');
INSERT INTO Attendance (attendance_id, student_id, date, status) VALUES
(1, 1, '2024-08-10', 'Present'),
(2, 2, '2024-08-10', 'Absent'),
(3, 3, '2024-08-10', 'Present'),
(4, 4, '2024-08-10', 'Present'),
(5, 5, '2024-08-10', 'Absent'),
(6, 6, '2024-08-10', 'Present'),
(7, 7, '2024-08-10', 'Absent'),
(8, 8, '2024-08-10', 'Present'),
(9, 9, '2024-08-10', 'Present'),
(10, 10, '2024-08-10', 'Absent'),
(11, 11, '2024-08-10', 'Present'),
(12, 12, '2024-08-10', 'Absent'),
(13, 13, '2024-08-10', 'Present'),
(14, 14, '2024-08-10', 'Present'),
(15, 15, '2024-08-10', 'Absent');