

---

# ALX Airbnb Database – Advanced SQL Scripts

# Overview

This directory contains advanced SQL scripts and documentation developed as part of the *ALX Software Engineering Program*. The focus is on mastering complex SQL concepts such as joins, subqueries, aggregations, window functions, indexing, and performance optimization within the context of an Airbnb-like database schema.

---

# Directory Structure

- `joins_queries.sql`
- `subqueries.sql`
- `aggregations_and_window_functions.sql`
- `performance.sql`
- `partitioning.sql`
- `database_index.sql`
- `performance_monitoring.md`
- `partition_performance.md`
- `optimization_report.md`
- `README.md`

---

# Tasks & Descriptions

1. Master SQL Joins

*Objective:* Write complex queries using different types of joins.

- *INNER JOIN:* Retrieve all bookings along with the users who made them.
- *LEFT JOIN:* Retrieve all properties and their reviews, including properties without reviews.
[5/17, 3:23 PM] ChatGPT: - *FULL OUTER JOIN:* Retrieve all users and all bookings, even if a user has no booking or a booking isn't linked to a user.

*File:* `joins_queries.sql`

---

2. Practice Subqueries

*Objective:* Write both correlated and non-correlated subqueries.

- *Non-Correlated Subquery:* Find all properties where the average rating is greater than 4.0.
- *Correlated Subquery:* Find users who have made more than 3 bookings.

*File:* `subqueries.sql`

---

3. Apply Aggregations and Window Functions

*Objective:* Use SQL aggregation and window functions to analyze data.

- *Aggregation:* Find the total number of bookings made by each user using `COUNT` and `GROUP BY`.
- *Window Function:* Rank properties based on the total number of bookings they have received using `ROW_NUMBER` or `RANK`.

*File:* `aggregations_and_window_functions.sql`

---

4. Optimize Complex Queries

*Objective:* Refactor complex queries to improve performance.

- Write an initial query retrieving all bookings with user, property, and payment details.
- Analyze the query’s performance using `EXPLAIN`.
- Refactor the query to reduce execution time by minimizing unnecessary joins and utilizing indexing.

 *Files:*  
- SQL Script: `performance.sql`
- Report: `optimization_report.md`

---
 5. Implement Indexes for Optimization

*Objective:* Identify and create indexes to improve query performance.

- Identify high-usage columns in `User`, `Booking`, and `Property` tables (e.g., columns used in `WHERE`, `JOIN`, `ORDER BY` clauses).
- Write `CREATE INDEX` commands for these columns.
- Measure query performance before and after adding indexes using `EXPLAIN` or `ANALYZE`.

 *File:* `database_index.sql`

---

6. Monitor and Refine Database Performance

*Objective:* Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

- Use SQL commands like `SHOW PROFILE` or `EXPLAIN ANALYZE` to monitor the performance of frequently used queries.
- Identify bottlenecks and suggest changes (e.g., new indexes, schema adjustments).
- Implement changes and report improvements.

*File:* `performance_monitoring.md`

---

7. Implement Table Partitioning

*Objective:* Implement table partitioning to optimize queries on large datasets.

- Assume the `Booking` table is large and query performance is slow.
- Implement partitioning on the `Booking` table based on the `start_date` column.
- Test the performance of queries on the partitioned table (e.g., fetching bookings by date range).
 - Write a brief report on the improvements observed.

📄 *Files:*  
- SQL Script: `partitioning.sql`
- Report: `partition_performance.md`

---

# Technologies Used

- SQL (MySQL)
- MySQL Workbench / CLI
- ALX Checker for syntax validation

---

# Notes

- Ensure that each SQL script is syntactically correct and adheres to best practices.
- Use `EXPLAIN` or `ANALYZE` to assess the performance of your queries.
- Regularly commit your changes to the GitHub repository to maintain version control.

---

#  Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to fork the repository and submit a pull request.

---

This `README.md` provides a clear roadmap of the advanced SQL tasks undertaken in the `database-adv-script` directory, facilitating understanding and collaboration among developers.
