SELECT Booking.booking_id,Booking.end_date, Users.first_name , Users.lastname,Payment.amount, Payment.payment_method, Property.`Description` FROM Booking
INNER JOIN Users on 
Booking.user_id = Users.user_id
