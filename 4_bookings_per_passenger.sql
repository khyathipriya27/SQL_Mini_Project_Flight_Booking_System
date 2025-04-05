-- 4. Show number of bookings per passenger

SELECT 
    p.passenger_id,
    p.name AS passenger_name,
    COUNT(b.booking_id) AS bookings_count
FROM 
    passengers p
LEFT JOIN 
    bookings b ON p.passenger_id = b.passenger_id
GROUP BY 
    p.passenger_id, p.name;
