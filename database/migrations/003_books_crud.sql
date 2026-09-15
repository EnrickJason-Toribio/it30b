SELECT * FROM books;

SELECT * FROM books
    ORDER BY book_id ASC;

SELECT * FROM books
    ORDER BY book_id DESC;

SELECT * FROM books
    ORDER BY book_title ASC;

SELECT * FROM books
    ORDER BY book_title DESC;

SELECT * FROM books
    ORDER BY book_author ASC;

SELECT * FROM books
    ORDER BY book_author DESC;

SELECT * FROM books
    ORDER BY book_category ASC;

SELECT * FROM books
    ORDER BY book_category DESC;

SELECT  book_title,
        book_author
    FROM books
    ORDER BY book_title ASC;

SELECT  book_title,
        book_author
    FROM books
    ORDER BY book_title ASC
    LIMIT 1;

SELECT  book_title,
        book_author
    FROM books
    WHERE book_id = 1
    LIMIT 1;

UPDATE books
    SET book_title='Sa Aking Mga Kabata',
        book_author='Jose Rizal',
        book_category='Poem'
    WHERE book_id = 1;