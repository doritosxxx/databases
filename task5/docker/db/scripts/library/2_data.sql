INSERT INTO "Publisher" ("PubName", "PubAddress") VALUES ('Русский вестник', 'Россия, г. Москва');
INSERT INTO "Publisher" ("PubName", "PubAddress") VALUES ('Издавалы', 'Россия, г. Екатеринбург');

INSERT INTO "Book" ("ISBN", "Title", "Author", "PagesNum", "PubYear", "PubName") VALUES (3, 'Война И Мир том 3', 'Лев Толстой', 350, '1865-01-01', 'Русский вестник');
INSERT INTO "Book" ("ISBN", "Title", "Author", "PagesNum", "PubYear", "PubName") VALUES (4, 'Война И Мир том 4', 'Лев Толстой', 200, '1865-01-01', 'Русский вестник');
INSERT INTO "Book" ("ISBN", "Title", "Author", "PagesNum", "PubYear", "PubName") VALUES (5, 'Горная книга', 'Иван Горный', 123, '1865-01-01', 'Издавалы');
INSERT INTO "Book" ("ISBN", "Title", "Author", "PagesNum", "PubYear", "PubName") VALUES (6, 'Книга о путешествиях', 'Сергей Путевод', 123, '1865-01-01', 'Издавалы');
INSERT INTO "Book" ("ISBN", "Title", "Author", "PagesNum", "PubYear", "PubName") VALUES (7, 'Путешествия в горах', 'Виктор Корнеплод', 123, '1865-01-01', 'Издавалы');
INSERT INTO "Book" ("ISBN", "Title", "Author", "PagesNum", "PubYear", "PubName") VALUES (1, 'Война И Мир том 1', 'Лев Толстой', 308, '1865-01-01', 'Русский вестник');
INSERT INTO "Book" ("ISBN", "Title", "Author", "PagesNum", "PubYear", "PubName") VALUES (2, 'Война И Мир том 2', 'Лев Толстой', 320, '1865-01-01', 'Русский вестник');

INSERT INTO "Reader" ("ID", "LastName", "FirstName", "Address", "BirthDate") VALUES (1, 'Жмышенко', 'Валерий', 'г. Самара', '12.04.2000');
INSERT INTO "Reader" ("ID", "LastName", "FirstName", "Address", "BirthDate") VALUES (2, 'Петров', 'Денис', 'г. Самара', '11.12.1489');
INSERT INTO "Reader" ("ID", "LastName", "FirstName", "Address", "BirthDate") VALUES (3, 'Абеба', 'Василий', 'г. Москва', '11.12.1967');
INSERT INTO "Reader" ("ID", "LastName", "FirstName", "Address", "BirthDate") VALUES (4, 'Петров', 'Петр', 'г. Москва', '23.05.1234');
INSERT INTO "Reader" ("ID", "LastName", "FirstName", "Address", "BirthDate") VALUES (5, 'Сорокина', 'Евдокия', 'г. Москва', '11.12.1967');
INSERT INTO "Reader" ("ID", "LastName", "FirstName", "Address", "BirthDate") VALUES (6, 'Михеева', 'Анна', 'г. Москва', '12.04.2000');
INSERT INTO "Reader" ("ID", "LastName", "FirstName", "Address", "BirthDate") VALUES (7, 'Иванов', 'Иван', 'г. Нижний Новгород', '12.23.4567');

INSERT INTO "Category" ("CategoryName", "ParentCat") VALUES ('Роман', null);
INSERT INTO "Category" ("CategoryName", "ParentCat") VALUES ('Горы', null);
INSERT INTO "Category" ("CategoryName", "ParentCat") VALUES ('Путешествия', null);

INSERT INTO "Copy" ("ISBN", "CopyNumber", "ShelfPosition") VALUES (1, 1, 1);
INSERT INTO "Copy" ("ISBN", "CopyNumber", "ShelfPosition") VALUES (1, 2, 2);
INSERT INTO "Copy" ("ISBN", "CopyNumber", "ShelfPosition") VALUES (1, 3, 3);
INSERT INTO "Copy" ("ISBN", "CopyNumber", "ShelfPosition") VALUES (2, 1, 4);
INSERT INTO "Copy" ("ISBN", "CopyNumber", "ShelfPosition") VALUES (2, 2, 5);
INSERT INTO "Copy" ("ISBN", "CopyNumber", "ShelfPosition") VALUES (2, 3, 6);
INSERT INTO "Copy" ("ISBN", "CopyNumber", "ShelfPosition") VALUES (4, 1, 7);
INSERT INTO "Copy" ("ISBN", "CopyNumber", "ShelfPosition") VALUES (4, 2, 8);


INSERT INTO "Borrowing" ("ReaderNr", "ISBN", "CopyNumber", "ReturnDate") VALUES (1, 1, 2, '2024-12-02');
INSERT INTO "Borrowing" ("ReaderNr", "ISBN", "CopyNumber", "ReturnDate") VALUES (7, 2, 1, '2024-12-02');
INSERT INTO "Borrowing" ("ReaderNr", "ISBN", "CopyNumber", "ReturnDate") VALUES (7, 4, 2, null);
INSERT INTO "Borrowing" ("ReaderNr", "ISBN", "CopyNumber", "ReturnDate") VALUES (2, 2, 1, null);
INSERT INTO "Borrowing" ("ReaderNr", "ISBN", "CopyNumber", "ReturnDate") VALUES (3, 4, 2, '2022-10-13');
INSERT INTO "Borrowing" ("ReaderNr", "ISBN", "CopyNumber", "ReturnDate") VALUES (3, 2, 1, null);

INSERT INTO "BookCat" ("ISBN", "CategoryName") VALUES (5, 'Горы');
INSERT INTO "BookCat" ("ISBN", "CategoryName") VALUES (6, 'Путешествия');
INSERT INTO "BookCat" ("ISBN", "CategoryName") VALUES (7, 'Горы');
INSERT INTO "BookCat" ("ISBN", "CategoryName") VALUES (7, 'Путешествия');