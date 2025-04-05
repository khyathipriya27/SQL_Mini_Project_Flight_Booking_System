-- 2. Count number of bookings per flight

SELECT 
    f.flight_id,
    f.flight_number,
    COUNT(b.booking_id) AS total_bookings
FROM 
    flights f
LEFT JOIN 
    bookings b ON f.flight_id = b.flight_id
GROUP BY 
    f.flight_id, f.flight_number;
