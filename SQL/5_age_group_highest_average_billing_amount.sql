-- Active: 1786371769645@@127.0.0.1@5432@healthcare
SELECT
    CASE
        WHEN age BETWEEN 0 AND 17 then 'Minor'
        WHEN age BETWEEN 18 AND 35 then 'Young Adult'
        WHEN age BETWEEN 36 AND 50 then 'Adult'
        WHEN age BETWEEN 51 AND 65 THEN 'Middle aged'
        ELSE 'Senior'
    END AS age_group,
    ROUND(AVG(billing_amount), 2) as avg_bill
FROM healthcare_claims
GROUP BY age_group
ORDER BY avg_bill DESC