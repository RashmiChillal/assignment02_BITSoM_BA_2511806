-- =========================
-- DIMENSION TABLES
-- =========================

-- DATE DIMENSION
CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    full_date DATE NOT NULL,
    month INTEGER NOT NULL,
    year INTEGER NOT NULL
);

-- STORE DIMENSION
CREATE TABLE dim_store (
    store_id INTEGER PRIMARY KEY,
    store_name TEXT NOT NULL,
    city TEXT NOT NULL
);

-- PRODUCT DIMENSION
CREATE TABLE dim_product (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL
);

-- =========================
-- FACT TABLE
-- =========================

CREATE TABLE fact_sales (
    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
    date_id INTEGER NOT NULL,
    store_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    total_amount REAL NOT NULL,

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- =========================
-- INSERT CLEANED DATA
-- =========================

-- CLEANED DATES (standard format YYYY-MM-DD)
INSERT INTO dim_date VALUES
(1, '2024-01-01', 1, 2024),
(2, '2024-01-05', 1, 2024),
(3, '2024-01-10', 1, 2024),
(4, '2024-02-01', 2, 2024),
(5, '2024-02-10', 2, 2024);

-- CLEANED STORES
INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore');

-- CLEANED PRODUCTS (STANDARDIZED CATEGORY CASE)
INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'T-Shirt', 'Clothing'),
(3, 'Milk', 'Groceries'),
(4, 'Headphones', 'Electronics'),
(5, 'Jeans', 'Clothing');

-- FACT TABLE (AT LEAST 10 ROWS)
INSERT INTO fact_sales (date_id, store_id, product_id, quantity, total_amount) VALUES
(1, 1, 1, 1, 50000),
(1, 2, 2, 2, 1600),
(2, 1, 3, 5, 300),
(2, 3, 4, 1, 2000),
(3, 2, 5, 2, 4000),
(3, 1, 2, 3, 2400),
(4, 3, 1, 1, 52000),
(4, 2, 3, 4, 240),
(5, 1, 4, 2, 4000),
(5, 3, 5, 1, 2000);
