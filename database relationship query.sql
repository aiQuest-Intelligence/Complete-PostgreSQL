-- Courses table 
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,      
    course_name VARCHAR(100) NOT NULL, 
    teacher VARCHAR(50) NOT NULL       
);


-- Courses insert data
INSERT INTO courses (course_name, teacher) VALUES 
('Django', 'Mr. Noman'),
('Python', 'Azizul');

-- Data 
SELECT * FROM courses;

-- Students table 
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,     
    name VARCHAR(50) NOT NULL,         
    course_id INT,                     
    FOREIGN KEY (course_id) REFERENCES courses(course_id)  -- FK constraint
);



INSERT INTO students (name, course_id) VALUES 
('Roji', 1),      -- Django course
('Raita', 1),     -- Django course
('Ridi', 1),      -- Django course
('Marium', 2),    -- Python course
('Afnan', 2);     -- Python course

-- Data 
SELECT * FROM students;


Foreign Key
--
INSERT INTO students (name, course_id) VALUES ('Kamal', 99);

------
INSERT INTO students (name, course_id) VALUES ('Kamal', 1);

-- Data 
SELECT * FROM students WHERE name = 'Kamal';


-- 

-- 1 to 1 - relationship
======
-- Parent Table: students_1to1
CREATE TABLE students_1to1 (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);


-- Students insert
INSERT INTO students_1to1 (name, email) VALUES 
('Roji', 'roji@email.com'),
('Raita', 'raita@email.com'),
('Marium', 'marium@email.com');

-- Data 
SELECT * FROM students_1to1;
--------------------------

-- Child Table: student_profiles (1:1 relationship)
CREATE TABLE student_profiles (
    profile_id SERIAL PRIMARY KEY,
    student_id INT UNIQUE NOT NULL,  -- UNIQUE = 1:1 enforce 
    bio TEXT,
    linkedin VARCHAR(200),
    github VARCHAR(200),
    FOREIGN KEY (student_id) REFERENCES students_1to1(student_id) ON DELETE CASCADE
);

-- Profiles insert 
INSERT INTO student_profiles (student_id, bio, linkedin, github) VALUES 
(1, 'Django enthusiast, loves backend development', 'linkedin.com/in/roji', 'github.com/roji'),
(2, 'Python developer, data science lover', 'linkedin.com/in/raita', 'github.com/raita'),
(3, 'ML engineer, working on AI projects', 'linkedin.com/in/marium', 'github.com/marium');

-- Data 
SELECT * FROM student_profiles;

----
-- UNIQUE constraint

INSERT INTO student_profiles (student_id, bio) VALUES (1, 'Another bio for Roji');

one to many
-------
SELECT * FROM courses;

SELECT * FROM students WHERE course_id = 1;


Many to many
--------
CREATE TABLE student_course (
    student_id INT,
    course_id INT
);

INSERT INTO student_course VALUES (1,1);
INSERT INTO student_course VALUES (1,2); -- same student, 2 course
INSERT INTO student_course VALUES (2,1);



SELECT * FROM student_course WHERE student_id = 1;
SELECT * FROM student_course WHERE course_id = 1;


