CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    grade_level INT,
    gender VARCHAR(15) NOT NULL
);

CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(50),
    email_address VARCHAR(50),
    date_joined DATE NOT NULL
);

CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    teacher_id INT,FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
    grade VARCHAR(20) NOT NULL
);