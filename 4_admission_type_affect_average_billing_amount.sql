-- Active: 1786371769645@@127.0.0.1@5432@healthcare
SELECT
    admission_type,
    ROUND(AVG(billing_amount),2) as avg_bill_per_type,
    COUNT(admission_type) as amount_of_admissions
FROM healthcare_claims
GROUP BY admission_type
ORDER BY avg_bill_per_type DESC
