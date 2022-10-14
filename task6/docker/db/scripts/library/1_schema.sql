CREATE TABLE "Reader" (
  "ID" SERIAL PRIMARY KEY,
  "LastName" TEXT,
  "FirstName" TEXT,
  "Address" TEXT,
  "BirthDate" TEXT
);

CREATE TABLE "Publisher" (
  "PubName" TEXT PRIMARY KEY,
  "PubAddress" TEXT
);

CREATE TABLE "Book" (
  "ISBN" INT PRIMARY KEY,
  "Title" TEXT,
  "Author" TEXT,
  "PagesNum" INT,
  "PubYear" DATE,
  "PubName" TEXT 
);

ALTER TABLE "Book" ADD FOREIGN KEY ("PubName") REFERENCES "Publisher" ("PubName");

CREATE TABLE "Category" (
  "CategoryName" TEXT PRIMARY KEY,
  "ParentCat" TEXT
);

ALTER TABLE "Category" ADD FOREIGN KEY ("ParentCat") REFERENCES "Category" ("CategoryName");

CREATE TABLE "Copy" (
  "ISBN" INT,
  "CopyNumber" INT,
  "ShelfPosition" INT,
  PRIMARY KEY ("ISBN", "CopyNumber")
);

ALTER TABLE "Copy" ADD FOREIGN KEY ("ISBN") REFERENCES "Book" ("ISBN");

CREATE TABLE "Borrowing" (
  "ReaderNr" INT,
  "ISBN" INT,
  "CopyNumber" INT,
  "ReturnDate" DATE,
  PRIMARY KEY ("ReaderNr", "CopyNumber")
);

ALTER TABLE "Borrowing" ADD FOREIGN KEY ("ReaderNr") REFERENCES "Reader" ("ID");
ALTER TABLE "Borrowing" ADD FOREIGN KEY ("CopyNumber", "ISBN") REFERENCES "Copy" ("CopyNumber", "ISBN");

CREATE TABLE "BookCat" (
  "ISBN" INT,
  "CategoryName" TEXT,
  PRIMARY KEY ("ISBN", "CategoryName")
);

ALTER TABLE "BookCat" ADD FOREIGN KEY ("ISBN") REFERENCES "Book" ("ISBN");
ALTER TABLE "BookCat" ADD FOREIGN KEY ("CategoryName") REFERENCES "Category" ("CategoryName");
