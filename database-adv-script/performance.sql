SELECT b.booking_id, b.start_date  u.first_name, u.last_name, `p.description`, p.host_id, p.created_at,  pay.amount, pay.payment_date
FROM Booking based 
JOIN Users u ON b.user_id = u.user_id
JOIN Property `P` ON b.property_id = p.property_id
JOIN Payment Pay ON b.booking_id = pay.booking_id

SELECT b.booking_id, u.first_name, u.last_name, `p.description`, pay.amount, pay.payment_date
FROM Booking based 
JOIN Users u ON b.user_id = u.user_id
JOIN Property `P` ON b.property_id = p.property_id
JOIN Payment Pay ON b.booking_id = pay.booking_id
WHERE u.first_name = 'John' AND u.last_name = 'Doe'
 

EXPLAIN ANALYZE SELECT b.booking_id, u.first_name, u.last_name, p.description, pay.amount, pay.payment_date
FROM Booking based 
JOIN Users u ON b.user_id = u.user_id
JOIN Property `P` ON b.property_id = p.property_id
JOIN Payment Pay ON b.booking_id = pay.booking_id
WHERE u.first_name = 'John' AND u.last_name = 'Doe'
 
