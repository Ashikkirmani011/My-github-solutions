WITH RankedSalaries AS (
    SELECT
        e.name AS Employee,
        e.salary,
        d.name AS Department,
        DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS SalaryRank
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
)

SELECT
    Department,
    Employee,
    salary AS Salary
FROM RankedSalaries
WHERE SalaryRank <= 3;
