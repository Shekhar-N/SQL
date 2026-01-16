-- 1. For each employee calculate: Total sales, average monthly sales.
SELECT 
    employeeid, 
    employeename,
    sum(salesamount) as total_sales,
    round(avg(salesamount), 2) as avg_monthly_sales
FROM employeesales
GROUP BY employeeid, employeename
ORDER BY employeeid; 

-- 2. Rank employees within each department based on total sales.
SELECT
    employeeid,
    employeename,
    department,
    RANK() OVER (PARTITION BY department ORDER BY salesamount DESC) as rank
FROM employeesales;

-- 3. Compute a running total of sales per department, ordered by total sales.
WITH emp_sales AS (
    SELECT
        EmployeeID,
        EmployeeName,
        Department,
        SUM(SalesAmount) AS TotalSales
    FROM EmployeeSales
    GROUP BY
        EmployeeID,
        EmployeeName,
        Department
)
SELECT
    EmployeeID,
    EmployeeName,
    Department,
    TotalSales,
    SUM(TotalSales) OVER (
        PARTITION BY Department
        ORDER BY TotalSales
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS RunningTotalSales
FROM emp_sales
ORDER BY Department, TotalSales;

-- 4. Perform a month-over-month comparison: a) Previous month's sales b) Difference from current month


-- 5. Show only those departments whose total sales exceed 100000. Classify employee as :
    -- Top performer : total sales > department avg
    -- Below average

