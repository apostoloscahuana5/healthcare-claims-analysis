-- Active: 1786371769645@@127.0.0.1@5432@healthcare
Select 
    INITCAP(name) AS name,
    ROUND(billing_amount, 2)
FROM healthcare_claims
WHERE billing_amount IS NOT NULL
ORDER BY billing_amount DESC
LIMIT 10