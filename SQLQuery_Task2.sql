CREATE TABLE sales (
  sale_id INT PRIMARY KEY,
  sale_date DATE,
  sale_amount DECIMAL(10,2)
);


INSERT INTO sales ( sale_id,sale_date, sale_amount)
VALUES(1,'2022-01-01', 100.00);
  
INSERT INTO sales ( sale_id,sale_date, sale_amount)
VALUES (2,'2022-01-02', 50.00);
  
  INSERT INTO sales ( sale_id,sale_date, sale_amount)
  VALUES(3,'2022-01-15', 75.00);

  INSERT INTO sales ( sale_id,sale_date, sale_amount)
  VALUES(4,'2022-02-01', 200.00);

  INSERT INTO sales ( sale_id,sale_date, sale_amount)
  VALUES(5,'2022-02-05', 150.00);

  INSERT INTO sales ( sale_id,sale_date, sale_amount)
  VALUES(6,'2022-02-20', 175.00);



  select * from sales;

  /*Q1*/

  select sum(sale_amount) AS Sale_Month from sales GROUP BY DATEPART (month, sale_date);
  

  /*Q2:*/ 

  select AVG(sale_amount) from sales;

  /*Q3:*/ 

  select count(sale_id) from sales ;

  /*Q4:*/ 

  SELECT MIN(sale_amount) AS LOWES_AMOUNT
  FROM sales;

  SELECT MAX(sale_amount) AS HIGHEST_AMOUNT
  FROM sales;

/*Q5: */

select * from sales order by sale_id DESC;

/*Q6: */

select * from sales where sale_date between '01-01-2022' and '01-02-2022';