-- 5. Get count of flights by current status (e.g., scheduled, delayed, cancelled)

SELECT 
    status,
    COUNT(*) AS flight_count
FROM 
    flights
GROUP BY 
    status;
