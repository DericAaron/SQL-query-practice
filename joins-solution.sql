--1.
SELECT * FROM customers
JOIN addresses ON customers.id = addresses.customer_id;

--2.
SELECT * FROM orders
JOIN line_items ON orders.id = line_items.order_id;

--3.
SELECT warehouse.warehouse, products.description, warehouse_product.on_hand FROM warehouse_product
JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'cheetos';

--4.
SELECT warehouse.warehouse, products.description, warehouse_product.on_hand FROM warehouse_product
JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'diet pepsi';

--5.
SELECT customers.first_name, COUNT(*) FROM customers
JOIN addresses ON customers.id = addresses.customer_id
JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.first_name;

--6.
SELECT COUNT(customers) FROM customers;


--7.
SELECT COUNT(products) FROM products;

--8.
SELECT SUM(warehouse_product.on_hand) FROM warehouse_product
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'diet pepsi';