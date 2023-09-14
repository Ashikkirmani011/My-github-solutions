WITH ContestUserCounts AS (
    SELECT
        r.contest_id,
        COUNT(r.user_id) AS user_count
    FROM Register r
    GROUP BY r.contest_id
),
TotalUsers AS (
    SELECT COUNT(DISTINCT user_id) AS total_users
    FROM Users
)
SELECT
    cu.contest_id,
    ROUND((cu.user_count / tu.total_users) * 100, 2) AS percentage
FROM ContestUserCounts cu
JOIN TotalUsers tu ON 1 = 1
ORDER BY percentage DESC, cu.contest_id ASC;
