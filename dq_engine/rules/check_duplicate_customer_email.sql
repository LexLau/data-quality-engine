-- Rule: Check for duplicate customer_email values TESTING
-- Purpose: Ensure customer_email is unique TESTING

SELECT 
    customer_email,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY customer_email
HAVING COUNT(*) > 1;