CREATE TABLE book(
    id_book int Not Null,
    name varchar(50),
    category varchar(50),
    language varchar(50),
    Primary key(id_book)
);

CREATE TABLE library(
    id_library int Not Null,
    address varchar(50),
    opening_time date,
    Primary Key(id_library)
);

CREATE TABLE library_book(
    id int Not Null,
    id_book int Not Null,
    id_library int Not Null,
    status varchar(50),
    time varchar(50),
    Primary Key(id),
    Foreign Key(id_book) references book(id_book),
    Foreign Key(id_library) references library(id_library)
);