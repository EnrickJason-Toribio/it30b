create table student (
    student_id int auto_increment primary key not null,
    student_last_name varchar(255) not null,
    student_first_name varchar(255) not null,
    student_course varchar(255) not null
);

create table book (
    book_id int auto_increment primary key not null,
    book_name varchar(255) not null
);

create table borrow (
    borrow_id int auto_increment primary key not null,
    student_id int not null,
    book_id int not null, 
    date_borrowed date not null,
    book_status varchar(255) not null
);

alter table borrow add constraint fk_student_id foreign key (student_id) references student(student_id);

alter table borrow add constraint fk_book_id foreign key (book_id) references book(book_id);