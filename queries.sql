-- 1. Show all products with stock less than 10 units
SELECT p.name, i.quantity_in_stock, i.warehouse_location
FROM products p
JOIN inventory i ON p.product_id = i.product_id
WHERE i.quantity_in_stock < 10;

-- 2. Total value of current inventory
SELECT SUM(p.price * i.quantity_in_stock) AS total_inventory_value
FROM products p
JOIN inventory i ON p.product_id = i.product_id;

-- 3. Top 2 suppliers by number of products they supply
SELECT s.supplier_name, COUNT(p.product_id) AS total_products
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_name
ORDER BY total_products DESC
LIMIT 2;

-- 4. All purchase orders that are still pending
SELECT order_id, order_date, expected_delivery, status
FROM purchase_orders
WHERE status = 'Pending';

-- 5. Products ordered in bulk (more than 15 units)
SELECT p.name, oi.qu
