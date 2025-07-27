-- LeetCode 1174 - Immediate Food Delivery 1174

-- If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.

-- The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.

-- Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.

SELECT ROUND(SUM(IF(order_date=customer_pref_delivery_date,1,0))*100/COUNT(DISTINCT customer_id),2) AS immediate_percentage
FROM Delivery
WHERE (customer_id,order_date) IN
(
    SELECT customer_id,MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);