-- SELECT
--     day,
--     count(day) as total_assignments
-- FROM
--     assignments
-- GROUP BY
--     day
-- HAVING
--     COUNT(day) >= 10
-- ORDER BY
--     day;  ma answer
SELECT
    day,
    count(*) as total_assignments
FROM
    assignments
GROUP BY
    day
HAVING
    count(*) >= 10
ORDER BY
    day;