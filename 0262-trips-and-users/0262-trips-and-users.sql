SELECT
    request_at AS Day,
    ROUND(
        SUM(CASE
            WHEN status IN ('cancelled_by_driver', 'cancelled_by_client')
            THEN 1 ELSE 0
        END) / COUNT(*) , 2
    ) AS "Cancellation Rate"
FROM Trips
JOIN Users AS clients ON Trips.client_id = clients.users_id AND clients.banned = 'No'
JOIN Users AS drivers ON Trips.driver_id = drivers.users_id AND drivers.banned = 'No'
WHERE request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY request_at;
