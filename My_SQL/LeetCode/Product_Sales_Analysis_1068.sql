-- Table 1 - Sales 
-- (sale_id, year) is the primary key (combination of columns with unique values) of this table.
-- product_id is a foreign key (reference column) to Product table.
-- Each row of this table shows a sale on the product product_id in a certain year.
-- Note that the price is per unit.
 
-- Table 2 - Product
-- product_id is the primary key (column with unique values) of this table.
-- Each row of this table indicates the product name of each product.

-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

-- SELECT p.product_name AS product_name,s.year AS year,s.price AS price
-- FROM sales AS s
-- LEFT JOIN product AS p
-- ON s.product_id=p.product_id;

SELECT product_name,year,price
FROM sales s
LEFT JOIN product p
ON s.product_id = p.product_id;