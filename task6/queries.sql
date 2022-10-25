-- 1
SELECT "Title", "PubName" FROM "Book";

-- 2
SELECT "Title" FROM "Book"
WHERE "PagesNum" = (SELECT MAX("PagesNum") FROM "Book")
LIMIT 1;

-- 3
SELECT "Author", COUNT("Author")
FROM "Book"
GROUP BY ROLLUP("Author")
HAVING COUNT("Author") > 5
AND "Author" IS NOT NULL;

-- 4
SELECT "Title", "PagesNum" FROM "Book"
WHERE "PagesNum"*2 > (
    SELECT AVG("PagesNum") FROM "Book"
);

-- 5
SELECT DISTINCT Parent."CategoryName" FROM "Category" Child
INNER JOIN "Category" Parent ON Child."ParentCat" = Parent."CategoryName";

-- 6
SELECT "Author", COUNT("Book")
FROM "Book"
GROUP BY "Author"
ORDER BY "count" DESC
LIMIT 1;

-- 7
SELECT "FirstName", "LastName" FROM (
    SELECT DISTINCT ON ("ReaderNr", "ISBN") "FirstName", "LastName"
    FROM "Borrowing"
        JOIN "Reader" R on R."ID" = "Borrowing"."ReaderNr"
    WHERE "ISBN" IN (SELECT "ISBN" FROM "Book" WHERE "Author" = 'Марк Твен')
) as BRN
GROUP BY "FirstName", "LastName"
HAVING count(*) = (SELECT count(*) FROM "Book" WHERE "Author" = 'Марк Твен')

-- 8
SELECT "Title" FROM "Copy"
    JOIN "Book" B on B."ISBN" = "Copy"."ISBN"
GROUP BY "Title"
HAVING count(*) > 1;

-- 9
SELECT "Title", "PubYear" FROM "Book"
ORDER BY "PubYear"
LIMIT 10;

-- 10
WITH RECURSIVE subcategories AS (
    SELECT "CategoryName", "ParentCat" FROM "Category"
    WHERE "CategoryName" = 'Спорт'

    UNION

    SELECT "Category"."CategoryName", "Category"."ParentCat" FROM "Category"
    JOIN subcategories ON "Category"."ParentCat" = subcategories."CategoryName"
)
SELECT "CategoryName" FROM subcategories;

-- 1
INSERT INTO "Borrowing" ("ReaderNr", "ISBN", "CopyNumber", "ReturnDate")
VALUES (
    (SELECT "ID" FROM "Reader" WHERE "FirstName" = 'Василий' AND "LastName" = 'Петров')
    ,123456, 4, null
);

-- 2
DELETE FROM "Book"
WHERE "PubYear" > '01.01.2000';

-- 3
UPDATE "Borrowing"
    SET "ReturnDate" = "ReturnDate" + 30
FROM "BookCat"
WHERE "Borrowing"."ISBN" = "BookCat"."ISBN"
AND "CategoryName" = 'Путешествия'
AND "ReturnDate" > '01.01.2016';
