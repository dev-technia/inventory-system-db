-- Insert sample categories
INSERT INTO categories VALUES 
(1, 'Electronics'),
(2, 'Apparel'),
(3, 'Home Goods');

-- Insert sample suppliers
INSERT INTO suppliers VALUES 
(1, 'West Coast Tech Supply', 'wctech@example.com', '206-555-1000'),
(2, 'Fashion Wave Distributors', 'fashionwave@example.com', '206-555-2000'),
(3, 'Home Essentials Co.', 'homeessentials@example.com', '206-555-3000');

-- Insert sample products
INSERT INTO products VALUES 
(1, 'Wireless Mouse', 'Bluetooth mouse with ergonomic design', 1, 1, 25.99),
(2, 'Denim Jacket', 'Unisex medium wash denim jacket', 2, 2, 45.00),
(3, 'Air Purifier', 'HEPA filter compact purifier for bedrooms', 3, 3, 85.75);

-- Insert sample inventory
INSERT INTO inventory VALUES 
(1, 1, 40, 'Warehouse A', '2025-07-20'),
(2, 2, 15, 'Warehouse B', '2025-07-20'),
(3, 3, 8, 'Warehouse C', '2025-07-20');

-- Insert sample purchase orders
INSERT INTO purchase_orders VALUES 
(1, 1, '2025-07-01', '2025-07-10', 'Delivered'),
(2,
