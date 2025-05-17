-- retrieving of all data 
SELECT Booking.booking_id , 
  Users.first_name, 
  Users.last_name, 
  Property.description, 
  Payment.amount, Payment.payment_date
FROM  Booking
JOIN 
  Users ON
Booking.user_id = Users.user_id 
JOIN  
Property ON 
Users.created_at = Property.created_at
JOIN Payment 
Payment ON 
Booking.booking_id = Payment.booking_id;

-- explaining of data
EXPLAIN 
  SELECT Booking.booking_id ,
  Users.first_name, 
  Users.last_name, Property.description, 
  Payment.amount, Payment.payment_date
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

EXPLAIN SELECT Booking.booking_id , Users.first_name, Users.last_name, Property.description, Payment.amount, Payment.payment_date
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




