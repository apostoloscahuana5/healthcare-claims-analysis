-- Active: 1786371769645@@127.0.0.1@5432@healthcare
SELECT
    medical_condition,
    ROUND(AVG(EXTRACT(DAY FROM AGE(discharge_date, date_of_admission))), 2) as avg_stay
FROM healthcare_claims
GROUP BY medical_condition
ORDER BY avg_stay DESC