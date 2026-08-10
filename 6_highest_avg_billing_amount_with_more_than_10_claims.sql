-- Active: 1786371769645@@127.0.0.1@5432@healthcare
SELECT 
    hospital,
    ROUND(AVG(billing_amount),2) as avg_bill,
    count(hospital) as job_postings_per_hospital
FROM healthcare_claims
GROUP BY hospital
HAVING count(hospital) > 10
ORDER BY job_postings_per_hospital DESC