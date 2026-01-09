SELECT
    EmployeeID,
    EmployeeName,
    Department,
    SUM(SalesAmount) AS TotalSales,
    AVG(SalesAmount) AS AvgMonthlySales
FROM EmployeeSales
GROUP BY
    EmployeeID,
    EmployeeName,
    Department
ORDER BY EmployeeID;
