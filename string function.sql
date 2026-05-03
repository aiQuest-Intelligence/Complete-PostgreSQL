CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(100),
    gpa NUMERIC(3, 2)
);


INSERT INTO students (name, age, course, gpa) 
VALUES 
('sinha', 24, 'Django', 3.99),
-- ('nuha', 13, 'Django', 3.95, 'nuha@gmail.com'),
-- ('risty',19,'DS'),
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

-- Relational
-- equal to =
SELECT * FROM students
WHERE course = 'Django';

-- not equal to !=
SELECT * FROM students
WHERE course != 'Django';

-- grater than >
SELECT * FROM students
WHERE age>10;

-- lessr than <
SELECT * FROM students
WHERE age<10;

-- grater than or equal >=
SELECT * FROM students
WHERE age>=10;

-- lessr than or equal <=
SELECT * FROM students
WHERE age<=10;

-- Logical operator
-- AND
SELECT * FROM students
WHERE course = 'ML'
AND gpa >= 3.30;

-- OR
SELECT * FROM students
WHERE course = 'ML'
OR gpa >= 3.80;

-- NOT
SELECT * FROM students
WHERE NOT course = 'Django'

-- Special operator
-- Between
SELECT * FROM students
WHERE age 
BETWEEN 12 AND 16;

-- IN
SELECT * FROM students
WHERE course
IN('Django', 'ML');

-- Null
SELECT * FROM students
WHERE gpa is NULL;

-- SUM
SELECT SUM(age) AS toatal_age FROM students;

-- count
SELECT COUNT(*) AS total_students FROM students;

-- AVG
SELECT AVG(gpa) AS avg_gpa FROM students;

-- max
SELECT MAX(age) AS maximum_age FROM students;

-- min
SELECT MIN(age) AS maximum_age FROM students;

-- ROUND
SELECT ROUND(AVG(gpa),3) AS avg_gpa FROM students;

-- GROUP BY
SELECT course, COUNT(*) AS student_count, ROUND(AVG(gpa),2) AS avg_gpa
FROM students
GROUP BY course;

-- HAVING
SELECT course, ROUND(AVG(gpa),2)
FROM students GROUP BY course
HAVING AVG(gpa)>3.80;

-- CONACT()
SELECT
	CONCAT(name , ' is studing ', course) AS student_info
FROM students;

-- UPPER() & LOWER()
SELECT 
	name,
	UPPER(name) AS name_upper,
	LOWER(name) AS name_lower
FROM students;

-- LENGTH()
SELECT
	name,
	course,
	LENGTH(name) AS name_len,
	LENGTH(course) AS course_len
FROM students;

-- SUBSTRING()
SELECT
	name,
	SUBSTRING(name, 1,3) AS first_3,
	SUBSTRING(course, 1,4) AS first_4
FROM students;

-- REPLACE
SELECT
	name,
	course,
	REPLACE(course, 'Django', 'Django Master') AS Updated_course
FROM students
WHERE course = 'Django';

-- TRIM()
SELECT
	'    MARIUM   ' AS new_name,
	TRIM('    MARIUM   ') as trimed,
	LTRIM('    MARIUM   ') as left_trim,
	RTRIM('    MARIUM   ') as right_trim
	


-- Query
-- CREATE TABLE students (
--   student_id SERIAL PRIMARY KEY,
--   name       VARCHAR(50)   NOT NULL,
--   age        INT           CHECK (age >= 5 AND age <= 25),
--   course     VARCHAR(100),
--   gpa        NUMERIC(3,2)  CHECK (gpa >= 0.0 AND gpa <= 4.0)
-- );


-- Column add
ALTER TABLE students
	ADD COLUMN email VARCHAR(100);

ALTER TABLE students
	ADD COLUMN enrolled_at DATE DEFAULT CURRENT_DATE;


-- DROP COLUMN
ALTER TABLE students
	DROP COLUMN email;

-- RENAME COLUMN
ALTER TABLE students
	RENAME COLUMN full_name TO name;

-- RENAME TABLE NAME
ALTER TABLE learners
	RENAME TO students;


SELECT * FROM students

-- CHECK CONSTRAINT
ALTER TABLE students
	ADD CONSTRAINT chk_age
CHECK (age>=5 AND age <= 25);

ALTER TABLE students
	ADD CONSTRAINT chk_gpa
CHECK (gpa>=0 AND gpa<=4);


	