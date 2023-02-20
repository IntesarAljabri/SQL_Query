/* Second table */

CREATE TABLE books(

    id INT  NOT NULL  IDENTITY  PRIMARY KEY,
    title text,
    author text,
	price float
);


INSERT INTO books (title, author, price) VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', 10.99);
INSERT INTO books (title, author, price) VALUES ('To Kill a MockingbirdThe Great Gatsby', 'Harper Lee', 12.50);
INSERT INTO books (title, author, price) VALUES ('1984', 'George Orwell', 8.99);
INSERT INTO books (title, author, price) VALUES ('Pride and Prejudice', 'Jane Austen',  9.75);


select  title , author, price from books where price >10.00 ;


/* third table */

CREATE TABLE students(

    id INT  NOT NULL  IDENTITY  PRIMARY KEY,
    name text,
    age int,
	major text,
	gpa float,
);


INSERT INTO students (name, age, major, gpa) VALUES ('John Smith',22, 'Computer Science', 3.8);
INSERT INTO students (name, age, major, gpa) VALUES ('Sarah Johnson',20, 'Biology', 3.2);
INSERT INTO students (name, age, major, gpa) VALUES ('Michael Brown',24, 'Business', 3.5);
INSERT INTO students (name, age, major, gpa) VALUES ('Emily Wilson',21, 'English', 3.9);
INSERT INTO students (name, age, major, gpa) VALUES (' David Lee',23, 'Psychology', 3.6);


select name, age, major ,gpa from students where gpa >3.5 ;




/* fourth table */ 

CREATE TABLE orders(

    id INT  NOT NULL  IDENTITY  PRIMARY KEY,
    product_name text,
	customer_name text,
	order_date date,
	quantity int,
);


INSERT INTO orders ( product_name, customer_name, order_date,quantity)
             VALUES ('Widget A','John Smith', '2023-02-14 ', 5);

INSERT INTO orders ( product_name, customer_name, order_date,quantity)
             VALUES (' Widget B','Sarah Johnson',' 2023-02-13', 3);

INSERT INTO orders ( product_name, customer_name, order_date,quantity)
             VALUES ('Widget C','Michael Brown', '2023-02-12', 7);

select * from orders;

select product_name ,customer_name ,order_date ,quantity from orders where order_date >= '2023-02-13' ;



/* fifth table */


CREATE TABLE customers(

    customer_id INT PRIMARY KEY,
    customer_name text,
	 email text,
	phone_number text,
);

INSERT INTO customers VALUES (1,'John Smith','john.smith@example.com','555-555-1212');
INSERT INTO customers VALUES (2,'Jane Doe','jane.doe@example.com','555-555-2323');
INSERT INTO customers VALUES (3,'Bob Brown','bob.brown@example.com','555-555-3434');


select * from customers;
select email , phone_number , customer_name from customers where phone_number like '%3%' ;




/* sixth table */

CREATE TABLE product(

    product_id INT PRIMARY KEY,
    product_name text,
	category text,
	price decimal,
	quantity_in_stock int,
);

INSERT INTO product VALUES (1,'iPhone','Electronics',999.99,100);
INSERT INTO product VALUES (2,'Samsung Galaxy','Electronics', 799.99,50);
INSERT INTO product VALUES (3,'Nike Air Max','Electronics',119.99,200);

select * from product;
select product_id, product_name,price from product ORDER BY price DESC;



/* seventh table */

CREATE TABLE movies(

  movie_id int primary key,
  movie_title text,
  director text,
  genre text,
  release_year int,


);


INSERT INTO movies VALUES (1,'The Shawshank Redemption','Frank Darabont','Drama',1994);
INSERT INTO movies VALUES (2,'The Godfather','Francis Ford Coppola','Drama',1972);
INSERT INTO movies VALUES (3,'The Dark Knight','Christopher Nolan','Action',2008);


select * from movies;
select movie_id,movie_title , director from movies where genre like 'Drama' ;


/* Eight table */

CREATE TABLE inventory(

  product_id int  primary key ,
  product_name text,
  supplier text,
  category text,
  quantity int,
  price real,

);


INSERT INTO inventory VALUES (1,'iPhone 13','Apple Inc','Electronics',10,999.99);
INSERT INTO inventory VALUES (2,'Kindle Paperwhite','Amazon','Books & Media',20,129.99);
INSERT INTO inventory VALUES (3,'Nike Air Max 90','Nike Inc','Apparel',5,119.99);

select * from inventory;
select product_id , product_name , price from inventory where quantity > =10 ;
select * from inventory where price = 5 ;


/* to update the salary in table employees*/ 
update employees set salary = 31000.49 where salary < 55000;
select *  from employees;

/* to drop table */
drop table books;

/* to add new column in table students */
 alter table students add student_email varchar(50);
update  students  SET student_email ='jhon@gmail.com' where id=1;
update  students  SET student_email ='sarah@gmail.com' where id=2;
update  students  SET student_email ='michael@gmail.com' where id=3;
update  students  SET student_email ='emily@gmail.com' where id=4;
update  students  SET student_email ='david@gmail.com' where id=5;

select * from students;