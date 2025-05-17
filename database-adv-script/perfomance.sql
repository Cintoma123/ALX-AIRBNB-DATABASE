-- retrieving of all data
SELECT Booking.booking_id , Users.first_name, Users.last_name, Property.description, Payment.amount, Payment.payment_date
FROM  Booking
INNER JOIN Users
ON 
Booking.user_id = Users.user_id
INNER JOIN Property 
ON 
Users.created_at = Property.created_at
INNER JOIN Payment 
ON 
Booking.booking_id = Payment.booking_id;
WHERE b.StartDate >= '2024-01-01' AND b.EndDate <= '2024-12-31';

 --analyzing it 

ANALZE EXPLAIN  SELECT Booking.booking_id , Users.first_name, Users.last_name, Property.description, Payment.amount, Payment.payment_date
FROM  Booking
INNER JOIN Users
ON 
Booking.user_id = Users.user_id
INNER JOIN Property 
ON 
Booking.booking_id = Payment.booking_id
