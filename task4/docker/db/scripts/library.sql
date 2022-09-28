CREATE TABLE "public.Readers" (
	"id" serial,
	"first_name" VARCHAR(255) NOT NULL,
	"last_name" VARCHAR(255) NOT NULL,
	"address" VARCHAR(255) NOT NULL,
	"birth_date" DATE NOT NULL,
	"book_id" integer NOT NULL,
	CONSTRAINT "Readers_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Books" (
	"id" serial,
	"ISBN" serial NOT NULL,
	"year" integer NOT NULL,
	"name" VARCHAR(255),
	"author" VARCHAR(255) NOT NULL,
	"page_amount" integer NOT NULL,
	CONSTRAINT "Books_pk" PRIMARY KEY ("id","ISBN")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Categories" (
	"id" serial,
	"name" VARCHAR(255),
	"supercategory_id" integer,
	CONSTRAINT "Categories_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.BookCopies" (
	"id" serial NOT NULL,
	"shelf_position" integer NOT NULL,
	"copy_number" integer NOT NULL,
	CONSTRAINT "BookCopies_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Publishers" (
	"id" serial,
	"name" VARCHAR(255) NOT NULL,
	"address" VARCHAR(255) NOT NULL,
	CONSTRAINT "Publishers_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.BookCategories" (
	"book_id" integer NOT NULL,
	"category_id" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.BookPublishers" (
	"book_id" integer NOT NULL,
	"publisher_id" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.BookBookCopies" (
	"book_id" integer NOT NULL,
	"book_copy_id" integer NOT NULL
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Readers" ADD CONSTRAINT "Readers_fk0" FOREIGN KEY ("book_id") REFERENCES "BookCopies"("id");


ALTER TABLE "Categories" ADD CONSTRAINT "Categories_fk0" FOREIGN KEY ("supercategory_id") REFERENCES "Categories"("id");



ALTER TABLE "BookCategories" ADD CONSTRAINT "BookCategories_fk0" FOREIGN KEY ("book_id") REFERENCES "Books"("id");
ALTER TABLE "BookCategories" ADD CONSTRAINT "BookCategories_fk1" FOREIGN KEY ("category_id") REFERENCES "Categories"("id");

ALTER TABLE "BookPublishers" ADD CONSTRAINT "BookPublishers_fk0" FOREIGN KEY ("book_id") REFERENCES "Books"("id");
ALTER TABLE "BookPublishers" ADD CONSTRAINT "BookPublishers_fk1" FOREIGN KEY ("publisher_id") REFERENCES "Publishers"("id");

ALTER TABLE "BookBookCopies" ADD CONSTRAINT "BookBookCopies_fk0" FOREIGN KEY ("book_id") REFERENCES "Books"("id");
ALTER TABLE "BookBookCopies" ADD CONSTRAINT "BookBookCopies_fk1" FOREIGN KEY ("book_copy_id") REFERENCES "BookCopies"("id");









