-- index- on Users 
CREATE INDEX phone_number ON Users(last_name);
-- explain on users 

EXPLAIN SELECT * FROM Users 
WHERE phone_number

-- create index for property 
CREATE INDEX property_id ON Property(property_id);
-- explain the property 
EXPLAIN SELECT * FROM Property
WHERE property_id

-- create index for Booking
CREATE INDEX total_price ON Booking(total_price);
-- explain booking
ANALYZE SELECT * FROM Booking 
WHERE total_price;