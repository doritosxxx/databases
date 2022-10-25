--1
SELECT "LastName"
FROM "Reader"
WHERE "Address" LIKE '%Москва%';

--2
SELECT "Author", "Title" FROM "Book" Book
    JOIN "Borrowing" Borrowing on Book."ISBN" = Borrowing."ISBN"
    JOIN "Reader" Reader on Borrowing."ReaderNr" = Reader."ID"
WHERE Reader."FirstName" = 'Иван' AND Reader."LastName" = 'Иванов'

--3
SELECT "ISBN" FROM "BookCat"
WHERE "CategoryName" = 'Горы'
EXCEPT
SELECT "ISBN" FROM "BookCat"
WHERE "CategoryName" = 'Путешествия';

--4
SELECT "FirstName", "LastName" FROM "Reader"
    JOIN "Borrowing" B on "Reader"."ID" = B."ReaderNr"
WHERE B."ReturnDate" IS NULL;

--5
SELECT DISTINCT "FirstName", "LastName" FROM "Reader"
    JOIN "Borrowing" B on "Reader"."ID" = B."ReaderNr"
WHERE B."ISBN" IN (
    SELECT "ISBN" FROM "Borrowing"
        JOIN "Reader" R on "ReaderNr" = R."ID"
    WHERE R."FirstName" = 'Иван'
    AND R."LastName" = 'Иванов'
)
AND NOT ("FirstName" = 'Иван' AND "LastName" = 'Иванов');