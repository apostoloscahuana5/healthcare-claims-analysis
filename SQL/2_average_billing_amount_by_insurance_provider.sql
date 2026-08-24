-- Active: 1786371769645@@127.0.0.1@5432@healthcare
SELECT
    insurance_provider,
    ROUND(AVG(billing_amount),2) as avg_bill
FROM healthcare_claims
GROUP BY insurance_provider
ORDER BY avg_bill