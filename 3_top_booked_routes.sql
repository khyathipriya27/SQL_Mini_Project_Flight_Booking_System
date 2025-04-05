-- 3. Identify top 3 most booked routes

SELECT 
    f.origin,
    f.destination,
    COUNT(b.booking_id) AS total_bookings
FROM 
    flights f
JOIN 
    bookings b ON f.flight_id = b.flight_id
GROUP BY 
    f.origin, f.destination
ORDER BY 
    total_bookings DESC
LIMIT 3;
