WITH VisitCounts AS (
    SELECT
        v.customer_id,
        COUNT(t.transaction_id) AS transaction_count
    FROM Visits v
    LEFT JOIN Transactions t ON v.visit_id = t.visit_id
    GROUP BY v.customer_id, v.visit_id
)
SELECT
    customer_id,
    COUNT(*) AS count_no_trans
FROM VisitCounts
WHERE transaction_count = 0
GROUP BY customer_id;
