## Problem Statement: 

1. https://www.linkedin.com/feed/update/urn:li:activity:7412749557429764096/
-- coalesce(col, val) -> used to replace NULL values in column with a predefined value
-- string_to_array(col, delimiter) -> result in an array made by splitting the string value using delimiter
-- unnest(array_col) -> explode the array col to rows

2. https://www.linkedin.com/feed/update/urn:li:activity:7401208049450811392/

pivot_example - create table & insert querries

CREATE TABLE sales (
    product  VARCHAR(50),
    sales    DECIMAL(10, 2),
    quarter  VARCHAR(2),
    year     INT
);

INSERT INTO sales (product, sales, quarter, year) VALUES
('Laptop',      120000.50, 'Q1', 2024),
('Laptop',      135500.75, 'Q2', 2024),
('Laptop',      110300.00, 'Q3', 2024),
('Smartphone',   98000.00, 'Q1', 2024),
('Smartphone',  105450.25, 'Q2', 2024),
('Smartphone',  112600.90, 'Q3', 2024),
('Tablet',       45000.00, 'Q1', 2024),
('Tablet',       52000.40, 'Q2', 2024),
('Headphones',   23000.75, 'Q1', 2024),
('Headphones',   27500.60, 'Q2', 2024),
('Monitor',      61000.00, 'Q3', 2024);
