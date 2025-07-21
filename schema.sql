-- PRODUCTS TABLE
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    category_id INT,
    supplier_id INT,
    price DECIMAL(8,2),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

-- CATEGORIES TABLE
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- SUPPLIERS TABLE
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    contact_email VARCHAR(100),
    phone VARCHAR(20)
);

-- INVENTORY TABLE
CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY,
    product_id INT,
    quantity_in_stock INT,
    warehouse_location VARCHAR(100),
    last_updated DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- PURCHASE ORDERS TABLE
CREATE TABLE purchase_orders (
    order_id INT PRIMARY KEY,
    supplier_id INT,
    order_date DATE,
    expected_delivery DATE,
    status VARCHAR(50),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

-- ORDER ITEMS TABLE
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity_ordered INT,
    unit_price DECIMAL(8,2),
    FOREIGN KEY (order_id) REFERENCES purchase_orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
