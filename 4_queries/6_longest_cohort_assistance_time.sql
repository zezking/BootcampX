-- MY JANK ASS ANSWER SELECT
--     MAX(average_assistance_time) AS max_average_assistance_time,
--     average_assistance_time.cohorts_name
-- FROM
--     (
--         SELECT
--             AVG(completed_at - started_at) AS average_assistance_time,
--         FROM
--             assistance_requests
--             JOIN students ON students.id = student_id
--             JOIN cohorts ON students.cohort_id = cohorts.id
--         GROUP BY
--             cohorts.name
--     ) AS average_assistance_time
SELECT
    cohorts.name,
    avg(completed_at - started_at) as average_assistance_time
FROM
    assistance_requests
    JOIN students ON students.id = assistance_requests.student_id
    JOIN cohorts ON cohorts.id = cohort_id
GROUP BY
    cohorts.name
ORDER BY
    average_assistance_time DESC
LIMIT
    1;