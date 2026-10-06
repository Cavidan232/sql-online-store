-- Butun musteri melumatlarini gosteren sorgu
-- SELECT * FROM customers;
-- Butun musteri melumatlarini gosteren sorgu
-- SELECT first_name, last_name, City FROM customers;
--Baki sehreinde yasanlar musteri melumatlarini gosteren sorgu
-- SELECT * FROM customers
-- WHERE City='Baku';

-- 25 yasdan boyuk olan musteri melumatlarini gosteren sorgu
-- SELECT first_name, last_name FROM customers
-- WHERE age>25;

-- SELECT * FROM customers

-- Order BY age DESC;

--her seherde yasayan musterilerin sayini gosteren sorgu

-- SELECT City, COUNT(*) as customer_count
-- FROM customers
-- GROUP BY City;
-- join ile musterilerin sifarislerini gosteren sorgu
SELECT
    customers.first_name,
    customers.last_name,
    orders.order_id,
    orders.order_date
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id;