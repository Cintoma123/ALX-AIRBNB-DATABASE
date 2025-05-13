-- for inner join 
SELECT Booking.booking_id, Users.first_name, Users.email FROM Booking
INNER JOIN  Users ON
Booking.user_id = Users.user_id;

-- for left join 
SELECT Property.host_id , Property.name , Review.comment, Review.rating FROM Property
LEFT JOIN Review ON 
Property.property_id = Review.property_id 
ORDER BY Property.host_id , Property.name;

-- for full outer join 
SELECT Users.first_name , Users.last_name , Users.email , Booking.bookig_id FROM Booking 
FULL OUTER JOIN Users ON 
Booking.user_id = Users.user_id;
ORDER BY Users.first_name , Users.last_name , Users,email;


