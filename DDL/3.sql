Here are table create and Insert statements:
CREATE TABLE Orders (
 Order_id int,
 Cust_id VARCHAR(10),
 Order_dt DATETIME,
 Order_amt DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO Orders 
VALUES
(1,'C1', '2025-01-01 09:15:00', 200.00),
(2,'C1', '2025-01-01 16:45:00', 150.00),
(3,'C2', '2025-01-01 10:20:00', 300.00),
(4,'C3', '2025-01-02 11:10:00', 250.00),
(5,'C1', '2025-01-02 13:00:00', 100.00),
(6,'C1', '2025-01-03 09:30:00', 180.00),
(7,'C2', '2025-01-03 15:50:00', 220.00);