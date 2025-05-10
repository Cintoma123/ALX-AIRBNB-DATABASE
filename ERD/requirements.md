<<<<<<< HEAD
# Database Normalization for Airbnb-like System

Normalization is the process of organizing data in a database to reduce redundancy and improve data integrity. This document explains how the database schema for the Airbnb-like system has been normalized to achieve a high level of efficiency and maintainability.

## Normalization Levels

### 1. First Normal Form (1NF)
To satisfy 1NF:
- Each table has a primary key to uniquely identify each record.
- All columns contain atomic values (no repeating groups or arrays).
- Each column contains values of a single type.

**Implementation in the Schema:**
- Each table (e.g., `User`, `Property`, `Booking`, `Payment`, `Review`, `Message`) has a primary key (`user_id`, `property_id`, `booking_id`, etc.).
- All attributes are atomic, such as `first_name`, `last_name`, `email`, and `role` in the `User` table.

### 2. Second Normal Form (2NF)
To satisfy 2NF:
- The database must first meet 1NF.
- All non-key attributes must depend on the entire primary key, not just part of it.

**Implementation in the Schema:**
- Composite keys are avoided by using UUIDs as primary keys for all tables.
- For example, in the `Booking` table, attributes like `start_date`, `end_date`, and `total_price` depend entirely on the `booking_id` (primary key).

### 3. Third Normal Form (3NF)
To satisfy 3NF:
- The database must first meet 2NF.
- All attributes must depend only on the primary key, and there should be no transitive dependencies.

**Implementation in the Schema:**
- In the `User` table, attributes like `email` and `role` depend only on `user_id`.
- In the `Property` table, attributes like `name`, `description`, and `location` depend only on `property_id`.
- Foreign keys are used to establish relationships between tables, ensuring no redundant data.

### 4. Boyce-Codd Normal Form (BCNF)
To satisfy BCNF:
- The database must first meet 3NF.
- Every determinant must be a candidate key.

**Implementation in the Schema:**
- All tables are designed such that every determinant is a candidate key. For example, in the `User` table, `email` is unique and acts as a determinant for identifying users.

## Table Relationships

### 1. `User` Table
- **Normalization:** Contains only user-specific data (e.g., `first_name`, `last_name`, `email`).
- **Relationships:** 
  - `User` is linked to `Property` (host_id).
  - `User` is linked to `Booking` (user_id).
  - `User` is linked to `Message` (sender_id and recipient_id).
  - `User` is linked to `Review` (user_id).

### 2. `Property` Table
- **Normalization:** Contains only property-specific data (e.g., `name`, `description`, `location`).
- **Relationships:**
  - `Property` is linked to `User` (host_id).
  - `Property` is linked to `Booking` (property_id).
  - `Property` is linked to `Review` (property_id).

### 3. `Booking` Table
- **Normalization:** Contains only booking-specific data (e.g., `start_date`, `end_date`, `total_price`).
- **Relationships:**
  - `Booking` is linked to `Property` (property_id).
  - `Booking` is linked to `User` (user_id).
  - `Booking` is linked to `Payment` (booking_id).

### 4. `Payment` Table
- **Normalization:** Contains only payment-specific data (e.g., `amount`, `payment_date`, `payment_method`).
- **Relationships:**
  - `Payment` is linked to `Booking` (booking_id).

### 5. `Review` Table
- **Normalization:** Contains only review-specific data (e.g., `rating`, `comment`).
- **Relationships:**
  - `Review` is linked to `Property` (property_id).
  - `Review` is linked to `User` (user_id).

### 6. `Message` Table
- **Normalization:** Contains only message-specific data (e.g., `message_body`, `sent_at`).
- **Relationships:**
  - `Message` is linked to `User` (sender_id and recipient_id).

## Benefits of Normalization
1. **Data Integrity:** Ensures that data is consistent and accurate across the database.
2. **Reduced Redundancy:** Eliminates duplicate data, reducing storage requirements.
3. **Improved Query Performance:** Smaller, well-structured tables improve query efficiency.
4. **Ease of Maintenance:** Changes to the database schema are easier to implement without affecting other parts of the system.

## Conclusion
The database schema for the Airbnb-like system has been normalized to at least 3NF (and in some cases BCNF) to ensure data integrity, reduce redundancy, and improve maintainability. The use of foreign keys and indexing further enhances the performance and reliability of the database.
=======
# Requirements for Airbnb-like Database System

