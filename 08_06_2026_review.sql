create table students (
    student_id int auto_increment primary key not null,
    student_first_name varchar(255) not null,
    student_last_name varchar(255) not null,
    student_course varchar(255) not null
);

create table books (
    book_id int auto_increment primary key not null,
    book_name varchar(255) not null
);

create table borrows (
    borrow_id int auto_increment primary key not null,
    student_id int not null,
    book_id int not null, 
    date_borrowed date not null,
    book_status varchar(255) not null
);