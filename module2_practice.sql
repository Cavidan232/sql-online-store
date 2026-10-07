-- orders cədvəlindən:

-- order_id
-- order_date
-- status

-- sütunlarını göstər və sifarişləri order_date-a görə yenidən köhnəyə sırala.
-- SELECT order_id, order_date, status FROM orders
-- ORDER BY order_date DESC

-- SELECT order_id, order_date,customer_id,status FROM orders
-- WHERE status='Delivered'
-- ORDER BY order_date DESC;


-- SELECT order_id, order_date, customer_id FROM orders
-- WHERE order_date>'2025-06-01'

--customersden yasi 30 dan boyuk olanlar
-- SELECT customer_id first_name, last_name, age FROM customers
-- WHERE age>30

-- Bakı və Mingəçevir müştərilərinin 50 AZN-dən baha məhsullarını kateqoriyalar üzrə göstəririk.
-- Nəticə məhsul qiymətinə görə böyükdən kiçiyə sıralanır.


SELECT customers.first_name,
       customers.last_name,
       customers.city,
       products.product_name,
       products.price,
       categories.category_name
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
JOIN order_items
    ON orders.order_id = order_items.order_id
JOIN products
    ON order_items.product_id = products.product_id
JOIN categories
    ON products.category_id = categories.category_id
WHERE customers.city IN ('Bakı', 'Mingəçevir')
  AND products.price > 50
ORDER BY products.price DESC;


-- Bakı və Lənkəran müştərilərinin 100 AZN-dən baha məhsullarını kateqoriyaları ilə göstəririk.
-- Nəticə şəhərə, daha sonra məhsul qiymətinə görə sıralanır.
SELECT customers.first_name,
       customers.last_name,
       customers.city,
       products.product_name,
       products.price,
       categories.category_name
FROM customers

JOIN orders
    ON customers.customer_id = orders.customer_id

JOIN order_items
    ON orders.order_id = order_items.order_id

JOIN products
    ON order_items.product_id = products.product_id

JOIN categories
    ON products.category_id = categories.category_id

WHERE customers.city IN ('Bakı', 'Lənkəran')
  AND products.price > 100

ORDER BY customers.city,
         products.price DESC;