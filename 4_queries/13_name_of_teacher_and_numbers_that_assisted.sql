--My answer correct SELECT
--     DISTINCT teachers.name as teacher,
--     cohorts.name as cohort,
--     COUNT(assistance_requests.teacher_id) as total_assistances
-- FROM
--     teachers
--     JOIN assistance_requests ON teacher_id = teachers.id
--     JOIN students ON student_id = students.id
--     JOIN cohorts ON cohort_id = cohorts.id
-- WHERE
--     cohorts.name = 'JUL02'
-- GROUP BY
--     teachers.name,
--     cohorts.name
-- ORDER BY
--     teacher;
--correct answer
SELECT
    teachers.name as teacher,
    cohorts.name as cohort,
    count(assistance_requests) as total_assistances
FROM
    teachers
    JOIN assistance_requests ON teacher_id = teachers.id
    JOIN students ON student_id = students.id
    JOIN cohorts ON cohort_id = cohorts.id
WHERE
    cohorts.name = 'JUL02'
GROUP BY
    teachers.name,
    cohorts.name
ORDER BY
    teacher;