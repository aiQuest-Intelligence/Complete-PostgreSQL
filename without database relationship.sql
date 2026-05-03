CREATE TABLE student_info (
    name VARCHAR(50),
    course VARCHAR(50),
    teacher VARCHAR(50)
);

-- Data insert 
INSERT INTO student_info VALUES
('Roji', 'Django', 'Mr. Noman'),
('Raita', 'Django', 'Mr. Noman'),
('Ridi', 'Django', 'Mr. Noman'),
('Marium', 'Python', 'Azizul'),
('Afnan', 'Python', 'Azizul');

-- data read
SELECT * FROM student_info;

-- update data
UPDATE student_info SET teacher = 'Mr. Basar' WHERE course = 'Django';


-- Deletion Anomaly
DELETE FROM student_info WHERE course = 'Django';