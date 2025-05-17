 CREATE INDEX phone_number ON Users(last_name);
-- create index for property 
CREATE INDEX property_id ON Property(property_id);
-- create index for Booking
CREATE INDEX total_price ON Booking(total_price);
-- explain booking
-- analyze the performane

EXPLAIN ANALYZE SELECT * FROM Users
INNER JOIN Booking ON 
Users.user_id = Booking.user_id

EXPLAIN ANALYZE SELECT * FROM Users
INNER JOIN Booking ON 
Users.user_id = Booking.user_id
