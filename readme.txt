1. CREATE DATABASE <database_name>;
2. SHOW DATABASES;
3. CONNECT <database_name>;
4. CREATE TABLE <table_name_in_plural>;
5. INSERT INTO <table_name_in_plural>
        (columns) VALUES
        (values);

# Utility Commands
\! cls 
mysqldump -u root -p --databases library_db > D:\dev\it30b\backups\date_db_name.sql
source D:\dev\it30b\backups\date_db_name.sql
mysqldump -u root -p --databases library_db > "D:\dev\it30b\backups\%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%_library_db.sql"

SELECT br.borrow_id, s.student_id,
        CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course,
        b.book_title, b.book_author, b.book_category,
        br.borrow_date
FROM borrow br
        JOIN students s ON br.student_id = s.student_id
        JOIN books b ON br.book_id = b.book_id
ORDER BY br.borrow_date DESC;