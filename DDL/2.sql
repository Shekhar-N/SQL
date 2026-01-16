CREATE TABLE EmployeeSales (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    ManagerID INT,
    HireDate DATE,
    MonthlySalary INT,
    SalesAmount INT,
    Month DATE
);


INSERT INTO EmployeeSales
(EmployeeID, EmployeeName, Department, ManagerID, HireDate, MonthlySalary, SalesAmount, Month)
VALUES
(1, 'Alice', 'Sales', 101, '2020-01-01', 90000, 150000, '2025-01-01'),
(1, 'Alice', 'Sales', 101, '2020-01-01', 90000, 200000, '2025-02-01'),
(2, 'Bob', 'Sales', 101, '2021-03-15', 85000, 100000, '2025-01-01'),
(2, 'Bob', 'Sales', 101, '2021-03-15', 85000, 120000, '2025-02-01'),
(3, 'Carol', 'HR', 102, '2019-07-10', 95000, 0, '2025-01-01'),
(4, 'David', 'HR', 102, '2020-06-25', 87000, 0, '2025-02-01'),
(5, 'Evan', 'IT', 103, '2022-05-05', 80000, 60000, '2025-01-01'),
(5, 'Evan', 'IT', 103, '2022-05-05', 80000, 75000, '2025-02-01');
