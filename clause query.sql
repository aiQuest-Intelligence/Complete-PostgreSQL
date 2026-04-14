CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(100),
    gpa NUMERIC(3, 2)
);


INSERT INTO students (name, age, course, gpa) 
VALUES 
('zum', 18, 'Django', 3.95),
('Roji', 16, 'Django', 3.60),
('Raita', 12, 'Python', 3.90),
('Ridi', 10, 'ML', 3.45),
('Raha', 14, 'DL', 3.75),
('Marium', 8, 'Data Analysis', 3.95),
('Afnan', 17, 'Agentic AI', 3.80);


SELECT * FROM students;

-- WHERE
SELECT * FROM students WHERE gpa > 3.50;

-- ORDER BY
SELECT * FROM students ORDER BY age DESC;

-- DISTINCT
SELECT DISTINCT course FROM students;

-- LIMIT
SELECT * FROM students LIMIT 4;

-- LIKE
SELECT * FROM students WHERE name LIKE 'z%';