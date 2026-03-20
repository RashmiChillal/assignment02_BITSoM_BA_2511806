CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL
);

CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    region VARCHAR(50) NOT NULL
);

CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
🧪

INSERT INTO customers VALUES
('C001','Rahul Mehta','rahul@gmail.com','Mumbai'),
('C002','Priya Sharma','priya@gmail.com','Delhi'),
('C003','Amit Patel','amit@gmail.com','Ahmedabad'),
('C004','Neha Singh','neha@gmail.com','Pune'),
('C005','Arjun Verma','arjun@gmail.com','Bangalore');

INSERT INTO products VALUES
('P001','Laptop','Electronics'),
('P002','Mouse','Electronics'),
('P003','Keyboard','Electronics'),
('P004','Notebook','Stationery'),
('P005','Pen','Stationery');

INSERT INTO sales_reps VALUES
('S001','Ravi Kumar','West'),
('S002','Anita Roy','North'),
('S003','Vikas Shah','West'),
('S004','Pooja Nair','South'),
('S005','Karan Malhotra','North');

INSERT INTO orders VALUES
('ORD101','C001','S001','2024-01-10'),
('ORD102','C002','S002','2024-01-12'),
('ORD103','C003','S003','2024-01-15'),
('ORD104','C004','S004','2024-01-18'),
('ORD105','C005','S005','2024-01-20');

INSERT INTO order_items VALUES
(1,'ORD101','P001',1,50000),
(2,'ORD102','P004',3,50),
(3,'ORD103','P002',2,500),
(4,'ORD104','P003',1,1500),
(5,'ORD105','P005',10,20);