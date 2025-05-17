SELECT COUNT (user_id) AS userid , booking_id FROM Booking
-- Group by 
GROUP BY booking_id;

-- window func()
SELECT property_id ,end_date
ROW_NUMBER () OVER (ORDER BY end_date) AS rownumber
RANK() OVER (ORDER BY end_date) AS ranks
FROM Booking;
