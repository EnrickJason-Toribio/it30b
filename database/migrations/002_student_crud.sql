-- Student SQL#1 : select all students
SELECT * FROM students;

-- Student SQL#2 : select students in asc order by id;
SELECT * FROM students
    ORDER BY student_id ASC;

-- Student SQL#3 : select students in desc order by id;
SELECT * FROM students
    ORDER BY student_id DESC;

-- Student SQL#4 : select students in asc order by last_name;
SELECT * FROM students
    ORDER BY student_last_name ASC;

-- Student SQL#5 : select students in desc order by last_name;
SELECT * FROM students
    ORDER BY student_last_name DESC;

-- Student SQL#6 : select students in asc order by first_name;
SELECT * FROM students
    ORDER BY student_first_name ASC;

-- Student SQL#7 : select students in desc order by first_name;
SELECT * FROM students
    ORDER BY student_first_name DESC;

-- You can modify displayed columns by selecting specific columns after SELECT command
-- Student SQL#8 : display all students first_name and last_name
SELECT  student_first_name,
        student_last_name
    FROM students
    ORDER BY student_first_name ASC;

-- Student SQL#9 : LIMIT 1
SELECT  student_first_name,
        student_last_name
    FROM students
    ORDER BY student_first_name ASC
    LIMIT 1;

-- Student SQL#10 : Select a student based on id
SELECT  student_first_name,
        student_last_name
    FROM students
    WHERE student_id = 1
    LIMIT 1;

-- Student SQL#11 : update student name based on id
UPDATE students
    SET student_first_name='Enrick Jason',
        student_last_name='Impuesto'
    WHERE student_id = 2;