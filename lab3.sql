create table books (
    book_id int auto_increment primary key not null,
    book_title varchar(100) not null,
    book_author varchar(100) not null,
    book_category varchar(50) not null,
    book_created_at timestamp not null default current_timestamp
);

create table borrow (
    borrow_id int auto_increment primary key not null,
    student_id int not null,
    book_id int not null, 
    borrow_date timestamp not null default current_timestamp,
    borrow_return_date timestamp null default null,
    constraint fk_borrow_student foreign key(student_id) references students(student_id),
    constraint fk_borrow_book foreign key(book_id) references books(book_id)
);

SELECT br.borrow_id, s.student_id,
        CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course,
        b.book_title, b.book_author, b.book_category,
        br.borrow_date
FROM borrow br
        JOIN students s ON br.student_id = s.student_id
        JOIN books b ON br.book_id = b.book_id
ORDER BY br.borrow_date DESC;

-- Alter the borrow_return_date column to allow NULL values and set the default to NULL
ALTER TABLE borrow MODIFY borrow_return_date TIMESTAMP NULL DEFAULT NULL;

UPDATE borrow SET borrow_return_date = NULL WHERE borrow_return_date = '2026-08-25 08:23:52';

-- Return a book by updating the borrow_return_date to the current timestamp

UPDATE borrow SET borrow_return_date = CURRENT_TIMESTAMP WHERE borrow_id = 1 AND borrow_return_date IS NULL;

SELECT br.borrow_id, s.student_id,
        CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course,
        b.book_title, b.book_author, b.book_category,
        br.borrow_date, br.borrow_return_date
FROM borrow br
        JOIN students s ON br.student_id = s.student_id
        JOIN books b ON br.book_id = b.book_id
WHERE br.borrow_return_date IS NOT NULL
ORDER BY br.borrow_date DESC;