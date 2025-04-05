-- 1. List all passengers with their flight details

SELECT 
    p.passenger_id,
    p.name AS passenger_name,
    f.flight_number,
    f.origin,
    f.destination,
    f.departure_time,
    f.status
FROM 
    passengers p
JOIN 
    bookings b ON p.passenger_id = b.passenger_id
JOIN 
    flights f ON b.flight_id = f.flight_id;
