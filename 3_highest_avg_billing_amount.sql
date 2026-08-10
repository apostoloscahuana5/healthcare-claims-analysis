-- Active: 1786371769645@@127.0.0.1@5432@healthcare
SELECT
    medical_condition,
    ROUND(AVG(billing_amount),2) as avg_bill_per_condition
FROM healthcare_claims
GROUP BY medical_condition
ORDER BY avg_bill_per_condition DESC