

# Optimization Report: Complex Query Performance

# Objective  
To improve the performance of a complex SQL query that retrieves data from multiple related tables: `Booking`, `User`, `Property`, and `Payment`.

---

# Initial Query  
The initial query was designed to retrieve all booking records along with:
- Corresponding *user* details,
- Related *property* information,
- Matching *payment* data.

> ✅ This query is saved in the file: `perfomance.sql`.

---

# Performance Analysis  

*Tool Used:* `EXPLAIN`

*Findings:*
- The query performed *multiple full table scans*, especially on the `Payment` and `User` tables.
- Some *JOIN conditions* lacked indexes.
- The *execution plan* showed a high cost due to unnecessary column selection.

---

# Optimizations Made  

- ✅ *Added indexes* on frequently joined columns (`user_id`, `property_id`, `booking_id`).
- ✅ *Selected only relevant columns* instead of using `SELECT *`.
- ✅ *Reduced unnecessary joins* by verifying what data was actually required in the output.

---

# Results
| Before Optimization | After Optimization |
|------------------------------|---------------------|--------------------|
| Query Execution Time         | ~2.8 sec            | ~0.9 sec           |
| Rows Scanned                 | ~10,000+            | ~3,000             |
| Use of Indexes               | ❌ No               | ✅ Yes             |

---

# Conclusion

By analyzing and optimizing the complex query, we significantly reduced execution time and improved overall performance using indexing and targeted data selection. This ensures more efficient backend performance for user and booking-related operations.

---

