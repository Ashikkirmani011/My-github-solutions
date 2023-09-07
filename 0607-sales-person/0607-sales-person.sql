SELECT name
FROM SalesPerson
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    JOIN Company c ON o.com_id = c.com_id
    WHERE o.sales_id = SalesPerson.sales_id AND c.name = 'RED'
)