This document outlines the functional and non-functional requirements for the database system of an Airbnb-like platform. The system is designed to manage users, properties, bookings, payments, reviews, and messages efficiently.

---

## Functional Requirements

### 1. User Management
- The system must store user information, including:
  - `user_id`: Unique identifier for each user (UUID).
  - `first_name` and `last_name`: User's name (non-null).
  - `email`: Unique and non-null for each user.
  - `password_hash`: Encrypted password for authentication.
  - `phone_number`: Optional contact number.
  - `role`: Defines the user's role (`guest`, `host`, or `admin`).
  - `created_at`: Timestamp of user creation.

### 2. Property Management
- The system must allow hosts to list properties with the following details:
  - `property_id`: Unique identifier for each property (UUID).
  - `host_id`: Foreign key referencing the `user_id` of the host.
  - `name`: Name of the property (non-null).
  - `description`: Detailed description of the property (non-null).
  - `location`: Address or location of the property (non-null).
  - `pricepernight`: Cost per night for booking (non-null).
  - `created_at`: Timestamp of property creation.
  - `updated_at`: Timestamp of the last update.

### 3. Booking Management
- The system must allow users to book properties with the following details:
  - `booking_id`: Unique identifier for each booking (UUID).
  - `property_id`: Foreign key referencing the property being booked.
  - `user_id`: Foreign key referencing the user making the booking.
  - `start_date` and `end_date`: Dates for the booking period (non-null).
  - `total_price`: Total cost of the booking (non-null).
  - `status`: Booking status (`pending`, `confirmed`, or `canceled`).
  - `created_at`: Timestamp of booking creation.

### 4. Payment Management
- The system must handle payments for bookings with the following details:
  - `payment_id`: Unique identifier for each payment (UUID).
  - `booking_id`: Foreign key referencing the associated booking.
  - `amount`: Payment amount (non-null).
  - `payment_date`: Timestamp of the payment.
  - `payment_method`: Payment method (`credit_card`, `paypal`, or `stripe`).

### 5. Review Management
- The system must allow users to leave reviews for properties with the following details:
  - `review_id`: Unique identifier for each review (UUID).
  - `property_id`: Foreign key referencing the reviewed property.
  - `user_id`: Foreign key referencing the user leaving the review.
  - `rating`: Integer rating between 1 and 5 (inclusive).
  - `comment`: Textual feedback (non-null).
  - `created_at`: Timestamp of review creation.

### 6. Messaging System
- The system must allow users to send messages with the following details:
  - `message_id`: Unique identifier for each message (UUID).
  - `sender_id`: Foreign key referencing the user sending the message.
  - `recipient_id`: Foreign key referencing the user receiving the message.
  - `message_body`: Content of the message (non-null).
  - `sent_at`: Timestamp of when the message was sent.

---

## Non-Functional Requirements

### 1. Data Integrity
- Enforce foreign key constraints to maintain relationships between tables.
- Use unique constraints for attributes like `email` to prevent duplicates.

### 2. Scalability
- Use indexing on primary keys and frequently queried columns (e.g., `email`, `property_id`, `booking_id`) to optimize performance.
- Design the schema to handle a large number of users, properties, bookings, and transactions.

### 3. Security
- Store passwords securely using hashing algorithms.
- Restrict access to sensitive data (e.g., `password_hash`) to authorized users only.

### 4. Reliability
- Ensure data consistency through normalization (up to 3NF or BCNF).
- Use timestamps (`created_at`, `updated_at`) to track changes and maintain audit trails.

### 5. Usability
- Provide clear relationships between entities to simplify querying and reporting.
- Use ENUM types for attributes like `role`, `status`, and `payment_method` to enforce valid values.

---

## Entity Relationships

### Users
- Can host properties.
- Can book properties.
- Can send and receive messages.
- Can leave reviews for properties.

### Properties
- Belong to a host (user).
- Can be booked by users.
- Can receive reviews from users.

### Bookings
- Link users and properties.
- Can have associated payments.

### Payments
- Link to bookings.
- Store payment details.

### Reviews
- Link users and properties.
- Contain feedback and ratings.

### Messages
- Link users (sender and recipient).
- Store communication details.

---

## Conclusion
This database schema is designed to meet the functional and non-functional requirements of an Airbnb-like platform. It ensures data integrity, scalability, and usability while maintaining clear relationships between entities.
>>>>>>> 7bdb3c641141283f30eac3ddad08a1bedcbe9322
